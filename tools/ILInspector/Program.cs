using Mono.Cecil;
using Mono.Cecil.Cil;
using System;
using System.Collections.Generic;
using System.Linq;

if(args.Length!=4) throw new Exception("Usage ILPatcher original.dll fix20.dll output.dll windows-desktop-ref-dir");
var resolver=new DefaultAssemblyResolver();
resolver.AddSearchDirectory(args[3]);
var baseMod=ModuleDefinition.ReadModule(args[0],new ReaderParameters{ReadSymbols=false,InMemory=true,AssemblyResolver=resolver});
var donor=ModuleDefinition.ReadModule(args[1],new ReaderParameters{ReadSymbols=false,InMemory=true,AssemblyResolver=resolver});
Console.WriteLine("BASE "+baseMod.Assembly.FullName+" MVID="+baseMod.Mvid);
Console.WriteLine("DONOR "+donor.Assembly.FullName);
var types=baseMod.GetTypes().ToDictionary(t=>t.FullName);
var dt=donor.GetTypes().ToDictionary(t=>t.FullName);
TypeDefinition T(string fullname)=>types.TryGetValue(fullname,out var t)?t:throw new Exception("Missing target type "+fullname);
TypeDefinition D(string fullname)=>dt.TryGetValue(fullname,out var t)?t:throw new Exception("Missing donor type "+fullname);
TypeReference TypeMap(TypeReference t) {
 if(t is GenericInstanceType g) {
   var n=new GenericInstanceType(TypeMap(g.ElementType));
   foreach(var genericArg in g.GenericArguments)n.GenericArguments.Add(TypeMap(genericArg));
   return n;
 }
 if(t is ArrayType a)return new ArrayType(TypeMap(a.ElementType),a.Rank);
 if(t is ByReferenceType b)return new ByReferenceType(TypeMap(b.ElementType));
 if(t is PointerType p)return new PointerType(TypeMap(p.ElementType));
 if(t is GenericParameter)return t;
 if(types.TryGetValue(t.FullName,out var local))return local;
 return baseMod.ImportReference(t);
}
MethodDefinition Method(TypeDefinition t,string name,int arity) {
 var ms=t.Methods.Where(m=>m.Name==name && m.Parameters.Count==arity).ToArray();
 if(ms.Length!=1)throw new Exception($"Missing/ambiguous {t.FullName}::{name}/{arity} got {ms.Length}");
 return ms[0];
}
MethodReference MethodMap(MethodReference m) {
 if(m is GenericInstanceMethod gm){
   var n=new GenericInstanceMethod(MethodMap(gm.ElementMethod));
   foreach(var a in gm.GenericArguments)n.GenericArguments.Add(TypeMap(a));
   return n;
 }
 if(types.TryGetValue(m.DeclaringType.FullName,out var owner)){
   var hits=owner.Methods.Where(x=>x.Name==m.Name && x.Parameters.Count==m.Parameters.Count && x.GenericParameters.Count==m.GenericParameters.Count).ToArray();
   if(hits.Length==1)return hits[0];
   if(hits.Length>1) {
     foreach(var h in hits) if(h.Parameters.Select(x=>x.ParameterType.FullName).SequenceEqual(m.Parameters.Select(x=>x.ParameterType.FullName))) return h;
   }
   throw new Exception("Missing local method "+m.FullName);
 }
 return baseMod.ImportReference(m);
}
FieldReference FieldMap(FieldReference f) {
 if(types.TryGetValue(f.DeclaringType.FullName,out var owner)){
   var x=owner.Fields.FirstOrDefault(x=>x.Name==f.Name);
   return x??throw new Exception("Missing local field "+f.FullName);
 }
 return baseMod.ImportReference(f);
}
void CopyBody(MethodDefinition from,MethodDefinition into) {
 if(!from.HasBody)throw new Exception("No donor body for "+from.FullName);
 var sb=from.Body; var tb=new Mono.Cecil.Cil.MethodBody(into){InitLocals=sb.InitLocals,MaxStackSize=sb.MaxStackSize};
 into.Body=tb;
 foreach(var v in sb.Variables)tb.Variables.Add(new VariableDefinition(TypeMap(v.VariableType)));
 var map=new Dictionary<Instruction,Instruction>();
 foreach(var orig in sb.Instructions) {var dst=Instruction.Create(OpCodes.Nop);dst.OpCode=orig.OpCode;tb.Instructions.Add(dst);map.Add(orig,dst);}
 foreach(var orig in sb.Instructions) {
   var dst=map[orig];
   dst.Operand=orig.Operand switch {
     null=>null,
     Instruction jump=>map[jump],
     Instruction[] jumps=>jumps.Select(j=>map[j]).ToArray(),
     VariableDefinition v=>tb.Variables[sb.Variables.IndexOf(v)],
     ParameterDefinition p=>into.Parameters[from.Parameters.IndexOf(p)],
     MethodReference m=>MethodMap(m),
     FieldReference f=>FieldMap(f),
     TypeReference t=>TypeMap(t),
     CallSite site=>site,
     _=>orig.Operand
   };
 }
 foreach(var e in sb.ExceptionHandlers){
   var ne=new ExceptionHandler(e.HandlerType){
     TryStart=e.TryStart==null?null:map[e.TryStart],
     TryEnd=e.TryEnd==null?null:map[e.TryEnd],
     HandlerStart=e.HandlerStart==null?null:map[e.HandlerStart],
     HandlerEnd=e.HandlerEnd==null?null:map[e.HandlerEnd],
     FilterStart=e.FilterStart==null?null:map[e.FilterStart],
     CatchType=e.CatchType==null?null:TypeMap(e.CatchType)
   };
   tb.ExceptionHandlers.Add(ne);
 }
 Console.WriteLine("TRANSPLANT "+into.FullName+" "+tb.Instructions.Count+" instructions");
}
void CopyMethod(TypeDefinition owner,string name,int arity){
 var from=Method(D(owner.FullName),name,arity);
 var into=owner.Methods.FirstOrDefault(m=>m.Name==name && m.Parameters.Count==arity);
 if(into==null) {
   into=new MethodDefinition(from.Name,from.Attributes,TypeMap(from.ReturnType)){ImplAttributes=from.ImplAttributes};
   foreach(var p in from.Parameters) into.Parameters.Add(new ParameterDefinition(p.Name,p.Attributes,TypeMap(p.ParameterType)));
   owner.Methods.Add(into);Console.WriteLine("ADDED METHOD "+into.FullName);
 }
 CopyBody(from,into);
}
void AddProperty(TypeDefinition owner,string name,bool isStatic){
 if(owner.Properties.Any(p=>p.Name==name))throw new Exception("Property already present "+owner.FullName+"::"+name);
 var boolType=baseMod.TypeSystem.Boolean;
 FieldDefinition? backing=null;
 if(!isStatic) {
   backing=new FieldDefinition("<"+name+">k__BackingField",FieldAttributes.Private,boolType);
   owner.Fields.Add(backing);
 }
 var attrs=MethodAttributes.Public|MethodAttributes.HideBySig|MethodAttributes.SpecialName|(isStatic?MethodAttributes.Static:0);
 var get=new MethodDefinition("get_"+name,attrs,boolType);
 var set=new MethodDefinition("set_"+name,attrs,baseMod.TypeSystem.Void);
 set.Parameters.Add(new ParameterDefinition("value",ParameterAttributes.None,boolType));
 owner.Methods.Add(get); owner.Methods.Add(set);
 var prop=new PropertyDefinition(name,PropertyAttributes.None,boolType){GetMethod=get,SetMethod=set};
 owner.Properties.Add(prop);
 var ilg=get.Body.GetILProcessor();
 var ils=set.Body.GetILProcessor();
 if(!isStatic){
   ilg.Append(Instruction.Create(OpCodes.Ldarg_0));
   ilg.Append(Instruction.Create(OpCodes.Ldfld,backing!));
   ilg.Append(Instruction.Create(OpCodes.Ret));
   ils.Append(Instruction.Create(OpCodes.Ldarg_0));
   ils.Append(Instruction.Create(OpCodes.Ldarg_1));
   ils.Append(Instruction.Create(OpCodes.Stfld,backing!));
   ils.Append(Instruction.Create(OpCodes.Ret));
 }else{
   var gs=T("CdsHelper.Game.Local.Settings.GameSettings");
   var data=T("CdsHelper.Game.Local.Settings.GameSettingsData");
   var load=Method(gs,"Load",0);
   var save=Method(gs,"Save",0);
   var field=gs.Fields.Single(x=>x.Name=="_data");
   var datag=Method(data,"get_"+name,0);
   var datas=Method(data,"set_"+name,1);
   ilg.Append(Instruction.Create(OpCodes.Call,load));
   ilg.Append(Instruction.Create(OpCodes.Ldsfld,field));
   ilg.Append(Instruction.Create(OpCodes.Callvirt,datag));
   ilg.Append(Instruction.Create(OpCodes.Ret));
   ils.Append(Instruction.Create(OpCodes.Call,load));
   ils.Append(Instruction.Create(OpCodes.Ldsfld,field));
   ils.Append(Instruction.Create(OpCodes.Ldarg_0));
   ils.Append(Instruction.Create(OpCodes.Callvirt,datas));
   ils.Append(Instruction.Create(OpCodes.Call,save));
   ils.Append(Instruction.Create(OpCodes.Ret));
 }
 Console.WriteLine("ADDED PROPERTY "+owner.FullName+"::"+name);
}
var dataType=T("CdsHelper.Game.Local.Settings.GameSettingsData");
var settings=T("CdsHelper.Game.Local.Settings.GameSettings");
string[] names={"ForeignInnManualSave","FlexibleInnStay","SideMouseAsEscape","KeepSuspendOnManualSave"};
foreach(var name in names)AddProperty(dataType,name,false);
foreach(var name in names)AddProperty(settings,name,true);

var lodging=T("CdsHelper.Game.Engine.Inn.Lodging");
if(!lodging.Fields.Any(x=>x.Name=="MaxStayDays")){
 var donorField=D(lodging.FullName).Fields.Single(x=>x.Name=="MaxStayDays");
 var field=new FieldDefinition(donorField.Name,donorField.Attributes,TypeMap(donorField.FieldType)){Constant=donorField.Constant};
 lodging.Fields.Add(field);
 Console.WriteLine("ADDED CONSTANT MaxStayDays");
}
CopyMethod(lodging,"Stay",3);
var closure=T("CdsHelper.Game.UI.Views.CityPicView/<>c__DisplayClass140_0");
if(!closure.Fields.Any(f=>f.Name=="days")) closure.Fields.Add(new FieldDefinition("days",FieldAttributes.Public,baseMod.TypeSystem.Int32));
CopyMethod(closure,"<Stay>b__0",0);
CopyMethod(T("CdsHelper.Game.UI.Views.CityPicView"),"Stay",0);
CopyMethod(T("CdsHelper.Game.Engine.GameSave"),"Save",4);
CopyMethod(T("CdsHelper.Game.UI.Views.GameWindow"),"OnSideMouseAsEscape",2);
CopyMethod(T("CdsHelper.Game.UI.Views.GameWindow"),".cctor",0);
CopyMethod(T("CdsHelper.Game.UI.Views.GameSystemMenu"),"Build",3);
var cd=T("CdsHelper.Game.UI.Views.GameSystemMenu/<>c__DisplayClass0_0");
foreach(var m in D(cd.FullName).Methods.Where(x=>x.Name.Contains("<Build>"))) CopyMethod(cd,m.Name,m.Parameters.Count);
var cc=T("CdsHelper.Game.UI.Views.GameSystemMenu/<>c");
foreach(var m in D(cc.FullName).Methods.Where(x=>x.Name.Contains("<Build>"))) CopyMethod(cc,m.Name,m.Parameters.Count);

// Place new checkboxes into the existing instance ModDialog constructor *without replacing* it.
// This preserves all user-supplied, preexisting ModDialog options.
var modDialog=T("CdsHelper.Game.UI.Views.ModDialog");
var ctor=modDialog.Methods.Single(x=>x.IsConstructor&&!x.IsStatic&&x.Parameters.Count==1);
var il=ctor.Body.GetILProcessor();
var stackType=baseMod.ImportReference(typeof(object)); // The actual StackPanel getter is reused from the existing instructions.
var childs=ctor.Body.Instructions.Select(x=>x.Operand).OfType<MethodReference>().First(x=>x.FullName.Contains("System.Windows.Controls.Panel::get_Children()"));
var add=ctor.Body.Instructions.Select(x=>x.Operand).OfType<MethodReference>().First(x=>x.FullName.Contains("System.Windows.Controls.UIElementCollection::Add("));
var toggle=modDialog.Methods.Single(x=>x.Name=="Toggle"&&x.Parameters.Count==5);
var actionCtor=ctor.Body.Instructions.Select(x=>x.Operand).OfType<MethodReference>().First(x=>x.FullName.Contains("System.Action"+"`1<System.Boolean>::.ctor"));
int SaveSlotLocal(){
 var all=ctor.Body.Instructions; var marker=all.Single(i=>i.Operand is MethodReference m&&m.FullName.Contains("GameSettings::get_SaveSlotPick()"));
 var idx=all.IndexOf(marker);
 for(int k=idx-1;k>=Math.Max(0,idx-12);k--){
   if(all[k].Operand is MethodReference m&&m.FullName.Contains("Panel::get_Children()")){
      var prev=all[k-1];
      if(prev.OpCode==OpCodes.Ldloc_S||prev.OpCode==OpCodes.Ldloc||prev.OpCode==OpCodes.Ldloc_0||prev.OpCode==OpCodes.Ldloc_1||prev.OpCode==OpCodes.Ldloc_2||prev.OpCode==OpCodes.Ldloc_3){
       if(prev.Operand is VariableDefinition v)return ctor.Body.Variables.IndexOf(v);
       if(prev.OpCode==OpCodes.Ldloc_0)return 0;if(prev.OpCode==OpCodes.Ldloc_1)return 1;if(prev.OpCode==OpCodes.Ldloc_2)return 2;if(prev.OpCode==OpCodes.Ldloc_3)return 3;
      }
   }
 }
 throw new Exception("Cannot infer save StackPanel local");
}
int ConvenienceLocal(){
 var all=ctor.Body.Instructions; var marker=all.Single(i=>i.Operand is MethodReference m&&m.FullName.Contains("GameSettings::get_PlaceShipByCtrlClick()"));
 var idx=all.IndexOf(marker);
 for(int k=idx-1;k>=Math.Max(0,idx-12);k--){
   if(all[k].Operand is MethodReference m&&m.FullName.Contains("Panel::get_Children()")){
      var prev=all[k-1];
      if(prev.Operand is VariableDefinition v)return ctor.Body.Variables.IndexOf(v);
      if(prev.OpCode==OpCodes.Ldloc_0)return 0;if(prev.OpCode==OpCodes.Ldloc_1)return 1;if(prev.OpCode==OpCodes.Ldloc_2)return 2;if(prev.OpCode==OpCodes.Ldloc_3)return 3;
   }
 }
 throw new Exception("Cannot infer convenience StackPanel local");
}
int saveLocal=SaveSlotLocal(),convenienceLocal=ConvenienceLocal();
Console.WriteLine("MOD locals Save="+saveLocal+" Convenience="+convenienceLocal);
if(saveLocal==convenienceLocal)throw new Exception("Save and Convenience locals same");
var ret=ctor.Body.Instructions.Last(x=>x.OpCode==OpCodes.Ret);
void InjectCheck(int local,string key,string label,string tip){
 var v=ctor.Body.Variables[local];
 var prop=Method(settings,"get_"+key,0); var setter=Method(settings,"set_"+key,1);
 // StackPanel.Children.Add(this.Toggle(label, GameSettings.prop, new Action<bool>(GameSettings.set_prop), tip, null))
 var ins=new Instruction[]{
   Instruction.Create(OpCodes.Ldloc,v),
   Instruction.Create(OpCodes.Callvirt,childs),
   Instruction.Create(OpCodes.Ldarg_0),
   Instruction.Create(OpCodes.Ldstr,label),
   Instruction.Create(OpCodes.Call,prop),
   Instruction.Create(OpCodes.Ldnull),
   Instruction.Create(OpCodes.Ldftn,setter),
   Instruction.Create(OpCodes.Newobj,actionCtor),
   Instruction.Create(OpCodes.Ldstr,tip),
   Instruction.Create(OpCodes.Ldnull),
   Instruction.Create(OpCodes.Call,toggle),
   Instruction.Create(OpCodes.Callvirt,add)
 };
 foreach(var x in ins) il.InsertBefore(ret,x);
 Console.WriteLine("INSERTED UI "+label);
}
InjectCheck(saveLocal,names[0],"외국 여관 일반 저장","외국 도시의 여관에서도 일반 저장과 중단을 모두 선택합니다. 기본값 OFF.");
InjectCheck(saveLocal,names[3],"일반 저장 뒤 중단 저장 보존","일반 저장 뒤에도 중단 저장을 삭제하지 않습니다. 기본값 OFF.");
InjectCheck(convenienceLocal,names[1],"숙박 일수 직접 지정","여관 숙박을 1~127일 중 선택します。料金は一か月分で固定。基本OFF.");
InjectCheck(convenienceLocal,names[2],"마우스 옆 단추 ESC","마우스의 네 번째·다섯 번째 단추를 ESC로 사용합니다. 기본OFF.");

// The donor was built without upstream's assembly version. Never introduce its 1.0.0.0 reference!
foreach(var aref in baseMod.AssemblyReferences.Where(a=>a.Name=="CdsHelper.Support"))
  aref.Version=baseMod.Assembly.Name.Version;
Console.WriteLine("Final internal version="+baseMod.Assembly.Name.Version);
baseMod.Write(args[2],new WriterParameters{WriteSymbols=false});
Console.WriteLine("SUCCESS write "+args[2]);
