using Mono.Cecil;
using Mono.Cecil.Cil;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;

if (args.Length != 3) throw new ArgumentException("Usage: Fix23 input.dll output.dll wpf-refs-dir");
var input = args[0];
var output = args[1];
var references = args[2];
if (Path.GetFullPath(input) == Path.GetFullPath(output)) throw new Exception("Do not overwrite the original.");
var resolver = new DefaultAssemblyResolver();
resolver.AddSearchDirectory(references);
resolver.AddSearchDirectory(Path.GetDirectoryName(Path.GetFullPath(input))!);
var a = AssemblyDefinition.ReadAssembly(input, new ReaderParameters
{
    InMemory = true, ReadSymbols = false, AssemblyResolver = resolver,
});
var module = a.MainModule;
var originalIdentity = a.Name.FullName;
var sourceMvid = module.Mvid;
var type = module.GetTypes().Single(t => t.FullName == "CdsHelper.Game.UI.Views.ModDialog");
var ctor = type.Methods.Single(m => m.IsConstructor && !m.IsStatic && m.Parameters.Count == 1);
Console.WriteLine("INPUT: " + originalIdentity);
Console.WriteLine("MVID: " + sourceMvid);
Console.WriteLine("Original .ctor instructions: " + ctor.Body.Instructions.Count);
var texts = new Dictionary<string,string>
{
    ["외국 여관 일반 저장"] = "外国の宿屋で通常セーブ",
    ["외국 도시의 여관에서도 일반 저장과 중단을 모두 선택합니다. 기본값 OFF."] =
        "外国都市の宿屋でも「セーブ」と「中断」を選択できます。OFFでは従来どおり「中断」のみです。",
    ["일반 저장 뒤 중단 저장 보존"] = "通常セーブ後も中断データを保持",
    ["일반 저장 뒤에도 중단 저장을 삭제하지 않습니다. 기본값 OFF."] =
        "通常セーブしても中断データを削除しません。中断データをロードしたときの削除処理は従来どおりです。",
    ["숙박 일수 직접 지정"] = "宿泊日数を指定",
    ["여관 숙박을 1~127일 중 선택します。料金は一か月分で固定。基本OFF."] =
        "宿屋で1～127日の宿泊日数を指定できます。料金は30日分のままです。OFFでは30日固定です。",
    ["마우스 옆 단추 ESC"] = "マウスサイドボタンでESC",
    ["마우스의 네 번째·다섯 번째 단추를 ESC로 사용합니다. 기본OFF."] =
        "マウスの第4・第5ボタンをESC（戻る・キャンセル）として使用します。OFFでは変更しません。",
};
var changes = new List<string>();
foreach (var pair in texts)
{
    var hits = ctor.Body.Instructions.Where(i => i.OpCode == OpCodes.Ldstr && (string?)i.Operand == pair.Key).ToArray();
    if (hits.Length != 1) throw new Exception($"Translation anchor missing/ambiguous: '{pair.Key}', matches {hits.Length}");
    hits[0].Operand = pair.Value;
    changes.Add($"UI JA: {pair.Key} -> {pair.Value}");
}
Console.WriteLine("Translated option strings: " + texts.Count);

// The ScrollViewer is already present in v1.2.46. Keep the window width unchanged
// and cap only the content viewport. Existing SizeToContent never gets a larger requested height.
var field = type.Fields.Single(f => f.Name == "_list");
var wpfAssembly = AssemblyDefinition.ReadAssembly(Path.Combine(references, "PresentationFramework.dll"));
var fe = wpfAssembly.MainModule.GetType("System.Windows.FrameworkElement") ??
    throw new Exception("System.Windows.FrameworkElement not found in WPF ref pack.");
var setter = fe.Methods.Single(m => m.Name == "set_MaxHeight" && m.Parameters.Count == 1 &&
    m.Parameters[0].ParameterType.FullName == "System.Double");
var importedSetter = module.ImportReference(setter);
const double contentMaxHeight = 460.0;
var il = ctor.Body.GetILProcessor();
var ret = ctor.Body.Instructions.LastOrDefault(i => i.OpCode == OpCodes.Ret)
    ?? throw new Exception("No ctor ret");
il.InsertBefore(ret, Instruction.Create(OpCodes.Ldarg_0));
il.InsertBefore(ret, Instruction.Create(OpCodes.Ldfld, field));
il.InsertBefore(ret, Instruction.Create(OpCodes.Ldc_R8, contentMaxHeight));
il.InsertBefore(ret, Instruction.Create(OpCodes.Callvirt, importedSetter));
changes.Add($"ScrollViewer viewport maximum height: {contentMaxHeight} WPF device-independent pixels");
Console.WriteLine("MaxHeight cap: " + contentMaxHeight);

// Enable the existing scrollbar both on initial construction and after exiting search.
// Do not touch the existing Auto setting used during search.
int scrollbarEdits = 0;
foreach (var method in type.Methods.Where(m => m.HasBody))
{
    var ins = method.Body.Instructions;
    foreach (var instruction in ins)
    {
        if (instruction.Operand is not MethodReference callee ||
            callee.Name != "set_VerticalScrollBarVisibility" ||
            callee.DeclaringType.FullName != "System.Windows.Controls.ScrollViewer") continue;
        var prev = instruction.Previous;
        if (prev is null) throw new Exception("Scrollbar setter without preceding instruction in " + method.Name);
        if (prev.OpCode == OpCodes.Ldc_I4_0)
        {
            prev.OpCode = OpCodes.Ldc_I4_1; prev.Operand = null;
            changes.Add("ScrollBarVisibility.Disabled -> Auto: " + method.Name);
            scrollbarEdits++;
        }
        else Console.WriteLine($"Existing scrollbar setter {method.Name}, predecessor={prev.OpCode}");
    }
}
if (scrollbarEdits < 2) throw new Exception($"Expected initial and reset scrollbar controls, got {scrollbarEdits}.");
Console.WriteLine("Scrollbar changed on " + scrollbarEdits + " code paths.");

// Confirm that all four toggles remain, including saved property definitions.
foreach (var prop in new []{ "ForeignInnManualSave", "FlexibleInnStay", "SideMouseAsEscape", "KeepSuspendOnManualSave" })
{
    foreach (var name in new []{"CdsHelper.Game.Local.Settings.GameSettings","CdsHelper.Game.Local.Settings.GameSettingsData"})
    {
        var t = module.GetTypes().Single(x => x.FullName == name);
        if (!t.Properties.Any(x => x.Name == prop)) throw new Exception("Toggle property missing " + name + ":" + prop);
    }
}
if (!module.GetTypes().Single(t => t.FullName == "CdsHelper.Game.Local.Settings.GameSettingsData").Properties
    .Any(x => x.Name == "UnlimitedSkillLanguageCap"))
    throw new Exception("User-provided DLL custom feature missing.");

// Structural branch/switch sanity check for every method.
foreach (var t in module.GetTypes())
foreach (var m in t.Methods.Where(m => m.HasBody))
foreach (var i in m.Body.Instructions)
{
    if (i.Operand is Instruction j && !m.Body.Instructions.Contains(j))
        throw new Exception("Invalid branch target in " + m.FullName);
    if (i.Operand is Instruction[] targets && targets.Any(j => !m.Body.Instructions.Contains(j)))
        throw new Exception("Invalid switch targets in " + m.FullName);
}
a.Write(output, new WriterParameters { WriteSymbols = false });
var outputAssembly = AssemblyDefinition.ReadAssembly(output);
if (outputAssembly.Name.FullName != originalIdentity)
    throw new Exception("Assembly identity changed unexpectedly");
if (outputAssembly.MainModule.Mvid != sourceMvid)
    throw new Exception("Module MVID changed unexpectedly");
Console.WriteLine("OUTPUT: " + outputAssembly.Name.FullName);
Console.WriteLine("OUTPUT BYTES: " + new FileInfo(output).Length);
Console.WriteLine("PASS: Japanese labels, saved toggles, scroll, branch targets, MVID and identity.");
File.WriteAllLines(output + ".changes.txt", changes, new UTF8Encoding(false));
