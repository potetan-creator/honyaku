using Mono.Cecil;
using Mono.Cecil.Cil;
using System;
using System.Linq;
using System.IO;
var m=ModuleDefinition.ReadModule(args[0]);
foreach(var t in m.GetTypes().Where(t=>t.FullName.Contains("LandSparDialog")||t.FullName.Contains("DuelFoeDialog")||t.FullName.Contains("LandBattlePickerDialog")||t.Name=="LandSparData")) {
 Console.WriteLine("TYPE "+t.FullName);
 if(t.Name=="LandSparData") {
   foreach(var prop in t.Properties)Console.WriteLine("PROP "+prop.Name+" "+prop.PropertyType.FullName);
 }
 foreach(var me in t.Methods.Where(x=>x.HasBody&&(x.Name=="Play"||x.Name=="get_Last"||x.Name=="set_Last"||x.Name=="Fill"||x.Name=="CanBeMine"||x.Name.Contains("<Fill>")||x.Name=="Decide"))) {
   Console.WriteLine("METHOD "+me.FullName);
   Console.WriteLine("LOCALS "+string.Join(",",me.Body.Variables.Select(x=>x.Index+":"+x.VariableType.FullName)));
   foreach(var i in me.Body.Instructions){
    string op=i.Operand switch {MethodReference r=>r.FullName,FieldReference r=>r.FullName,TypeReference r=>r.FullName,Instruction d=>"IL_"+d.Offset.ToString("X4"), Instruction[] ds=>string.Join(",",ds.Select(x=>"IL_"+x.Offset.ToString("X4"))),_=>i.Operand?.ToString()??""};
    Console.WriteLine($"  IL_{i.Offset:X4} {i.OpCode,-13} {op}");
   }
 }
}
