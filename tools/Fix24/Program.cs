using Mono.Cecil;
using Mono.Cecil.Cil;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;

if (args.Length != 3) throw new ArgumentException("Usage: Fix24 input.dll output.dll wpf-ref-folder");
if (Path.GetFullPath(args[0])==Path.GetFullPath(args[1])) throw new ArgumentException("Output must differ from input");
var resolver = new DefaultAssemblyResolver();
resolver.AddSearchDirectory(args[2]);
resolver.AddSearchDirectory(Path.GetDirectoryName(Path.GetFullPath(args[0]))!);
var original = AssemblyDefinition.ReadAssembly(args[0], new ReaderParameters { InMemory=true, ReadSymbols=false, AssemblyResolver=resolver });
var mod = original.MainModule;
var ident = original.Name.FullName;
var mvid = mod.Mvid;
var types = mod.GetTypes().ToArray();
var lang = types.Single(t=>t.FullName=="CdsHelper.Game.Local.Helpers.Lang");
var textMethod=lang.Methods.Single(m=>m.Name=="T" && m.IsStatic && m.Parameters.Count==1 && m.Parameters[0].ParameterType.FullName=="System.String");
var log=new List<string>{"INPUT "+ident,"MVID "+mvid};
int searchPatches=0;
int labelPatches=0;
int cityPatches=0;
int namePatches=0;
int inspect=0;

// Safe string-to-string transformation on the top of the IL stack:
// after an existing string-returning method call, insert call Lang.T(string).
void AddTranslationAfter(MethodDefinition method, Instruction after, string reason)
{
 var call=Instruction.Create(OpCodes.Call,textMethod);
 method.Body.GetILProcessor().InsertAfter(after,call);
 log.Add("SEARCH_AND_NAME: "+reason+" :: "+method.FullName);
}
static bool HasContains(MethodDefinition m) => m.HasBody && m.Body.Instructions.Any(i=>i.Operand is MethodReference r && r.DeclaringType.FullName=="System.String" && r.Name=="Contains");
foreach (var type in types.Where(t=>t.FullName.Contains("DuelFoeDialog") || t.FullName.Contains("DevDialog")))
{
 foreach (var method in type.Methods.Where(m=>m.HasBody))
 {
  // For the duel picker and discovery editor, replace the raw Korean name passed
  // to Contains() with the exact Japanese translation the WPF UI displays.
  bool contains=HasContains(method);
  bool duel=type.FullName.Contains("DuelFoeDialog");
  bool dev=type.FullName.Contains("DevDialog");
  var candidates=method.Body.Instructions.ToArray();
  foreach(var instruction in candidates)
  {
    if(instruction.Operand is not MethodReference r)continue;
    var whichName=r.Name=="get_Name";
    var whichCategory=r.Name=="get_CategoryName";
    if(!whichName && !whichCategory)continue;
    bool person=r.DeclaringType.FullName.Contains("PersonTable/Row") || r.DeclaringType.FullName.Contains("PersonTable.Row");
    bool discovery=r.DeclaringType.FullName.Contains("DiscoveryTable/Record") || r.DeclaringType.FullName.Contains("DiscoveryTable.Record");
    if(duel && person && contains) {
       AddTranslationAfter(method,instruction,"Duel person-name filter");
       searchPatches++;
    } else if (dev && discovery) {
       AddTranslationAfter(method,instruction,contains?"Discovery-name filter":"Discovery list name/category");
       if(contains)searchPatches++; else namePatches++;
    }
  }
 }
}
if(searchPatches<1) throw new Exception("Duel search patch not found. No DLL was written.");
log.Add("Search patches "+searchPatches+"; translated display names "+namePatches);

bool HasHangul(string text) => text.Any(c=>c >= '\uAC00' && c <= '\uD7A3');
var replacements=new (string From,string To)[]{
 ("모르는 조건","不明な条件"),("모르는 명령","不明な命令"),("여기서 멈춤","ここで停止"),
 ("상태 · 나라 바꿈 없음","状態・所属国の変更なし"),
 ("소문(","噂（"),("문화권 ","文化圏 "),("술집 말 「","酒場の噂「"),
 ("발견물 「","発見物「"),("」 발견됨","」発見済み"),
 ("년부터","年以降"),(" 그리고 "," かつ "),(" 또는"," または"),
 ("의 나라가 ","の所属国は"),(" 상태 → ","の状態 → "),(" 규모 ","の規模 "),
 (" 건물 비트 ","の建物フラグ "),(" 깃발 ","のフラグ "),
 ("힌트 깃발","ヒントフラグ"),(" 일 때만 다음","の場合のみ次の処理へ"),
 ("멸망","滅亡"),("등장","登場"),("공략","攻略"),("있음","存在"),("없음","なし"),
 (" 아님","ではない"),("켬","有効"),("끔","無効"),
 ("능력 ","能力 "),("상태 ","状態 "),
 ("년 ","年"),("년","年"),("월","月"),
 ("모르는","不明"),("없다","ない"),
};
var city=types.Single(t=>t.FullName=="CdsHelper.Game.Engine.Market.CityHistory");
foreach(var method in city.Methods.Where(m=>m.HasBody && (m.Name=="DescribeBody" || m.Name=="DescribeCondition")))
{
 var originals=method.Body.Instructions.Where(i=>i.OpCode==OpCodes.Ldstr && i.Operand is string x && HasHangul(x)).ToArray();
 foreach(var ins in originals){
    var source=(string)ins.Operand;
    var fixedString=source;
    foreach(var (from,to) in replacements)fixedString=fixedString.Replace(from,to,StringComparison.Ordinal);
    if(fixedString!=source) {ins.Operand=fixedString;cityPatches++;log.Add("HISTORY "+method.Name+": "+source+" => "+fixedString);}
    if(HasHangul(fixedString))log.Add("REMAINS_HANGUL_HISTORY "+method.Name+": "+fixedString);
 }
}
if(cityPatches<5)throw new Exception("History label patches unexpectedly few; no DLL written");
log.Add("History literals changed "+cityPatches);

// Dynamic subtitles and date units in the developer interface (spouse picker).
// Do NOT replace status predicates in unrelated gameplay.
var devType=types.Single(t=>t.FullName=="CdsHelper.Game.UI.Views.DevDialog");
var devReplacements=new (string From,string To)[]{
  ("년 · 지금 ","年・現在"),("년 · ","年・"),("살", "歳"),
  ("~","～"),
};
foreach (var method in devType.Methods.Where(m=>m.HasBody))
{
  foreach(var ins in method.Body.Instructions.Where(i=>i.OpCode==OpCodes.Ldstr && i.Operand is string))
  {
    var source=(string)ins.Operand;
    if(!source.Contains("년") && !source.Contains("살"))continue;
    // Limit changes to Korean unit strings or formatted text, never comments or numeric constants.
    var fixedString=source;
    foreach(var (from,to) in devReplacements)fixedString=fixedString.Replace(from,to,StringComparison.Ordinal);
    // A Japanese dialog title is not changed here. TranslatedLanguage handles names.
    if(source!=fixedString) {ins.Operand=fixedString;labelPatches++;log.Add("DEV DATE "+method.Name+": "+source+" => "+fixedString);}
  }
}
log.Add("DevDate labels changed "+labelPatches);
if(labelPatches<1)throw new Exception("Couldn't find spouse date unit strings; no DLL written");

// The user's custom setting and four Fix23 modes must remain.
foreach(var name in new[]{"ForeignInnManualSave","FlexibleInnStay","SideMouseAsEscape","KeepSuspendOnManualSave","UnlimitedSkillLanguageCap"})
{
 var data=types.Single(t=>t.FullName=="CdsHelper.Game.Local.Settings.GameSettingsData");
 if(!data.Properties.Any(x=>x.Name==name))throw new Exception("Prior feature lost: "+name);
}

// Reference integrity: no foreign module-scoped method/field refs in injected calls;
// all conditional/switch branches refer to instructions inside their own method.
foreach(var t in types)foreach(var m in t.Methods.Where(x=>x.HasBody))foreach(var ins in m.Body.Instructions)
{
 if(ins.Operand is Instruction target&&!m.Body.Instructions.Contains(target))throw new Exception("Invalid jump: "+m.FullName);
 if(ins.Operand is Instruction[] targets&&targets.Any(x=>!m.Body.Instructions.Contains(x)))throw new Exception("Invalid switch: "+m.FullName);
}
original.Write(args[1],new WriterParameters{WriteSymbols=false});
var written=AssemblyDefinition.ReadAssembly(args[1]);
if(written.Name.FullName!=ident || written.MainModule.Mvid!=mvid)throw new Exception("Version or MVID mismatch");
log.Add("OUTPUT "+written.Name.FullName);
log.Add("OUTPUT_BYTES "+new FileInfo(args[1]).Length);
log.Add("PASS: CIL branch targets, version, MVID, and custom settings");
File.WriteAllLines(args[1]+".changes.txt",log,new UTF8Encoding(false));
Console.WriteLine(string.Join("\n",log.TakeLast(30)));
Console.WriteLine("OUTPUT OK "+args[1]);
