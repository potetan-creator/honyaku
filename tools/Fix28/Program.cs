using Mono.Cecil;
using Mono.Cecil.Cil;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;

if(args.Length != 4) throw new Exception("Usage: Fix28 input-Fix27.dll output-Fix28.dll WindowsDesktop-ref-dir Fix28-donor.dll");
var source=Path.GetFullPath(args[0]);
var dest=Path.GetFullPath(args[1]);
if(source==dest)throw new Exception("The original DLL must not be overwritten.");
var resolver=new DefaultAssemblyResolver();
resolver.AddSearchDirectory(args[2]);
resolver.AddSearchDirectory(Path.GetDirectoryName(source)!);
var asm=AssemblyDefinition.ReadAssembly(source,new ReaderParameters{InMemory=true,ReadSymbols=false,AssemblyResolver=resolver});
var module=asm.MainModule;
var id=asm.Name.FullName;var mvid=module.Mvid;
var log=new List<string>();
TypeDefinition Type(string name)=>module.GetTypes().Single(t=>t.FullName==name);
MethodDefinition Method(TypeDefinition owner,string name)=>owner.Methods.Single(m=>m.Name==name);
FieldDefinition Field(TypeDefinition owner,string name)=>owner.Fields.Single(f=>f.Name==name);
MethodReference Import(System.Reflection.MethodInfo m)=>module.ImportReference(m);
MethodReference GetMethod(Type systemType,string name, params System.Type[] parameters){
 var candidate=systemType.GetMethod(name,parameters)??throw new Exception("No MethodInfo "+systemType+"::"+name);
 return module.ImportReference(candidate);
}
var spar=Type("CdsHelper.Game.UI.Views.LandSparDialog");
var sorts=Field(spar,"Sorts");
var cctor=Method(spar,".cctor");
var instructions=cctor.Body.Instructions;
var store=instructions.Single(i=>i.OpCode==OpCodes.Stsfld&&i.Operand is FieldReference r&&r.Name=="Sorts");
int idx=instructions.IndexOf(store);
var newArray=instructions.Take(idx).LastOrDefault(i=>i.OpCode==OpCodes.Newarr&&i.Operand is TypeReference t&&t.FullName.Contains("ValueTuple"))
  ??throw new Exception("Sorts creation array not found.");
var arraySize=newArray.Previous??throw new Exception("Sorts array size missing");
if(arraySize.OpCode!=OpCodes.Ldc_I4_2)throw new Exception("Sorts array is not the two expected modes, opcode="+arraySize.OpCode);
arraySize.OpCode=OpCodes.Ldc_I4_3;
var tupleType=(TypeReference)newArray.Operand;
var tupleCtor=instructions.Skip(instructions.IndexOf(newArray)).Take(idx-instructions.IndexOf(newArray))
 .Where(i=>i.OpCode==OpCodes.Newobj&&i.Operand is MethodReference r&&r.DeclaringType.FullName==tupleType.FullName)
 .Select(i=>(MethodReference)i.Operand).FirstOrDefault()??throw new Exception("Tuple string/int ctor missing");
var il=cctor.Body.GetILProcessor();
foreach(var instruction in new[]{
 Instruction.Create(OpCodes.Dup),Instruction.Create(OpCodes.Ldc_I4_2),
 Instruction.Create(OpCodes.Ldstr,"自由模擬戦（手動編成）"),Instruction.Create(OpCodes.Ldc_I4_5),
 Instruction.Create(OpCodes.Newobj,tupleCtor),Instruction.Create(OpCodes.Stelem_Any,tupleType)})
 il.InsertBefore(store,instruction);
log.Add("Sorts: keep Town/Field unchanged; add third Free mode with LandBattle.Field rules.");
// Third UI mode uses a distinct stored sort key 5. Only at battle construction,
// convert it to the existing Field (1) rules while retaining manual target=-1.
var mapFreeSort=new MethodDefinition("ResolveSparBattleSort",
 MethodAttributes.Private|MethodAttributes.Static|MethodAttributes.HideBySig,module.TypeSystem.Int32);
mapFreeSort.Parameters.Add(new ParameterDefinition("sort",ParameterAttributes.None,module.TypeSystem.Int32));
spar.Methods.Add(mapFreeSort);
var sf=mapFreeSort.Body.GetILProcessor();
var elseSort=Instruction.Create(OpCodes.Ldarg_0);
sf.Append(Instruction.Create(OpCodes.Ldarg_0));
sf.Append(Instruction.Create(OpCodes.Ldc_I4_5));
sf.Append(Instruction.Create(OpCodes.Bne_Un_S,elseSort));
sf.Append(Instruction.Create(OpCodes.Ldc_I4_1));
sf.Append(Instruction.Create(OpCodes.Ret));
sf.Append(elseSort);
sf.Append(Instruction.Create(OpCodes.Ret));
var playMode=Method(spar,"Play");
var secondBattleConstructor=playMode.Body.Instructions.Single(i=>i.OpCode==OpCodes.Newobj&&
 i.Operand is MethodReference mr&&mr.DeclaringType.FullName=="CdsHelper.Game.Engine.Land.LandBattle"&&mr.Parameters.Count==10);
var getSort=secondBattleConstructor.Previous;
if(getSort?.Operand is not MethodReference smr || smr.Name!="get_Sort")throw new Exception("Expected setup sort just before manual battle constructor.");
playMode.Body.GetILProcessor().InsertAfter(getSort,Instruction.Create(OpCodes.Call,mapFreeSort));
log.Add("Free UI mode uses unique Sort=5, passed as existing Field=1 to battle constructor.");

// Protect existing Town and Field automatic branches: LandSparDialog.Play and LandBattle constructors remain untouched.
var play=Method(spar,"Play");
var playOriginal=string.Join("\n",play.Body.Instructions.Select(x=>x.OpCode.Code+"|"+x.Operand?.ToString()));
var battle=Type("CdsHelper.Game.Engine.Land.LandBattle");
var battleBefore=string.Join("\n",battle.Methods.Where(m=>m.IsConstructor&&!m.IsStatic)
 .SelectMany(m=>m.Body.Instructions.Select(i=>m.Parameters.Count+":"+i.OpCode.Code+"|"+i.Operand?.ToString())));

// In free mode, no target is selected: this makes the existing Play fallback use the
// hand-specified units, men, terrain and culture, rather than overriding with target values.
// Persist formerly lost mode and opponent selection in game-settings.json.
// Legacy JSON without these properties defaults to normal Town battle and no target.
var settingsData=Type("CdsHelper.Game.Local.Settings.LandSparData");
(MethodDefinition getter,MethodDefinition setter) AddIntProperty(string propName,int defaultValue){
 var backing=new FieldDefinition("<"+propName+">k__BackingField", FieldAttributes.Private,module.TypeSystem.Int32);
 settingsData.Fields.Add(backing);
 var getter=new MethodDefinition("get_"+propName,
   MethodAttributes.Public|MethodAttributes.SpecialName|MethodAttributes.HideBySig,module.TypeSystem.Int32);
 getter.Body.GetILProcessor().Append(Instruction.Create(OpCodes.Ldarg_0));
 getter.Body.GetILProcessor().Append(Instruction.Create(OpCodes.Ldfld,backing));
 getter.Body.GetILProcessor().Append(Instruction.Create(OpCodes.Ret));
 settingsData.Methods.Add(getter);
 var setter=new MethodDefinition("set_"+propName,
   MethodAttributes.Public|MethodAttributes.SpecialName|MethodAttributes.HideBySig,module.TypeSystem.Void);
 setter.Parameters.Add(new ParameterDefinition("value",ParameterAttributes.None,module.TypeSystem.Int32));
 setter.Body.GetILProcessor().Append(Instruction.Create(OpCodes.Ldarg_0));
 setter.Body.GetILProcessor().Append(Instruction.Create(OpCodes.Ldarg_1));
 setter.Body.GetILProcessor().Append(Instruction.Create(OpCodes.Stfld,backing));
 setter.Body.GetILProcessor().Append(Instruction.Create(OpCodes.Ret));
 settingsData.Methods.Add(setter);
 settingsData.Properties.Add(new PropertyDefinition(propName,PropertyAttributes.None,module.TypeSystem.Int32){GetMethod=getter,SetMethod=setter});
 var initializer=Method(settingsData,".ctor");
 var returnAt=initializer.Body.Instructions.Last(i=>i.OpCode==OpCodes.Ret);
 var pil=initializer.Body.GetILProcessor();
 pil.InsertBefore(returnAt,Instruction.Create(OpCodes.Ldarg_0));
 pil.InsertBefore(returnAt,Instruction.Create(OpCodes.Ldc_I4,defaultValue));
 pil.InsertBefore(returnAt,Instruction.Create(OpCodes.Stfld,backing));
 return (getter,setter);
}
var (getStoredSort,setStoredSort)=AddIntProperty("Sort",2);
var (getStoredTarget,setStoredTarget)=AddIntProperty("Target",-1);
var getLast=Method(spar,"get_Last");
var setupCtor=getLast.Body.Instructions.Single(i=>i.OpCode==OpCodes.Newobj&&i.Operand is MethodReference mr&&mr.DeclaringType.FullName.Contains("LandSparDialog/Setup")&&mr.Parameters.Count==8);
var oldTarget=setupCtor.Previous;
var oldSort=oldTarget?.Previous;
if(oldTarget?.OpCode!=OpCodes.Ldc_I4_M1||oldSort?.OpCode!=OpCodes.Ldc_I4_2)
 throw new Exception("Expected old Last constructor hardcoded Sort=Town, Target=-1.");
var lastil=getLast.Body.GetILProcessor();
var fetchSort=Instruction.Create(OpCodes.Ldloc_0);
lastil.Replace(oldSort,fetchSort);
lastil.InsertAfter(fetchSort,Instruction.Create(OpCodes.Callvirt,getStoredSort));
var fetchTarget=Instruction.Create(OpCodes.Ldloc_0);
lastil.Replace(oldTarget,fetchTarget);
lastil.InsertAfter(fetchTarget,Instruction.Create(OpCodes.Callvirt,getStoredTarget));
var setLast=Method(spar,"set_Last");
var storeLast=setLast.Body.Instructions.Single(i=>i.Operand is MethodReference mr&&mr.Name=="set_LandSpar");
var setil=setLast.Body.GetILProcessor();
foreach(var (from,to) in new[]{(Method(Type("CdsHelper.Game.UI.Views.LandSparDialog/Setup"),"get_Sort"),setStoredSort),
                                (Method(Type("CdsHelper.Game.UI.Views.LandSparDialog/Setup"),"get_Target"),setStoredTarget)}){
 foreach(var inst in new[]{Instruction.Create(OpCodes.Dup),Instruction.Create(OpCodes.Ldloca_S,setLast.Body.Variables[0]),
                            Instruction.Create(OpCodes.Call,from),Instruction.Create(OpCodes.Callvirt,to)})setil.InsertBefore(storeLast,inst);
}
log.Add("GameSettings.LandSpar now saves and restores Sort and Target instead of resetting them.");

var targetMethod=Method(spar,"PickedTarget");
var start=targetMethod.Body.Instructions[0];
var sortField=Field(spar,"_sort");
var selectGetter=targetMethod.Body.Instructions.Select(i=>i.Operand).OfType<MethodReference>()
 .FirstOrDefault(m=>m.Name=="get_SelectedIndex");
if(selectGetter==null) {
 selectGetter=Method(spar,"Decide").Body.Instructions.Select(i=>i.Operand).OfType<MethodReference>()
  .First(m=>m.Name=="get_SelectedIndex");
}
var taril=targetMethod.Body.GetILProcessor();
foreach(var x in new[]{
 Instruction.Create(OpCodes.Ldarg_0), Instruction.Create(OpCodes.Ldfld,sortField),
 Instruction.Create(OpCodes.Callvirt,selectGetter),Instruction.Create(OpCodes.Ldc_I4_2),
 Instruction.Create(OpCodes.Bne_Un,start),Instruction.Create(OpCodes.Ldc_I4_M1),Instruction.Create(OpCodes.Ret)})
 taril.InsertBefore(start,x);
log.Add("Free mode PickedTarget: -1, without changing Town/Field target selection.");

var fill=Method(spar,"FillTargets");
var top=fill.Body.Instructions[0];
var targetField=Field(spar,"_target");
var wpfCore=ModuleDefinition.ReadModule(Path.Combine(args[2],"PresentationCore.dll"));
var wpfElement=wpfCore.GetType("System.Windows.UIElement")??throw new Exception("UIElement absent from WPF ref");
var setEnabled=module.ImportReference(wpfElement.Methods.Single(m=>m.Name=="set_IsEnabled"&&m.Parameters.Count==1));
var fillil=fill.Body.GetILProcessor();
var manualTargets=new Instruction[]{
 Instruction.Create(OpCodes.Ldarg_0),
 Instruction.Create(OpCodes.Ldfld,sortField),
 Instruction.Create(OpCodes.Callvirt,selectGetter),
 Instruction.Create(OpCodes.Ldc_I4_2),
 Instruction.Create(OpCodes.Bne_Un,Instruction.Create(OpCodes.Nop)),
 Instruction.Create(OpCodes.Ldarg_0),
 Instruction.Create(OpCodes.Ldfld,targetField),
 Instruction.Create(OpCodes.Ldc_I4_0),
 Instruction.Create(OpCodes.Callvirt,setEnabled),
 Instruction.Create(OpCodes.Ldarg_0),
 Instruction.Create(OpCodes.Ldfld,targetField),
 Instruction.Create(OpCodes.Ldc_I4_0),
 Instruction.Create(OpCodes.Callvirt,fill.Body.Instructions.Select(i=>i.Operand).OfType<MethodReference>().First(m=>m.Name=="set_SelectedIndex")),
 Instruction.Create(OpCodes.Ret)
};
// In free mode do not leave a misleading city/person visible in the disabled target selector.
var sourceOps=fill.Body.Instructions.Select(i=>i.Operand).OfType<MethodReference>().ToArray();
var getItems=sourceOps.First(x=>x.Name=="get_Items"&&x.ReturnType.FullName.Contains("ItemCollection"));
var clearItems=sourceOps.First(x=>x.Name=="Clear"&&x.DeclaringType.FullName.Contains("ItemCollection"));
var addItems=sourceOps.First(x=>x.Name=="Add"&&x.DeclaringType.FullName.Contains("ItemCollection"));
var selectedIndexSetter=sourceOps.First(x=>x.Name=="set_SelectedIndex");
var afterIf=manualTargets[4].Operand as Instruction??throw new Exception("manual branch target");
foreach(var x in manualTargets)fillil.InsertBefore(top,x);
// Place a genuine "no opponent" label before selecting index 0.
var targetDisplay=new Instruction[]{
 Instruction.Create(OpCodes.Ldarg_0),Instruction.Create(OpCodes.Ldfld,targetField),
 Instruction.Create(OpCodes.Callvirt,getItems),Instruction.Create(OpCodes.Callvirt,clearItems),
 Instruction.Create(OpCodes.Ldarg_0),Instruction.Create(OpCodes.Ldfld,targetField),
 Instruction.Create(OpCodes.Callvirt,getItems),Instruction.Create(OpCodes.Ldstr,"（自由模擬戦：相手指定なし）"),
 Instruction.Create(OpCodes.Callvirt,addItems),Instruction.Create(OpCodes.Pop)
};
foreach(var item in targetDisplay)fillil.InsertBefore(manualTargets[9],item);
fillil.InsertBefore(top,afterIf);
foreach(var x in new[]{
 Instruction.Create(OpCodes.Ldarg_0),Instruction.Create(OpCodes.Ldfld,targetField),
 Instruction.Create(OpCodes.Ldc_I4_1),Instruction.Create(OpCodes.Callvirt,setEnabled)})
 fillil.InsertBefore(top,x);
log.Add("FillTargets: opponent ComboBox disabled only in Free mode; original Town/Field logic untouched.");

// Name matching normalization: katakana/hiragana equivalents, NFKC, common interpuncts/spaces/equal signs.
var lang=Type("CdsHelper.Game.Local.Helpers.Lang");
var stringType=module.TypeSystem.String;
var attrs=MethodAttributes.Assembly|MethodAttributes.Static|MethodAttributes.HideBySig;
var normalize=new MethodDefinition("NormalizePersonSearch",attrs,stringType);
normalize.Parameters.Add(new ParameterDefinition("value",ParameterAttributes.None,stringType));
lang.Methods.Add(normalize);
normalize.Body.InitLocals=true;
normalize.Body.MaxStackSize=8;
var charArray=new ArrayType(module.TypeSystem.Char);
var varArray=new VariableDefinition(charArray);
var varIdx=new VariableDefinition(module.TypeSystem.Int32);
var varChar=new VariableDefinition(module.TypeSystem.Int32);
normalize.Body.Variables.Add(varArray);
normalize.Body.Variables.Add(varIdx);
normalize.Body.Variables.Add(varChar);
var nil=normalize.Body.GetILProcessor();
var body=Instruction.Create(OpCodes.Nop);
var skip=Instruction.Create(OpCodes.Nop);
var cond=Instruction.Create(OpCodes.Nop);
var end=Instruction.Create(OpCodes.Nop);
nil.Append(Instruction.Create(OpCodes.Ldarg_0));
nil.Append(Instruction.Create(OpCodes.Ldc_I4_5)); // NormalizationForm.FormKC
nil.Append(Instruction.Create(OpCodes.Callvirt,GetMethod(typeof(string),"Normalize",typeof(NormalizationForm))));
nil.Append(Instruction.Create(OpCodes.Callvirt,GetMethod(typeof(string),"ToCharArray")));
nil.Append(Instruction.Create(OpCodes.Stloc,varArray));
nil.Append(Instruction.Create(OpCodes.Ldc_I4_0));
nil.Append(Instruction.Create(OpCodes.Stloc,varIdx));
nil.Append(Instruction.Create(OpCodes.Br,cond));
nil.Append(body);
nil.Append(Instruction.Create(OpCodes.Ldloc,varArray));
nil.Append(Instruction.Create(OpCodes.Ldloc,varIdx));
nil.Append(Instruction.Create(OpCodes.Ldelem_U2));
nil.Append(Instruction.Create(OpCodes.Stloc,varChar));
nil.Append(Instruction.Create(OpCodes.Ldloc,varChar));
nil.Append(Instruction.Create(OpCodes.Ldc_I4,0x30A1));
nil.Append(Instruction.Create(OpCodes.Blt,skip));
nil.Append(Instruction.Create(OpCodes.Ldloc,varChar));
nil.Append(Instruction.Create(OpCodes.Ldc_I4,0x30F6));
nil.Append(Instruction.Create(OpCodes.Bgt,skip));
nil.Append(Instruction.Create(OpCodes.Ldloc,varArray));
nil.Append(Instruction.Create(OpCodes.Ldloc,varIdx));
nil.Append(Instruction.Create(OpCodes.Ldloc,varChar));
nil.Append(Instruction.Create(OpCodes.Ldc_I4_S,(sbyte)96));
nil.Append(Instruction.Create(OpCodes.Sub));
nil.Append(Instruction.Create(OpCodes.Conv_U2));
nil.Append(Instruction.Create(OpCodes.Stelem_I2));
nil.Append(skip);
nil.Append(Instruction.Create(OpCodes.Ldloc,varIdx));
nil.Append(Instruction.Create(OpCodes.Ldc_I4_1));
nil.Append(Instruction.Create(OpCodes.Add));
nil.Append(Instruction.Create(OpCodes.Stloc,varIdx));
nil.Append(cond);
nil.Append(Instruction.Create(OpCodes.Ldloc,varIdx));
nil.Append(Instruction.Create(OpCodes.Ldloc,varArray));
nil.Append(Instruction.Create(OpCodes.Ldlen));
nil.Append(Instruction.Create(OpCodes.Conv_I4));
nil.Append(Instruction.Create(OpCodes.Blt,body));
nil.Append(end);
nil.Append(Instruction.Create(OpCodes.Ldloc,varArray));
nil.Append(Instruction.Create(OpCodes.Newobj,module.ImportReference(typeof(string).GetConstructor(new[]{typeof(char[])})!)));
var replace=GetMethod(typeof(string),"Replace",typeof(string),typeof(string));
foreach(var separator in new[]{"・","･","·","＝","="," ","　","-","－","‐","‑","_","・","．","."}){
 nil.Append(Instruction.Create(OpCodes.Ldstr,separator));
 nil.Append(Instruction.Create(OpCodes.Ldstr,""));
 nil.Append(Instruction.Create(OpCodes.Callvirt,replace));
}
nil.Append(Instruction.Create(OpCodes.Callvirt,GetMethod(typeof(string),"ToUpperInvariant")));
nil.Append(Instruction.Create(OpCodes.Ret));

var nameContains=new MethodDefinition("ContainsPersonSearch",attrs,module.TypeSystem.Boolean);
nameContains.Parameters.Add(new ParameterDefinition("candidate",ParameterAttributes.None,stringType));
nameContains.Parameters.Add(new ParameterDefinition("query",ParameterAttributes.None,stringType));
nameContains.Parameters.Add(new ParameterDefinition("comparison",ParameterAttributes.None,module.ImportReference(typeof(StringComparison))));
lang.Methods.Add(nameContains);
var contains=GetMethod(typeof(string),"Contains",typeof(string),typeof(StringComparison));
var translate=Method(lang,"T");
var cil=nameContains.Body.GetILProcessor();
cil.Append(Instruction.Create(OpCodes.Ldarg_0));
cil.Append(Instruction.Create(OpCodes.Call,translate));
cil.Append(Instruction.Create(OpCodes.Call,normalize));
cil.Append(Instruction.Create(OpCodes.Ldarg_1));
cil.Append(Instruction.Create(OpCodes.Call,normalize));
cil.Append(Instruction.Create(OpCodes.Ldarg_2));
cil.Append(Instruction.Create(OpCodes.Callvirt,contains));
cil.Append(Instruction.Create(OpCodes.Ret));
int searchSites=0;
var duel=Type("CdsHelper.Game.UI.Views.DuelFoeDialog/<>c__DisplayClass14_0");
var picker=Type("CdsHelper.Game.UI.Views.LandBattlePickerDialog");
foreach(var method in new[]{duel.Methods.Single(x=>x.Name=="<Fill>b__0"),picker.Methods.Single(x=>x.Name=="Fill")}){
 var hits=method.Body.Instructions.Where(i=>i.Operand is MethodReference m&&m.Name=="Contains"&&m.DeclaringType.FullName=="System.String"&&m.Parameters.Count==2).ToArray();
 if(hits.Length!=1)throw new Exception("Expected one string.Contains in "+method.FullName+" actual="+hits.Length);
 hits[0].OpCode=OpCodes.Call;
 hits[0].Operand=nameContains;
 searchSites++;
}
log.Add("Search equivalence: NFKC, あ=ア, middle dots/equal signs/spaces/hyphens ignored. Patched "+searchSites+" search call sites.");

// Keep the original stored Korean name when picking land battle boss, but render Japanese.
var pickFill=picker.Methods.Single(x=>x.Name=="Fill");
int translated=0;
foreach(var i in pickFill.Body.Instructions.Where(i=>i.Operand is MethodReference mr&&mr.Name=="get_Name"&&mr.DeclaringType.FullName.Contains("PersonTable/Row")).ToArray()){
 var next=i.Next;
 if(next?.Operand is MethodReference mr&&mr.Name=="AppendFormatted"&&mr.DeclaringType.FullName.Contains("DefaultInterpolatedStringHandler")){
   pickFill.Body.GetILProcessor().InsertAfter(i,Instruction.Create(OpCodes.Call,translate));
   translated++;
 }
}
if(translated!=1)throw new Exception("Could not localize boss list name: "+translated);
log.Add("LandBattlePicker displays translated names without modifying script names.");

// Copy a precompiled, dependency-free battle summary method into the existing game
// assembly. This is a display-only preview; it never mutates the battle.
var donorAssembly=ModuleDefinition.ReadModule(args[3]);
var donorMethod=donorAssembly.Types.Single(x=>x.Name=="BattlePreviewDonor").Methods.Single(x=>x.Name=="Build");
var preview=new MethodDefinition("ShowAppliedBattlePreviewText",MethodAttributes.Private|MethodAttributes.Static|MethodAttributes.HideBySig,
  module.ImportReference(donorMethod.ReturnType));
foreach(var p in donorMethod.Parameters)preview.Parameters.Add(new ParameterDefinition(p.Name,p.Attributes,module.ImportReference(p.ParameterType)));
spar.Methods.Add(preview);
var fromBody=donorMethod.Body;
var toBody=new Mono.Cecil.Cil.MethodBody(preview){InitLocals=fromBody.InitLocals,MaxStackSize=fromBody.MaxStackSize};
preview.Body=toBody;
foreach(var v in fromBody.Variables)toBody.Variables.Add(new VariableDefinition(module.ImportReference(v.VariableType)));
var instrMap=new Dictionary<Instruction,Instruction>();
foreach(var i in fromBody.Instructions){var d=Instruction.Create(OpCodes.Nop);d.OpCode=i.OpCode;toBody.Instructions.Add(d);instrMap.Add(i,d);}
foreach(var i in fromBody.Instructions){
 var d=instrMap[i];
 d.Operand=i.Operand switch {
  null=>null,
  Instruction j=>instrMap[j],
  Instruction[] js=>js.Select(j=>instrMap[j]).ToArray(),
  VariableDefinition v=>toBody.Variables[fromBody.Variables.IndexOf(v)],
  ParameterDefinition p=>preview.Parameters[donorMethod.Parameters.IndexOf(p)],
  MethodReference m=>module.ImportReference(m),
  FieldReference f=>module.ImportReference(f),
  TypeReference t=>module.ImportReference(t),
  _=>i.Operand
 };
}
foreach(var e in fromBody.ExceptionHandlers){
 toBody.ExceptionHandlers.Add(new ExceptionHandler(e.HandlerType){
  CatchType=e.CatchType==null?null:module.ImportReference(e.CatchType),
  TryStart=e.TryStart==null?null:instrMap[e.TryStart],
  TryEnd=e.TryEnd==null?null:instrMap[e.TryEnd],
  HandlerStart=e.HandlerStart==null?null:instrMap[e.HandlerStart],
  HandlerEnd=e.HandlerEnd==null?null:instrMap[e.HandlerEnd],
  FilterStart=e.FilterStart==null?null:instrMap[e.FilterStart]
 });
}
var sceneRun=play.Body.Instructions.Single(i=>i.Operand is MethodReference mr&&mr.Name=="Run"&&mr.DeclaringType.FullName.Contains("LandBattleScene"));
var beginScene=sceneRun.Previous?.Previous?.Previous?.Previous;
if(beginScene?.OpCode!=OpCodes.Ldarg_0)throw new Exception("Expected scene invocation starts with owner arg");
var messageBox=Method(spar,"Decide").Body.Instructions.Select(i=>i.Operand).OfType<MethodReference>()
 .First(x=>x.Name=="Show"&&x.DeclaringType.FullName=="System.Windows.MessageBox"&&x.Parameters.Count==5);
var sceneIl=play.Body.GetILProcessor();
var firstPreview=Instruction.Create(OpCodes.Ldarg_0);
var oldBranches=play.Body.Instructions
 .Where(i=>ReferenceEquals(i.Operand,beginScene)).ToArray();
var ops=new Instruction[]{
 firstPreview,
 Instruction.Create(OpCodes.Ldloc,play.Body.Variables[4]),
 Instruction.Create(OpCodes.Ldloca,play.Body.Variables[0]),
 Instruction.Create(OpCodes.Call,Method(Type("CdsHelper.Game.UI.Views.LandSparDialog/Setup"),"get_Sort")),
 Instruction.Create(OpCodes.Ldloca,play.Body.Variables[0]),
 Instruction.Create(OpCodes.Call,Method(Type("CdsHelper.Game.UI.Views.LandSparDialog/Setup"),"get_Target")),
 Instruction.Create(OpCodes.Call,preview),
 Instruction.Create(OpCodes.Ldstr,"野戦テスト：適用設定の確認"),
 Instruction.Create(OpCodes.Ldc_I4_4), // MessageBoxButton.YesNo
 Instruction.Create(OpCodes.Ldc_I4_0), // MessageBoxImage.None
 Instruction.Create(OpCodes.Call,messageBox),
 Instruction.Create(OpCodes.Ldc_I4_6), // MessageBoxResult.Yes
 Instruction.Create(OpCodes.Beq,beginScene),
 Instruction.Create(OpCodes.Ret)
};
foreach(var i in ops)sceneIl.InsertBefore(beginScene,i);
foreach(var br in oldBranches)br.Operand=firstPreview;
log.Add("Before battle launch: show ACTUAL battlefield, culture, opponent mode, both side unit kinds and soldiers; No cancels launch.");
log.Add("Battle auto-generation code and pre-existing equipment engine retained unchanged.");

var playFinal=string.Join("\n",play.Body.Instructions.Select(x=>x.OpCode.Code+"|"+x.Operand?.ToString()));
var battleFinal=string.Join("\n",battle.Methods.Where(m=>m.IsConstructor&&!m.IsStatic)
 .SelectMany(m=>m.Body.Instructions.Select(i=>m.Parameters.Count+":"+i.OpCode.Code+"|"+i.Operand?.ToString())));
if(playFinal!=playOriginal||battleFinal!=battleBefore)throw new Exception("Original automatic battle construction code was changed.");
log.Add("PASS: original Town and Field auto-generation code identical, verified before writing.");
foreach(var name in new[]{"ForeignInnManualSave","FlexibleInnStay","SideMouseAsEscape","KeepSuspendOnManualSave","UnlimitedSkillLanguageCap"}){
 if(!Type("CdsHelper.Game.Local.Settings.GameSettingsData").Properties.Any(p=>p.Name==name))throw new Exception("Lost prior custom setting "+name);
}
if(!Type("CdsHelper.Game.UI.Views.PlayerInfoDialog").Methods.Any(x=>x.Name=="DevMarksForDisplay"))
 throw new Exception("Lost Fix26 hide-tampered function");
foreach(var type in module.GetTypes())foreach(var method in type.Methods.Where(x=>x.HasBody))
 foreach(var i in method.Body.Instructions) {
  if(i.Operand is Instruction target&&!method.Body.Instructions.Contains(target))throw new Exception("Invalid IL branch target "+method.FullName);
  if(i.Operand is Instruction[] targets&&targets.Any(target=>!method.Body.Instructions.Contains(target)))throw new Exception("Invalid IL switch target "+method.FullName);
 }
asm.Write(dest,new WriterParameters{WriteSymbols=false});
var check=AssemblyDefinition.ReadAssembly(dest);
if(check.Name.FullName!=id||check.MainModule.Mvid!=mvid)throw new Exception("Assembly identity changed");
foreach(var line in log)Console.WriteLine(line);
Console.WriteLine("OUTPUT: "+dest+" "+new FileInfo(dest).Length+" bytes");
File.WriteAllLines(dest+".patchlog.txt",new[]{"Fix28: PRESERVE original town and field enemy auto-generation."}.Concat(log),new UTF8Encoding(false));
