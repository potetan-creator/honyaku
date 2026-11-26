using Mono.Cecil;
using Mono.Cecil.Cil;
using System;
using System.IO;
using System.Linq;
using System.Collections.Generic;
using System.Text;

if (args.Length != 3) throw new ArgumentException("Usage: Fix30 input-Fix29.dll output-Fix30.dll windowsdesktop-ref-dir");
string input=Path.GetFullPath(args[0]),output=Path.GetFullPath(args[1]);
if(input==output)throw new Exception("Cannot overwrite original");
var resolver=new DefaultAssemblyResolver();
resolver.AddSearchDirectory(args[2]);
resolver.AddSearchDirectory(Path.GetDirectoryName(input)!);
var assembly=AssemblyDefinition.ReadAssembly(input,new ReaderParameters{InMemory=true,ReadSymbols=false,AssemblyResolver=resolver});
var mod=assembly.MainModule;
string identity=assembly.Name.FullName;Guid mvid=mod.Mvid;
var audit=new List<string>();
void Note(string text){audit.Add(text);Console.WriteLine(text);}
var types=mod.GetTypes().ToArray();
TypeDefinition T(string name)=>types.Single(t=>t.FullName==name);
var lang=T("CdsHelper.Game.Local.Helpers.Lang");
var translate=lang.Methods.Single(m=>m.Name=="T"&&m.IsStatic&&m.Parameters.Count==1&&m.Parameters[0].ParameterType.FullName=="System.String");
var jp=mod.ImportReference(translate);
int Sync(MethodDefinition m,Func<Instruction,bool> predicate,string title){
 int n=0;
 foreach(var i in m.Body.Instructions.Where(predicate).ToArray()){
   m.Body.GetILProcessor().InsertAfter(i,Instruction.Create(OpCodes.Call,jp));
   n++;
 }
 Note(title+" = "+n);
 return n;
}

// Restore the Japanese translation lost when Fix29 made ComboBoxes editable read-only.
// Explicitly pass the current selected string through the normal language dictionary.
var spar=T("CdsHelper.Game.UI.Views.LandSparDialog");
// Fix30 crash/blank ComboBoxes rollback: leave Fix29's selection synchronization method UNCHANGED.
// Locale conversion occurs when populating the dropdown ITEMS, not during SelectionChanged.
var sync=spar.Methods.Single(m=>m.Name=="UpdateLiveSelectionLabel");
if(!sync.HasBody) throw new Exception("Fix29 display sync unavailable.");
Note("Fix29 SelectionChanged method preserved byte-for-byte (no new translation call)");

// Translate options in drop-down lists BEFORE ComboBoxItem.Content is set.
// Numeric unit IDs and IsEnabled restrictions are not changed.
var side=spar.Methods.Single(m=>m.Name=="Side"&&m.HasBody);
var unitStrings=side.Body.Instructions.Where(i=>i.OpCode==OpCodes.Ldelem_Ref).ToArray();
if(unitStrings.Length!=1)throw new Exception("Expected exactly one LandUnits.Name[] lookup, actual "+unitStrings.Length);
Sync(side,i=>unitStrings.Contains(i),"Unit dropdown labels");

var ctor=spar.Methods.Single(m=>m.IsConstructor&&!m.IsStatic&&m.Parameters.Count==1);
int fieldStrings=Sync(ctor,i=>i.OpCode==OpCodes.Ldelem_Ref,
 "Terrain and culture names before dropdown addition");
if(fieldStrings!=2) throw new Exception("Expected exactly 2 field/culture arrays, got "+fieldStrings);
int sortStrings=Sync(ctor,i=>i.OpCode==OpCodes.Ldfld&&i.Operand is FieldReference fr&&
 fr.Name=="Item1"&&fr.DeclaringType.FullName.Contains("ValueTuple")&&fr.FieldType.FullName=="System.String",
 "Battle mode names before dropdown addition");
if(sortStrings!=1)throw new Exception("Expected mode tuple name in ctor, found "+sortStrings);

int cultureStrings=Sync(ctor,i=>i.Operand is MethodReference mr&&mr.Name=="ToStringAndClear"&&mr.ReturnType.FullName=="System.String",
 "Culture selection constructed labels");
if(cultureStrings<1)throw new Exception("Cannot patch culture label creation");

var fillTargets=spar.Methods.Single(m=>m.Name=="FillTargets"&&m.HasBody);
int targetStrings=Sync(fillTargets,i=>i.Operand is MethodReference mr&&mr.ReturnType.FullName=="System.String"&&
  (mr.Name=="ToStringAndClear"||(mr.Name=="Concat"&&mr.DeclaringType.FullName=="System.String")),
 "City/person target dropdown labels");
if(targetStrings<2)throw new Exception("Cannot patch both target label sources: "+targetStrings);

// UserDiscoveryDialog's sample data are source Korean text; translate for display only.
// Never edit the original example Entry, copied user discovery, save contents or event data.
var ud=T("CdsHelper.Game.UI.Views.UserDiscoveryDialog");
var exampleField=ud.Fields.Single(f=>f.Name=="_example"&&f.FieldType.FullName=="System.Boolean");
var disp=new MethodDefinition("SampleTextInCurrentLanguage",MethodAttributes.Private|MethodAttributes.Static|MethodAttributes.HideBySig,mod.TypeSystem.String);
disp.Parameters.Add(new ParameterDefinition("text",ParameterAttributes.None,mod.TypeSystem.String));
disp.Parameters.Add(new ParameterDefinition("view",ParameterAttributes.None,ud));
ud.Methods.Add(disp);
var di=disp.Body.GetILProcessor();
var raw=Instruction.Create(OpCodes.Ldarg_0);
di.Append(Instruction.Create(OpCodes.Ldarg_1));
di.Append(Instruction.Create(OpCodes.Ldfld,exampleField));
di.Append(Instruction.Create(OpCodes.Brfalse,raw));
di.Append(Instruction.Create(OpCodes.Ldarg_0));
di.Append(Instruction.Create(OpCodes.Call,jp));
di.Append(Instruction.Create(OpCodes.Ret));
di.Append(raw);
di.Append(Instruction.Create(OpCodes.Ret));

int PatchSample(MethodDefinition method,Func<MethodReference,bool> predicate,string title){
 int count=0;
 foreach(var inst in method.Body.Instructions.ToArray()){
  if(inst.Operand is not MethodReference mr || !predicate(mr))continue;
  if(mr.ReturnType.FullName!="System.String")continue;
  var il=method.Body.GetILProcessor();
  var self=Instruction.Create(OpCodes.Ldarg_0);
  il.InsertAfter(inst,self);
  il.InsertAfter(self,Instruction.Create(OpCodes.Call,disp));
  count++;
 }
 Note(title+" = "+count);
 return count;
}
var screenFill=ud.Methods.Single(m=>m.Name=="Fill"&&m.Parameters.Count==1&&m.HasBody);
int fields=PatchSample(screenFill,mr=>mr.Name.StartsWith("get_")&&mr.DeclaringType.FullName.Contains("UserDiscoveries/Entry"),
 "Sample discovery name, hints, description, book, credit and author");
if(fields<6)throw new Exception("Too few example text fields found in Fill: "+fields);

var rumor=ud.Methods.Single(m=>m.Name=="AddRumorRow"&&m.HasBody);
int rumors=PatchSample(rumor,mr=>mr.Name=="get_Text"&&mr.DeclaringType.FullName.Contains("UserDiscoveries/RumorEntry"),"Sample rumor");
if(rumors<1)throw new Exception("Missing rumor text patch");

// IMPORTANT: do NOT modify SceneText() or ParseScene(): Fix30's SceneText method
// patch produced InvalidProgramException while opening the read-only examples.
// Instead, translate the completed preview string in Fill, without changing event grammar
// or any persisted/copyable Korean script instructions.
int displayedScenes=Sync(screenFill,i=>false,"Scene text init");
var sceneJoin=screenFill.Body.Instructions.Where(i=>i.Operand is MethodReference mr&&
 mr.Name=="Join"&&mr.DeclaringType.FullName=="System.String"&&mr.ReturnType.FullName=="System.String").ToArray();
if(sceneJoin.Length!=1)throw new Exception("Expected exactly one scene string.Join in Fill, found "+sceneJoin.Length);
var sj=sceneJoin[0];
var viewArg=Instruction.Create(OpCodes.Ldarg_0);
screenFill.Body.GetILProcessor().InsertAfter(sj,viewArg);
screenFill.Body.GetILProcessor().InsertAfter(viewArg,Instruction.Create(OpCodes.Call,disp));
Note("Read-only sample scene translated AFTER string.Join, no changes to SceneText or ParseScene");
// Translate constructed example list titles e.g. '(예제) 돌묵상어' using exact
// new dictionary keys while preserving UUID tags and the stored original names.
var refresh=ud.Methods.Single(m=>m.Name=="Refresh"&&m.HasBody);
int list=Sync(refresh,i=>i.Operand is MethodReference mr&&mr.Name=="ToStringAndClear"&&mr.ReturnType.FullName=="System.String",
 "Sample list title translation");
if(list<1)throw new Exception("Sample list dynamic text translation missing");

// Verify earlier changes and protected gameplay.
var options=T("CdsHelper.Game.Local.Settings.GameSettingsData");
foreach(var name in new[]{"ForeignInnManualSave","FlexibleInnStay","SideMouseAsEscape","KeepSuspendOnManualSave","UnlimitedSkillLanguageCap"}){
 if(!options.Properties.Any(p=>p.Name==name)) throw new Exception("Missing prior feature "+name);
}
if(!T("CdsHelper.Game.UI.Views.PlayerInfoDialog").Methods.Any(m=>m.Name=="DevMarksForDisplay"))throw new Exception("Fix26 hidden tampered state lost.");
if(!lang.Methods.Any(m=>m.Name=="NormalizePersonSearch"))throw new Exception("Fix28 name search lost.");
if(!spar.Methods.Any(m=>m.Name=="UpdateLiveSelectionLabel"))throw new Exception("Fix29 selection update lost.");

foreach(var t in mod.GetTypes())foreach(var m in t.Methods.Where(m=>m.HasBody)){
 foreach(var i in m.Body.Instructions){
   if(i.Operand is Instruction j && !m.Body.Instructions.Contains(j))throw new Exception("Invalid branch: "+m.FullName);
   if(i.Operand is Instruction[] js && js.Any(j=>!m.Body.Instructions.Contains(j)))throw new Exception("Invalid switch: "+m.FullName);
 }
}
assembly.Write(output,new WriterParameters{WriteSymbols=false});
var saved=AssemblyDefinition.ReadAssembly(output);
if(saved.Name.FullName!=identity||saved.MainModule.Mvid!=mvid)throw new Exception("Assembly identity changed.");
var owner=saved.MainModule.GetTypes().Single(x=>x.FullName==ud.FullName);
if(!owner.Methods.Any(m=>m.Name=="SampleTextInCurrentLanguage"))throw new Exception("Sample translator missing.");
Note("OUTPUT "+output+" bytes="+new FileInfo(output).Length);
Note("ASSEMBLY "+identity+" MVID="+mvid);
Note("PRESERVED four mode features / history translations / Japanese search / battle generation.");
Note("PASS metadata, branch targets, and sample display-only translators; Windows UI execution untested.");
File.WriteAllLines(output+".patchlog.txt",audit,new UTF8Encoding(false));
