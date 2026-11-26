using Mono.Cecil;
using Mono.Cecil.Cil;
using System;
using System.Linq;

if (args.Length < 2) { Console.WriteLine("Usage: inspect assembly.dll [typeFilter]"); return; }
var mod=ModuleDefinition.ReadModule(args[0], new ReaderParameters{ReadSymbols=false});
Console.WriteLine($"ASSEMBLY={mod.Assembly.FullName}; MVID={mod.Mvid}");
var filter=args[1];
foreach (var type in mod.Types.SelectMany(Descendants).Where(t=>t.FullName.Contains(filter,StringComparison.OrdinalIgnoreCase))) {
 Console.WriteLine("TYPE: "+type.FullName+" FIELDS:"+type.Fields.Count+" METHODS:"+type.Methods.Count);
 foreach(var f in type.Fields.Where(f=>filter=="all"|| f.Name.Contains("Stay") || f.Name.Contains("Save") || f.Name.Contains("Mouse") || f.Name.Contains("Foreign") || f.Name.Contains("Flexible") || f.Name.Contains("Suspend"))) Console.WriteLine("FIELD "+f.FullName);
 foreach(var m in type.Methods){
   if(filter!="all" && !(m.Name.Contains("Stay")||m.Name.Contains("Save")||m.Name.Contains("Mouse")||m.Name.Contains("Action")||m.Name.Contains("Open")||m.Name.Contains("Row")||m.Name.Contains("Suspend")||m.Name.Contains("Foreign")||m.Name.Contains("Flexible")||m.Name.Contains("ctor")||m.Name.Contains("Mod"))) continue;
   Console.WriteLine("METHOD "+m.FullName+" "+(m.HasBody?"IL:"+m.Body.Instructions.Count:"no body"));
   if(args.Length>2&&args[2]=="il"&&m.HasBody){
     foreach(var i in m.Body.Instructions){
       string op=i.Operand switch { MethodReference mm=>mm.FullName, FieldReference ff=>ff.FullName, TypeReference tt=>tt.FullName, Instruction ins=> "IL_"+ins.Offset.ToString("X4"), Instruction[] branches=>string.Join(",",branches.Select(x=>"IL_"+x.Offset.ToString("X4"))), _=>i.Operand?.ToString()??""};
       Console.WriteLine($"  IL_{i.Offset:X4} {i.OpCode,-12} {op}");
     }
   }
 }
}
static System.Collections.Generic.IEnumerable<TypeDefinition> Descendants(TypeDefinition t) { yield return t; foreach(var n in t.NestedTypes) foreach(var x in Descendants(n)) yield return x; }
