using System;
using System.IO;
using System.Linq;
using System.Collections.Generic;
using System.Text;
using Mono.Cecil;
using Mono.Cecil.Cil;

if(args.Length!=3)throw new Exception("Usage: Fix32 original-Fix31-game.dll output-Fix32-game.dll windows-desktop-ref-directory");
string source=Path.GetFullPath(args[0]),output=Path.GetFullPath(args[1]),refs=args[2];
if(source==output)throw new Exception("Output must differ from original");
var resolver=new DefaultAssemblyResolver();
resolver.AddSearchDirectory(refs);resolver.AddSearchDirectory(Path.GetDirectoryName(source)!);
var asm=AssemblyDefinition.ReadAssembly(source,new ReaderParameters{ReadSymbols=false,InMemory=true,AssemblyResolver=resolver});
var module=asm.MainModule;
string originalIdentity=asm.Name.FullName;Guid originalMvid=module.Mvid;
var types=module.GetTypes().ToArray();
TypeDefinition T(string name)=>types.Single(t=>t.FullName==name);
var land=T("CdsHelper.Game.UI.Views.LandSparDialog");
var ud=T("CdsHelper.Game.UI.Views.UserDiscoveryDialog");
var lang=T("CdsHelper.Game.Local.Helpers.Lang");
var jp=lang.Methods.Single(m=>m.Name=="T"&&m.IsStatic&&m.Parameters.Count==1&&m.Parameters[0].ParameterType.FullName=="System.String");
var jpRef=module.ImportReference(jp);
var log=new List<string>();
void Info(string line){log.Add(line);Console.WriteLine(line);}
void TranslateAfter(MethodDefinition m,Instruction i,string label){
 m.Body.GetILProcessor().InsertAfter(i,Instruction.Create(OpCodes.Call,jpRef));
 Info("TRANSLATE "+label+" : "+m.FullName);
}

// 1. Fix the initial "— 빈 자리 —" entry, NOT the selected index or any unit ID.
var side=land.Methods.Single(m=>m.Name=="Side"&&m.HasBody);
var emptySlots=side.Body.Instructions.Where(i=>i.OpCode==OpCodes.Ldstr&&
   i.Operand is string text && text=="— 빈 자리 —").ToArray();
if(emptySlots.Length!=1)throw new Exception("Expected exactly 1 empty-slot text, got "+emptySlots.Length);
TranslateAfter(side,emptySlots[0],"initial empty army slot");
var normalize=lang.Methods.SingleOrDefault(m=>m.Name=="NormalizePersonSearch");
if(normalize==null)throw new Exception("Fix28 normalizer missing");

// 2. Translate Korean city names individually BEFORE combining comma-separated rumors.
// Data stays List<int> IDs; this cannot affect saved rumors or city selection.
var cityMethods=types.Where(t=>t.FullName==ud.FullName||t.FullName.StartsWith(ud.FullName+"/"))
 .SelectMany(t=>t.Methods).Where(m=>m.HasBody&&m.Name.Contains("ShowCities")).ToArray();
var cityCalls=cityMethods.SelectMany(m=>m.Body.Instructions.Where(i=>
 i.Operand is MethodReference mr && mr.Name=="CityName"&&mr.ReturnType.FullName=="System.String")
 .Select(i=>(method:m,ins:i))).ToArray();
if(cityCalls.Length!=1)throw new Exception("Expected exactly 1 CityName call within ShowCities: "+cityCalls.Length);
TranslateAfter(cityCalls[0].method,cityCalls[0].ins,"rumor city name");
// Also render "(없음)" in Japanese if no rumor cities are set.
var showCities=ud.Methods.Single(m=>m.Name=="ShowCities"&&m.HasBody);
foreach(var i in showCities.Body.Instructions.Where(i=>i.OpCode==OpCodes.Ldstr&&i.Operand is string x&&x=="(없음)").ToArray()){
 TranslateAfter(showCities,i,"empty city list");
}

// 3. Make the three custom discovery dropdowns use Fix29's *existing* visual
// synchronization, exactly as land-test dropdowns. Do NOT wire editable license or
// replace selected indices. This only changes presentation.
var prepare=land.Methods.Single(m=>m.Name=="PrepareLiveSelectionLabel"&&m.IsStatic&&m.Parameters.Count==1);
prepare.Attributes=(prepare.Attributes & ~MethodAttributes.MemberAccessMask)|MethodAttributes.Assembly;
var dlgCtor=ud.Methods.Single(m=>m.IsConstructor&&!m.IsStatic&&m.Parameters.Count==2);
var finalRet=dlgCtor.Body.Instructions.Last(i=>i.OpCode==OpCodes.Ret);
var il=dlgCtor.Body.GetILProcessor();
foreach(var fieldName in new[]{"_category","_itemCategory","_itemBackdrop"}){
 var field=ud.Fields.Single(f=>f.Name==fieldName&&f.FieldType.FullName=="System.Windows.Controls.ComboBox");
 il.InsertBefore(finalRet,Instruction.Create(OpCodes.Ldarg_0));
 il.InsertBefore(finalRet,Instruction.Create(OpCodes.Ldfld,field));
 il.InsertBefore(finalRet,Instruction.Create(OpCodes.Call,prepare));
 Info("WIRED Fix29 selection display updater for UserDiscoveryDialog."+fieldName);
}
// Category/backdrop choices are looked up by INDEX, not by their Japanese text,
// so translating choices as they are first created preserves all stored values.
var itemPage=ud.Methods.Single(m=>m.Name=="ItemPage"&&m.HasBody);
var itemStrings=itemPage.Body.Instructions.Where(i=>i.OpCode==OpCodes.Ldelem_Ref).ToArray();
if(itemStrings.Length!=2)throw new Exception("Expected 2 string arrays in ItemPage: "+itemStrings.Length);
foreach(var i in itemStrings)TranslateAfter(itemPage,i,"item category/backdrop dropdown item");
var ctorBeforeFirstLicense=dlgCtor.Body.Instructions.FirstOrDefault(i=>i.Operand is MethodReference mr&&
 mr.Name=="get_Licenses"&&mr.DeclaringType.FullName.Contains("UserDiscoveries"));
if(ctorBeforeFirstLicense==null)throw new Exception("Custom licenses anchor not found");
var prefix=dlgCtor.Body.Instructions.Take(dlgCtor.Body.Instructions.IndexOf(ctorBeforeFirstLicense)).Where(i=>i.OpCode==OpCodes.Ldelem_Ref).ToArray();
if(prefix.Length!=1)throw new Exception("Unexpected discovery category array count "+prefix.Length);
TranslateAfter(dlgCtor,prefix[0],"discovery category dropdown item (before licenses)");

// 4. Existing Tell() is ONLY the status line. Translate that display when Japanese,
// but do not modify game data, sample content, scene grammar, or saved scripts.
var tell=ud.Methods.Single(m=>m.Name=="Tell"&&m.Parameters.Count==1&&m.HasBody);
var setText=tell.Body.Instructions.Single(i=>i.Operand is MethodReference mr&&mr.Name=="set_Text"&&
 mr.DeclaringType.FullName=="System.Windows.Controls.TextBlock");
var justBefore=setText.Previous;
if(justBefore==null || !(justBefore.OpCode==OpCodes.Ldarg_1||justBefore.Operand is ParameterDefinition))
 throw new Exception("Tell status value must be direct argument");
TranslateAfter(tell,justBefore,"custom-discovery status line only");

// 5. The location hint is display-only. Keep x/y logic and geographic coordinates as is.
var showWhere=ud.Methods.Single(m=>m.Name=="ShowWhere"&&m.HasBody);
foreach(var i in showWhere.Body.Instructions.Where(i=>i.OpCode==OpCodes.Ldstr &&
  i.Operand is string x && x=="게임 위치: (자리를 아직 안 골랐습니다)").ToArray())
 TranslateAfter(showWhere,i,"no-position hint");

// 6. Preserve all data and game features.
var settings=T("CdsHelper.Game.Local.Settings.GameSettingsData");
foreach(var name in new[]{"ForeignInnManualSave","FlexibleInnStay","SideMouseAsEscape","KeepSuspendOnManualSave","UnlimitedSkillLanguageCap"})
 if(!settings.Properties.Any(p=>p.Name==name))throw new Exception("Prior feature missing "+name);
if(!T("CdsHelper.Game.UI.Views.PlayerInfoDialog").Methods.Any(m=>m.Name=="DevMarksForDisplay"))
 throw new Exception("Fix26 hidden tampered marker missing");
var oldParser=ud.Methods.Single(m=>m.Name=="ParseScene"&&m.HasBody);
if(oldParser.Body.Instructions.Count<5)throw new Exception("Original scene parser absent");
foreach(var t in module.GetTypes())foreach(var m in t.Methods.Where(m=>m.HasBody))foreach(var ins in m.Body.Instructions){
 if(ins.Operand is Instruction b&&!m.Body.Instructions.Contains(b))throw new Exception("Bad branch: "+m.FullName);
 if(ins.Operand is Instruction[] bs&&bs.Any(b=>!m.Body.Instructions.Contains(b)))throw new Exception("Bad switch: "+m.FullName);
}
asm.Write(output,new WriterParameters{WriteSymbols=false});
var outputAsm=AssemblyDefinition.ReadAssembly(output);
if(outputAsm.Name.FullName!=originalIdentity || outputAsm.MainModule.Mvid!=originalMvid)
 throw new Exception("Assembly identity changed");
Info("OUTPUT "+output+" bytes="+new FileInfo(output).Length);
Info("PASS: identity, 5 prior settings, exact display-only anchor counts, all branch targets.");
Info("NO changes to LandBattle, selected indices, city IDs, scene parser or save data.");
File.WriteAllLines(output+".changes.txt",log,new UTF8Encoding(false));
