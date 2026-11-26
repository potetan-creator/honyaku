using System;
using System.Collections;
using System.Reflection;
using System.Text;

public static class BattlePreviewDonor
{
    public static string Build(object battle, int selectedMode, int selectedTarget)
    {
        Type type = battle.GetType();
        int terrain = Convert.ToInt32(type.GetProperty("Terrain")!.GetValue(battle));
        int culture = Convert.ToInt32(type.GetProperty("Culture")!.GetValue(battle));
        int myMen = Convert.ToInt32(type.GetProperty("MyFirst")!.GetValue(battle));
        int enemyMen = Convert.ToInt32(type.GetProperty("FoeFirst")!.GetValue(battle));

        string mode = selectedMode == 2
            ? "都市攻撃（都市データから敵軍を自動生成）"
            : selectedMode == 5
                ? "自由模擬戦（設定どおりに編成）"
                : "野戦（相手から敵兵数・文化圏を自動設定）";
        string[] fields = { "都市", "草原", "森林", "荒地" };
        var sb = new StringBuilder();
        sb.Append("【戦闘開始時に適用される設定】\n");
        sb.Append("戦闘形式：").Append(mode).Append('\n');
        sb.Append("戦場：").Append(terrain >= 0 && terrain < fields.Length ? fields[terrain] : terrain.ToString()).Append('\n');
        sb.Append("敵の文化圏：").Append(culture).Append("（番号）\n");
        sb.Append("相手：").Append(selectedMode == 5 ? "指定なし（自由編成）" :
            selectedTarget < 0 ? "未指定" : "対象番号 " + selectedTarget).Append('\n');
        sb.Append("総兵数：味方 ").Append(myMen).Append(" 人／敵軍 ").Append(enemyMen).Append(" 人\n\n");
        sb.Append("【実際の部隊編成】\n");
        var units = (IList)type.GetProperty("Units")!.GetValue(battle)!;
        var langType = type.Assembly.GetType("CdsHelper.Game.Local.Helpers.Lang");
        MethodInfo? translate = langType?.GetMethod("T", BindingFlags.Public | BindingFlags.Static,
            null, new[] { typeof(string) }, null);
        for (int i = 0; i < units.Count; i++)
        {
            object unit = units[i]!;
            Type unitType = unit.GetType();
            int kind = Convert.ToInt32(unitType.GetProperty("Kind")!.GetValue(unit));
            int men = Convert.ToInt32(unitType.GetProperty("Men")!.GetValue(unit));
            if (kind < 0 || men <= 0) continue;
            string name = (string)unitType.GetProperty("Name")!.GetValue(unit)!;
            if (translate != null) name = translate.Invoke(null, new object[] { name }) as string ?? name;
            sb.Append(i < 6 ? "味方 " : "敵軍 ").Append(i % 6 + 1).Append("：")
              .Append(name).Append(' ').Append(men).Append(" 人\n");
        }
        sb.Append("\nこの編成で開始しますか？\n「いいえ」を選ぶと設定画面に戻せます。");
        return sb.ToString();
    }
}
