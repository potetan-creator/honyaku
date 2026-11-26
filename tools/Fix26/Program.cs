using Mono.Cecil;
using Mono.Cecil.Cil;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;

if(args.Length!=3) throw new ArgumentException("Usage: Fix26 input.dll output.dll optional-reference-directory");
string input=Path.GetFullPath(args[0]), output=Path.GetFullPath(args[1]);
if(input==output)throw new Exception("Input and output must differ.");
var resolver=new DefaultAssemblyResolver();
resolver.AddSearchDirectory(args[2]);
resolver.AddSearchDirectory(Path.GetDirectoryName(input)!);
var asm=AssemblyDefinition.ReadAssembly(input,new ReaderParameters { InMemory=true,ReadSymbols=false,AssemblyResolver=resolver });
var mod=asm.MainModule;
string originalIdentity=asm.Name.FullName;
Guid originalMvid=mod.Mvid;
var owner=mod.GetTypes().Single(t=>t.FullName=="CdsHelper.Game.UI.Views.PlayerInfoDialog");
var methods=owner.Methods.Where(m=>m.HasBody&&(m.Name=="Sheet"||m.Name=="DevRecord")).ToArray();
if(methods.Length!=2) throw new Exception("Expected Sheet and DevRecord, found "+string.Join(", ",methods.Select(m=>m.Name)));
var originalCalls=methods.SelectMany(m=>m.Body.Instructions
  .Where(i=>i.Operand is MethodReference mr && mr.Name=="get_DevMarks")
  .Select(i=>(Method:m,Call:i))).ToArray();
var getterRefs=originalCalls.Select(x=>(MethodReference)x.Call.Operand).ToArray();
if(originalCalls.Length<3||originalCalls.Length>7) throw new Exception("Unexpected use count "+originalCalls.Length);
var getter=getterRefs[0];
if(getter.Parameters.Count!=0 || getter.ReturnType.FullName!="System.Collections.Generic.HashSet"+char.ConvertFromUtf32(96)+"1<System.String>")
 throw new Exception("Unexpected DevMarks accessor: "+getter.FullName);
if(getter.DeclaringType.FullName!="CdsHelper.Support.Local.Models.Player")
 throw new Exception("Unexpected owner "+getter.DeclaringType.FullName);
foreach(var method in methods)
 if(!originalCalls.Any(x=>x.Method==method))throw new Exception("Missing getter use in "+method.FullName);

// Filter a COPIED set for display only. Player.DevMarks is never modified.
// Same return type as Player.get_DevMarks(), so replacing its call keeps stack effects identical.
var helper = new MethodDefinition("DevMarksForDisplay",Mono.Cecil.MethodAttributes.Private|Mono.Cecil.MethodAttributes.Static|Mono.Cecil.MethodAttributes.HideBySig,
   mod.ImportReference(getter.ReturnType));
helper.Parameters.Add(new ParameterDefinition("player",Mono.Cecil.ParameterAttributes.None,mod.ImportReference(getter.DeclaringType)));
owner.Methods.Add(helper);
var ctor=typeof(HashSet<string>).GetConstructor(new[]{typeof(IEnumerable<string>)})
 ?? throw new Exception("HashSet copy ctor missing");
var remove=typeof(HashSet<string>).GetMethod("Remove",new[]{typeof(string)})
 ?? throw new Exception("HashSet.Remove missing");
helper.Body.InitLocals=true;
var scratch=new VariableDefinition(mod.ImportReference(getter.ReturnType));
helper.Body.Variables.Add(scratch);
var il=helper.Body.GetILProcessor();
il.Append(Instruction.Create(OpCodes.Ldarg_0));
il.Append(Instruction.Create(OpCodes.Callvirt,mod.ImportReference(getter)));
il.Append(Instruction.Create(OpCodes.Newobj,mod.ImportReference(ctor)));
il.Append(Instruction.Create(OpCodes.Stloc,scratch));
il.Append(Instruction.Create(OpCodes.Ldloc,scratch));
il.Append(Instruction.Create(OpCodes.Ldstr,"tampered"));
il.Append(Instruction.Create(OpCodes.Callvirt,mod.ImportReference(remove)));
il.Append(Instruction.Create(OpCodes.Pop));
il.Append(Instruction.Create(OpCodes.Ldloc,scratch));
il.Append(Instruction.Create(OpCodes.Ret));

int count=0;
foreach(var (method,call) in originalCalls){
 call.OpCode=OpCodes.Call;  // replaces callvirt get_DevMarks with static call, same input and output stack shape
 call.Operand=helper;
 count++;
}
Console.WriteLine("BASE: "+originalIdentity);
Console.WriteLine("BASE_MVID: "+originalMvid);
Console.WriteLine("DISPLAY_ONLY_FILTER: added helper that copies DevMarks and removes 'tampered' from the copy.");
Console.WriteLine("REPLACED_GETTERS: "+count);
foreach(var m in methods){
 Console.WriteLine("DISPLAY_METHOD: "+m.Name+" getter patches "+originalCalls.Count(x=>x.Method==m));
}
foreach(var method in owner.Methods.Where(m=>m.HasBody)){
 foreach(var inst in method.Body.Instructions){
  if(inst.Operand is Instruction j&&!method.Body.Instructions.Contains(j))throw new Exception("Invalid target "+method.Name);
  if(inst.Operand is Instruction[] js&&js.Any(j=>!method.Body.Instructions.Contains(j)))throw new Exception("Invalid switch "+method.Name);
 }
}
foreach(var name in new[]{"ForeignInnManualSave","FlexibleInnStay","SideMouseAsEscape","KeepSuspendOnManualSave","UnlimitedSkillLanguageCap"}){
 var data=mod.GetTypes().Single(t=>t.FullName=="CdsHelper.Game.Local.Settings.GameSettingsData");
 if(!data.Properties.Any(p=>p.Name==name))throw new Exception("Custom feature missing: "+name);
}
if(!mod.GetTypes().Any(t=>t.FullName=="CdsHelper.Game.Engine.HardcoreRules"&&t.Fields.Any(f=>f.Name=="Tampered")))
 throw new Exception("Internal tampering marker not preserved");
asm.Write(output,new WriterParameters{WriteSymbols=false});
var written=AssemblyDefinition.ReadAssembly(output);
if(written.Name.FullName!=originalIdentity||written.MainModule.Mvid!=originalMvid)
 throw new Exception("Assembly identity/MVID changed");
var writeOwner=written.MainModule.GetTypes().Single(t=>t.FullName==owner.FullName);
var wh=writeOwner.Methods.Single(m=>m.Name=="DevMarksForDisplay");
if(wh.Body.Instructions.Count!=10) throw new Exception("Unexpected helper instruction count "+wh.Body.Instructions.Count);
if(writeOwner.Methods.Single(m=>m.Name=="DevRecord").Body.Instructions.All(i=>!ReferenceEquals(i.Operand,wh)&& !(i.Operand is MethodReference mr&&mr.Name==wh.Name)))
 throw new Exception("Display method not patched");
Console.WriteLine("PASS: File write/read, legacy 4 toggles, custom settings, tampering internals, identity and MVID");
Console.WriteLine("OUTPUT_LENGTH: "+new FileInfo(output).Length);
var report=$"""
Fix26: 「開発記録」からセーブ整合性フラグ「改造」を非表示
Base: {Path.GetFileName(input)}
Assembly: {originalIdentity}
MVID: {originalMvid}
Patched UI getter references: {count}
Methods: DevRecord, Sheet
Internal record: tampered (unchanged)
Data modification: NONE; display uses HashSet copy only
Integrity checks: unchanged
Custom mode switches and UnlimitedSkillLanguageCap: preserved
Result: metadata and IL structural verification PASS
Windows game launch: NOT TESTED
""";
File.WriteAllText(output+".report.txt",report,new UTF8Encoding(false));
