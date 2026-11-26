using System;
using System.Linq;
using Mono.Cecil;
using Mono.Cecil.Cil;

if(args.Length<3)throw new Exception("Usage: input.dll output.dll wpf-ref-directory");
var resolver=new DefaultAssemblyResolver();
resolver.AddSearchDirectory(args[2]);
resolver.AddSearchDirectory(System.IO.Path.GetDirectoryName(System.IO.Path.GetFullPath(args[0]))!);
var a=AssemblyDefinition.ReadAssembly(args[0],new ReaderParameters{InMemory=true,ReadSymbols=false,AssemblyResolver=resolver});
Console.WriteLine("Assembly "+a.Name.FullName+" MVID="+a.MainModule.Mvid);
var type=a.MainModule.GetTypes().Single(t=>t.FullName=="CdsHelper.Game.UI.Views.ModDialog");
var ctors=type.Methods.Where(m=>m.IsConstructor && !m.IsStatic).ToArray();
Console.WriteLine("ModDialog instance ctors: "+string.Join(", ", ctors.Select(c=>c.FullName)));
var ctor=ctors.Single(m=>m.Parameters.Count==1);
Console.WriteLine("Instructions prior: "+ctor.Body.Instructions.Count);
string[] labels={"외국 여관 일반 저장","일반 저장 뒤 중단 저장 보존","숙박 일수 직접 지정","마우스 옆 단추 ESC"};
int fixedCount=0;
foreach(var label in labels){
 var ins=ctor.Body.Instructions;
 var hits=ins.Where(i=>i.OpCode==OpCodes.Ldstr && (i.Operand as string)==label).ToArray();
 if(hits.Length!=1)throw new Exception("Expected exactly one option label "+label+" found "+hits.Length);
 int index=ins.IndexOf(hits[0]);
 var add=ins.Skip(index).Take(20).FirstOrDefault(i=>i.Operand is MethodReference m && m.FullName.Contains("System.Windows.Controls.UIElementCollection::Add("));
 if(add==null)throw new Exception("UIElementCollection.Add not found after "+label);
 var method=(MethodReference)add.Operand;
 Console.WriteLine("OPTION "+label+" / "+method.FullName+" / next "+add.Next?.OpCode);
 if(method.ReturnType.FullName!="System.Int32")throw new Exception("Expected int return from Add "+method);
 if(add.Next?.OpCode==OpCodes.Pop) {Console.WriteLine("ALREADY_POP");continue;}
 ctor.Body.GetILProcessor().InsertAfter(add,Instruction.Create(OpCodes.Pop));
 fixedCount++;
}
if(fixedCount!=4)throw new Exception("Expected to repair 4 UI add calls; got "+fixedCount);
foreach(var name in new[]{"ForeignInnManualSave","FlexibleInnStay","SideMouseAsEscape","KeepSuspendOnManualSave"}){
 var typeData=a.MainModule.GetTypes().Single(t=>t.FullName=="CdsHelper.Game.Local.Settings.GameSettingsData");
 var typeSettings=a.MainModule.GetTypes().Single(t=>t.FullName=="CdsHelper.Game.Local.Settings.GameSettings");
 if(!typeData.Properties.Any(x=>x.Name==name) || !typeSettings.Properties.Any(x=>x.Name==name))throw new Exception("Missing "+name);
}
if(!a.MainModule.GetTypes().Single(x=>x.FullName=="CdsHelper.Game.Local.Settings.GameSettingsData").Properties.Any(x=>x.Name=="UnlimitedSkillLanguageCap"))
 throw new Exception("Important custom setting disappeared");
foreach(var typeDef in a.MainModule.GetTypes()){
 foreach(var method in typeDef.Methods.Where(x=>x.HasBody)){
  foreach(var ins in method.Body.Instructions){
   if(ins.Operand is Instruction next && !method.Body.Instructions.Contains(next))throw new Exception("Invalid branch target in "+method.FullName);
   if(ins.Operand is Instruction[] many && many.Any(x=>!method.Body.Instructions.Contains(x)))throw new Exception("Invalid switch target in "+method.FullName);
  }
 }
}
Console.WriteLine("Check all IL branch targets: OK");
Console.WriteLine("FIXED_IL_COUNT: "+fixedCount);
var dest=args[1];
a.Write(dest,new WriterParameters{WriteSymbols=false});
var check=AssemblyDefinition.ReadAssembly(dest);
Console.WriteLine("WRITTEN_VERSION: "+check.Name.Version);
Console.WriteLine("WRITTEN_BYTES: "+new System.IO.FileInfo(dest).Length);
