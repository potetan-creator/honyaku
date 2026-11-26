using Mono.Cecil;
using Mono.Cecil.Cil;
using System;
using System.IO;
using System.Linq;
using System.Text;
using System.Collections.Generic;

if(args.Length!=3)throw new Exception("Usage: input-fix26.dll output.dll ref-dir");
var input=Path.GetFullPath(args[0]);var output=Path.GetFullPath(args[1]);
if(input==output)throw new Exception("Do not replace your original DLL.");
var resolver=new DefaultAssemblyResolver();
resolver.AddSearchDirectory(Path.GetDirectoryName(input)!);
resolver.AddSearchDirectory(args[2]);
var a=AssemblyDefinition.ReadAssembly(input,new ReaderParameters{InMemory=true,ReadSymbols=false,AssemblyResolver=resolver});
var m=a.MainModule;var identity=a.Name.FullName;var id=m.Mvid;
var hist=m.GetTypes().Single(t=>t.FullName=="CdsHelper.Game.Engine.Market.CityHistory");
var lang=m.GetTypes().Single(t=>t.FullName=="CdsHelper.Game.Local.Helpers.Lang").Methods.Single(x=>x.Name=="T"&&x.IsStatic&&x.Parameters.Count==1&&x.ReturnType.FullName=="System.String");
var call=m.ImportReference(lang);
var counts=new Dictionary<string,int>();
var report=new List<string>();
void Add(MethodDefinition method,Instruction after,string reason){
 method.Body.GetILProcessor().InsertAfter(after,Instruction.Create(OpCodes.Call,call));
 counts[reason]=counts.GetValueOrDefault(reason)+1;
 report.Add(method.FullName+": "+reason);
}
foreach(var name in new[]{"DescribeCondition","DescribeBody"}){
 var method=hist.Methods.Single(x=>x.Name==name);
 foreach(var i in method.Body.Instructions.ToArray()){
  if(i.Operand is MethodReference mr){
   if(mr.Name=="Invoke"&&mr.DeclaringType.FullName.StartsWith("System.Func")){
      Add(method,i,"Translate city/nation/discovery names");continue;
   }
   if(name=="DescribeBody"&&mr.ReturnType.FullName=="System.String"&&
        (mr.Name=="get_Body" || mr.Name.Contains("<DescribeBody>g__State") ||
         (mr.Name=="NameOf"&&mr.DeclaringType.FullName.Contains("CityCultureEdits")))){
      Add(method,i,"Translate history speech, state and culture");continue;
   }
  }
  if(name=="DescribeBody"&&i.OpCode==OpCodes.Ldfld&&i.Operand is FieldReference fr&&fr.Name=="Body"&&fr.FieldType.FullName=="System.String")
     Add(method,i,"Translate history speech field");
 }
}
foreach(var method in hist.Methods.Where(x=>x.Name.Contains("<DescribeBody>g__State")&&x.HasBody)){
 foreach(var i in method.Body.Instructions.Where(i=>i.OpCode==OpCodes.Ldelem_Ref).ToArray()){
  Add(method,i,"Translate state-name array");
 }
}
Console.WriteLine("NAMES "+counts.GetValueOrDefault("Translate city/nation/discovery names"));
Console.WriteLine("SPEECH "+counts.GetValueOrDefault("Translate history speech, state and culture"));
Console.WriteLine("SPEECH_FIELD "+counts.GetValueOrDefault("Translate history speech field"));
Console.WriteLine("STATE_ARRAY "+counts.GetValueOrDefault("Translate state-name array"));
if(counts.GetValueOrDefault("Translate city/nation/discovery names")<3)throw new Exception("Name call count insufficient");
if(counts.GetValueOrDefault("Translate history speech, state and culture")+counts.GetValueOrDefault("Translate history speech field")<2)throw new Exception("History speech call sites insufficient");

// Also fix the Korean summary tokens inside the History tab UI. Never alter raw status comparisons.
var dev=m.GetTypes().Single(t=>t.FullName=="CdsHelper.Game.UI.Views.DevDialog");
int counters=0;
foreach(var type in m.GetTypes().Where(t=>t.FullName==dev.FullName||t.FullName.StartsWith(dev.FullName+"/"))){
 foreach(var method in type.Methods.Where(me=>me.HasBody&&(me.Name=="HistoryPage"||me.Name.Contains("<HistoryPage>")))){
  foreach(var i in method.Body.Instructions.Where(i=>i.OpCode==OpCodes.Ldstr&&i.Operand is string).ToArray()){
   string before=(string)i.Operand;
   if(before=="돎"||before=="지남")continue;
   var after=before.Replace("(돎 ","(実行済 ").Replace("· 지남 ","· 期限切れ ");
   if(after==before)continue;
   i.Operand=after;counters++;report.Add("History count: "+before+" -> "+after);
  }
 }
}
Console.WriteLine("HEADER "+counters);
if(counters==0)throw new Exception("Missing HistoryPage count caption locations");
foreach(var x in new[]{"ForeignInnManualSave","FlexibleInnStay","SideMouseAsEscape","KeepSuspendOnManualSave","UnlimitedSkillLanguageCap"}){
 var data=m.GetTypes().Single(t=>t.FullName=="CdsHelper.Game.Local.Settings.GameSettingsData");
 if(!data.Properties.Any(p=>p.Name==x))throw new Exception("Custom feature missing: "+x);
}
if(!m.GetTypes().Single(t=>t.FullName=="CdsHelper.Game.UI.Views.PlayerInfoDialog").Methods.Any(x=>x.Name=="DevMarksForDisplay"))
 throw new Exception("Fix26 display-only history filter missing");
foreach(var t in m.GetTypes())foreach(var method in t.Methods.Where(x=>x.HasBody))foreach(var i in method.Body.Instructions){
 if(i.Operand is Instruction j&&!method.Body.Instructions.Contains(j))throw new Exception("Broken branch "+method.FullName);
 if(i.Operand is Instruction[] js&&js.Any(j=>!method.Body.Instructions.Contains(j)))throw new Exception("Broken switch "+method.FullName);
}
a.Write(output,new WriterParameters{WriteSymbols=false});
var check=AssemblyDefinition.ReadAssembly(output);
if(check.Name.FullName!=identity||check.MainModule.Mvid!=id)throw new Exception("Identity/MVID changed");
foreach(var name in new[]{"DescribeBody","DescribeCondition"}){
 var result=check.MainModule.GetTypes().Single(t=>t.FullName==hist.FullName).Methods.Single(x=>x.Name==name);
 Console.WriteLine(name+" Lang.T calls: "+result.Body.Instructions.Count(i=>i.Operand is MethodReference mr&&mr.Name=="T"&&mr.DeclaringType.FullName.Contains(".Lang")));
}
var lines=new[]{"Fix27, based on Fix26; change only historical display translation.","Internal save tampering detection and four mode settings preserved.","Assembly: "+identity,"MVID: "+id,"Static IL verification: PASS"}.Concat(counts.Select(x=>x.Key+": "+x.Value)).Concat(new[]{"History header captions: "+counters}).Concat(report);
File.WriteAllLines(output+".patchlog.txt",lines,new UTF8Encoding(false));
Console.WriteLine("WROTE "+output+" ("+new FileInfo(output).Length+")");
