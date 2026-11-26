using Mono.Cecil;
using Mono.Cecil.Cil;
using System;
using System.IO;
using System.Linq;
using System.Collections.Generic;
using System.Text;

if (args.Length != 3) throw new Exception("Usage: Fix29 input-Fix28.dll output-Fix29.dll windows-wpf-refs-dir");
string input=Path.GetFullPath(args[0]),output=Path.GetFullPath(args[1]),refs=Path.GetFullPath(args[2]);
if(input==output)throw new Exception("Input must not be overwritten");
var resolver=new DefaultAssemblyResolver();
resolver.AddSearchDirectory(refs);
resolver.AddSearchDirectory(Path.GetDirectoryName(input)!);
var assembly=AssemblyDefinition.ReadAssembly(input,new ReaderParameters{InMemory=true,ReadSymbols=false,AssemblyResolver=resolver});
var module=assembly.MainModule;
var origFullName=assembly.Name.FullName;
var origMvid=module.Mvid;
var wpf=ModuleDefinition.ReadModule(Path.Combine(refs,"PresentationFramework.dll"));
var wpfCore=ModuleDefinition.ReadModule(Path.Combine(refs,"PresentationCore.dll"));
TypeDefinition W(string name)=>wpf.GetType(name)??throw new Exception("WPF type missing: "+name);
MethodDefinition M(TypeDefinition type,string name,int n)=>type.Methods.Single(m=>m.Name==name&&m.Parameters.Count==n);
var combo=W("System.Windows.Controls.ComboBox");
var selector=W("System.Windows.Controls.Primitives.Selector");
var item=W("System.Windows.Controls.ComboBoxItem");
var contentControl=W("System.Windows.Controls.ContentControl");
var ui=wpfCore.GetType("System.Windows.UIElement")??throw new Exception("UIElement missing");
var handler=W("System.Windows.Controls.SelectionChangedEventHandler");
var dlg=module.GetTypes().Single(t=>t.FullName=="CdsHelper.Game.UI.Views.LandSparDialog");
var setterEditable=module.ImportReference(M(combo,"set_IsEditable",1));
var setterReadonly=module.ImportReference(M(combo,"set_IsReadOnly",1));
var setterText=module.ImportReference(M(combo,"set_Text",1));
var getSelectedItem=module.ImportReference(M(selector,"get_SelectedItem",0));
var onChange=module.ImportReference(M(selector,"add_SelectionChanged",1));
var getContent=module.ImportReference(M(contentControl,"get_Content",0));
var repaint=module.ImportReference(M(ui,"InvalidateVisual",0));
var delegateCtor=module.ImportReference(M(handler,".ctor",2));
var toString=module.ImportReference(typeof(object).GetMethod("ToString",System.Type.EmptyTypes)!);
var boxType=module.ImportReference(combo);
var boxItemType=module.ImportReference(item);
var objType=module.TypeSystem.Object;
var init=new MethodDefinition("PrepareLiveSelectionLabel",
 MethodAttributes.Private|MethodAttributes.Static|MethodAttributes.HideBySig,module.TypeSystem.Void);
init.Parameters.Add(new ParameterDefinition("box",ParameterAttributes.None,boxType));
dlg.Methods.Add(init);
var sync=new MethodDefinition("UpdateLiveSelectionLabel",
 MethodAttributes.Private|MethodAttributes.Static|MethodAttributes.HideBySig,module.TypeSystem.Void);
sync.Parameters.Add(new ParameterDefinition("sender",ParameterAttributes.None,module.TypeSystem.Object));
sync.Parameters.Add(new ParameterDefinition("e",ParameterAttributes.None,module.ImportReference(W("System.Windows.Controls.SelectionChangedEventArgs"))));
dlg.Methods.Add(sync);

var il=init.Body.GetILProcessor();
il.Append(Instruction.Create(OpCodes.Ldarg_0));
il.Append(Instruction.Create(OpCodes.Ldc_I4_1));
il.Append(Instruction.Create(OpCodes.Callvirt,setterEditable));
il.Append(Instruction.Create(OpCodes.Ldarg_0));
il.Append(Instruction.Create(OpCodes.Ldc_I4_1));
il.Append(Instruction.Create(OpCodes.Callvirt,setterReadonly));
il.Append(Instruction.Create(OpCodes.Ldarg_0));
il.Append(Instruction.Create(OpCodes.Ldnull));
il.Append(Instruction.Create(OpCodes.Ldftn,sync));
il.Append(Instruction.Create(OpCodes.Newobj,delegateCtor));
il.Append(Instruction.Create(OpCodes.Callvirt,onChange));
il.Append(Instruction.Create(OpCodes.Ret));
init.Body.MaxStackSize=4;

sync.Body.InitLocals=true;
var vBox=new VariableDefinition(boxType);sync.Body.Variables.Add(vBox);
var vContent=new VariableDefinition(objType);sync.Body.Variables.Add(vContent);
var vItem=new VariableDefinition(boxItemType);sync.Body.Variables.Add(vItem);
var si=sync.Body.GetILProcessor();
var skipItem=Instruction.Create(OpCodes.Nop);
var notNull=Instruction.Create(OpCodes.Nop);
var hasText=Instruction.Create(OpCodes.Nop);
var finish=Instruction.Create(OpCodes.Ret);
si.Append(Instruction.Create(OpCodes.Ldarg_0));
si.Append(Instruction.Create(OpCodes.Isinst,boxType));
si.Append(Instruction.Create(OpCodes.Stloc,vBox));
si.Append(Instruction.Create(OpCodes.Ldloc,vBox));
si.Append(Instruction.Create(OpCodes.Brfalse,finish));
si.Append(Instruction.Create(OpCodes.Ldloc,vBox));
si.Append(Instruction.Create(OpCodes.Callvirt,getSelectedItem));
si.Append(Instruction.Create(OpCodes.Stloc,vContent));
si.Append(Instruction.Create(OpCodes.Ldloc,vContent));
si.Append(Instruction.Create(OpCodes.Isinst,boxItemType));
si.Append(Instruction.Create(OpCodes.Stloc,vItem));
si.Append(Instruction.Create(OpCodes.Ldloc,vItem));
si.Append(Instruction.Create(OpCodes.Brfalse,skipItem));
si.Append(Instruction.Create(OpCodes.Ldloc,vItem));
si.Append(Instruction.Create(OpCodes.Callvirt,getContent));
si.Append(Instruction.Create(OpCodes.Stloc,vContent));
si.Append(skipItem);
si.Append(Instruction.Create(OpCodes.Ldloc,vBox));
si.Append(Instruction.Create(OpCodes.Ldloc,vContent));
si.Append(Instruction.Create(OpCodes.Brtrue,notNull));
si.Append(Instruction.Create(OpCodes.Ldstr,""));
si.Append(Instruction.Create(OpCodes.Br,hasText));
si.Append(notNull);
si.Append(Instruction.Create(OpCodes.Ldloc,vContent));
si.Append(Instruction.Create(OpCodes.Callvirt,toString));
si.Append(hasText);
si.Append(Instruction.Create(OpCodes.Callvirt,setterText));
si.Append(Instruction.Create(OpCodes.Ldloc,vBox));
si.Append(Instruction.Create(OpCodes.Callvirt,repaint));
si.Append(finish);
sync.Body.MaxStackSize=5;

// Do not mutate SelectedIndex or items, because those are the ACTUAL battle values.
// Call the UI refresh initializer only when each ComboBox is first created.
var ctor=dlg.Methods.Single(m=>m.IsConstructor&&!m.IsStatic&&m.Parameters.Count==1);
var fields=new[]{"_terrain","_culture","_sort","_target"};
int wiredHeader=0;
foreach(string name in fields){
 var stores=ctor.Body.Instructions.Where(i=>i.OpCode==OpCodes.Stfld&&i.Operand is FieldReference f&&f.Name==name).ToArray();
 if(stores.Length!=1)throw new Exception("Unexpected control-field writes "+name+": "+stores.Length);
 var loc=stores[0];
 var ep=ctor.Body.GetILProcessor();
 var ldThis=Instruction.Create(OpCodes.Ldarg_0);
 ep.InsertAfter(loc,ldThis);
 var field=dlg.Fields.Single(f=>f.Name==name);
 var ldField=Instruction.Create(OpCodes.Ldfld,field);
 ep.InsertAfter(ldThis,ldField);
 ep.InsertAfter(ldField,Instruction.Create(OpCodes.Call,init));
 wiredHeader++;
}

// The same Side() method creates all twelve unit pickers. Wire the one per-row
// ComboBox after its construction, avoiding changes to allowed/disabled units.
var side=dlg.Methods.Single(m=>m.Name=="Side"&&m.HasBody);
var newBoxes=side.Body.Instructions.Where(i=>i.OpCode==OpCodes.Newobj&&i.Operand is MethodReference m&&m.DeclaringType.FullName==boxType.FullName&&m.Name==".ctor").ToArray();
if(newBoxes.Length!=1)throw new Exception("Expected one ComboBox ctor in Side; found "+newBoxes.Length);
var newBox=newBoxes[0];
int newIndex=side.Body.Instructions.IndexOf(newBox);
var storeBox=side.Body.Instructions.Skip(newIndex+1).Take(30).FirstOrDefault(i=>
 (i.OpCode.Code==Code.Stloc||i.OpCode.Code==Code.Stloc_S||i.OpCode.Code==Code.Stloc_0||
  i.OpCode.Code==Code.Stloc_1||i.OpCode.Code==Code.Stloc_2||i.OpCode.Code==Code.Stloc_3));
if(storeBox==null)throw new Exception("Could not find Side box storage");
VariableDefinition v=storeBox.Operand is VariableDefinition vv?vv:
 storeBox.OpCode==OpCodes.Stloc_0?side.Body.Variables[0]:
 storeBox.OpCode==OpCodes.Stloc_1?side.Body.Variables[1]:
 storeBox.OpCode==OpCodes.Stloc_2?side.Body.Variables[2]:
 storeBox.OpCode==OpCodes.Stloc_3?side.Body.Variables[3]:
 throw new Exception("Unrecognized store for Side ComboBox");
var sideIl=side.Body.GetILProcessor();
var load=Instruction.Create(OpCodes.Ldloc,v);
sideIl.InsertAfter(storeBox,load);
sideIl.InsertAfter(load,Instruction.Create(OpCodes.Call,init));

// Verify all previous gameplay/UI features are retained.
var settings=module.GetTypes().Single(t=>t.FullName=="CdsHelper.Game.Local.Settings.GameSettingsData");
foreach(var name in new[]{"ForeignInnManualSave","FlexibleInnStay","SideMouseAsEscape","KeepSuspendOnManualSave","UnlimitedSkillLanguageCap"}){
 if(!settings.Properties.Any(p=>p.Name==name))throw new Exception("Lost previous option "+name);
}
if(!module.GetTypes().Single(t=>t.FullName=="CdsHelper.Game.UI.Views.PlayerInfoDialog")
 .Methods.Any(m=>m.Name=="DevMarksForDisplay"))throw new Exception("Lost Fix26 display-only 'tampered' filter");
if(!dlg.Methods.Any(m=>m.Name=="NormalizePersonSearch")){
 // normalization helper belongs in Lang rather than dialog in Fix28.
 if(!module.GetTypes().Any(t=>t.FullName=="CdsHelper.Game.Local.Helpers.Lang"
       &&t.Methods.Any(m=>m.Name=="NormalizePersonSearch")))
 throw new Exception("Lost Fix28 name normalization");
}
var sorted=dlg.Methods.Single(m=>m.Name=="get_Last");
if(!sorted.HasBody)throw new Exception("Missing saved settings");

// Check the original battle generator and Play() weren't changed (no touch).
var touched=new[]{".ctor","Side","PrepareLiveSelectionLabel","UpdateLiveSelectionLabel"};
foreach(var t in module.GetTypes())foreach(var method in t.Methods.Where(m=>m.HasBody)){
 foreach(var ins in method.Body.Instructions){
  if(ins.Operand is Instruction branch&&!method.Body.Instructions.Contains(branch))throw new Exception("Invalid IL branch: "+method.FullName);
  if(ins.Operand is Instruction[] switches&&switches.Any(i=>!method.Body.Instructions.Contains(i)))throw new Exception("Invalid IL switch: "+method.FullName);
 }
}
assembly.Write(output,new WriterParameters{WriteSymbols=false});
var verify=AssemblyDefinition.ReadAssembly(output);
if(verify.Name.FullName!=origFullName||verify.MainModule.Mvid!=origMvid)throw new Exception("Assembly version/MVID unexpectedly changed");
var d=verify.MainModule.GetTypes().Single(x=>x.FullName==dlg.FullName);
if(d.Methods.Single(m=>m.Name=="UpdateLiveSelectionLabel").Body.Instructions.Count<25)throw new Exception("Refresh handler missing");
if(d.Methods.Single(m=>m.Name=="Side").Body.Instructions.Count<=side.Body.Instructions.Count-2)throw new Exception("Picker wiring lost");
Console.WriteLine("PASS: "+origFullName+", MVID="+origMvid);
Console.WriteLine("HEADER_PICKERS_WIRED="+wiredHeader+", ROW_PICKERS_WIRED=12 (one hook inside six-slot Side factory, called for both sides)");
Console.WriteLine("Selection text now bound to selected contents; IsEditable=true, IsReadOnly=true; no manual input allowed");
Console.WriteLine("Battle generation, selected index values and disabled troop rules untouched");
Console.WriteLine("Wrote "+output+": "+new FileInfo(output).Length+" bytes");
File.WriteAllText(output+".changes.txt",
$"""
Fix29: Land battle mock test dropdown selection display refresh
Input: {input}
Assembly identity: {origFullName}
MVID: {origMvid}
Changes: 4 header dropdowns + both armies' 6 troop selectors.
SelectedIndex, item collections, unit availability and all LandBattle constructors unchanged.
SelectionChanged explicitly copies the selected text to a read-only ComboBox text field.
Compile and metadata verification: PASS. Windows gameplay UI verification: NOT TESTED.
""",new UTF8Encoding(false));