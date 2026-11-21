local function entry(name, text, unlock)
    return {name = name, text = text, unlock = unlock}
end

local descriptions = {
    Back = {
        b_aij_fabled = entry("伝説のデッキ", {
            "{C:legendary,E:1}レジェンダリー{}ジョーカーが",
            "{C:attention}ショップ{}に出現することがある",
            "ジョーカースロット{C:attention}-1{}",
        }, {"{C:legendary,E:1}レジェンダリー{}ジョーカーをアンロックする"}),
        b_aij_branching = entry("分岐のデッキ", {
            "ブラインドをスキップするとき",
            "{C:attention}3{}つのタグから選べる",
        }, {"1回のランでブラインドを{C:attention}5{}回以上スキップする"}),
        b_aij_twofold = entry("二倍のデッキ", {
            "{C:attention}ボスブラインド{}の効果が{C:attention}2{}つになる",
            "ジョーカーの効果、ブラインドの報酬と",
            "必要スコア、ショップの枠が{C:attention}2倍{}になる",
            "通常の{C:attention}2倍{}の枚数でランを開始",
        }, {""}),
        b_aij_patchwork = entry("パッチワークデッキ", {
            "すべてのプレイングカードに",
            "{C:attention}ランダム{}なスートのパッチが付いて見える",
        }, {"{C:attention}スートパッチ{}付きのカードを同時に{C:attention}13{}枚以上持つ"}),
        b_aij_coupon = entry("クーポンデッキ", {
            "{C:attention}アンティ{}ごとにバウチャーが{C:attention}2{}枚並ぶ",
            "{C:red}特殊な{}バウチャーが出現することがある",
        }, {""}),
        b_aij_melded = entry("融合デッキ", {
            "各プレイングカードに{C:attention}2{}種類の強化を付けられる",
        }, {"{V:1}#2#{}以上の難易度で{C:attention}#1#{}種類のデッキをクリアする"}),
        b_aij_madcap = entry("奇想デッキ", {
            "{C:attention}スタンダードパック{}のカード候補が{C:attention}+2{}",
            "パック内の全カードに{C:attention}ランダムな強化{}が付く",
            "{C:red}特殊な{}強化が出現することがある",
        }, {""}),
    },
    Stake = {
        stake_aij_polychrome = entry("ポリクロームステーク", {
            "難易度を{C:dark_edition}カスタマイズ{}できる",
        }),
    },
    Enhanced = {
        m_aij_fervent = entry("熱烈カード", {"得点するとチップ{C:chips}+#2#{}"}),
        m_aij_dyscalcular = entry("数え違いカード", {
            "すべての{C:attention}数字札{}のランクとして扱う",
            "{C:inactive}（ポーカーの役を作るときは除く）",
        }),
        m_aij_charged = entry("帯電カード", {
            "このカードと{C:attention}一緒にプレイ{}したカード、または",
            "一緒に{C:attention}手札にある{}カードの",
            "{C:attention}強化{}の効果が{C:attention}+#1#%{}",
        }),
        m_aij_ice = entry("アイスカード", {
            "{C:attention}必ず{}得点し、プレイ時の選択枚数制限を{C:red}無視{}する",
            "{C:inactive}上限を超えた分のアイスカードは役に影響しない",
        }),
        m_aij_wood = entry("ウッドカード", {
            "手札にあるとチップ{C:chips}+#3#{}",
            "手札にある他の{C:attention}ウッドカード{}1枚につき",
            "さらにチップ{C:chips}+#2#{}",
            "{C:inactive}（現在のチップ {C:chips}+#1#{C:inactive}）",
        }),
        m_aij_simulated = entry("仮想カード", {
            {"各ラウンドの{C:attention}最初{}のプレイ時に", "このカードは手札に{C:attention}戻る{}"},
            {"{C:attention}仮想カードだけ{}を捨てた場合は", "{C:red}ディスカード{}回数を消費しない"},
        }),
        m_aij_canvas = entry("キャンバスカード", {
            "{C:attention}右隣{}のカードのランクとスートを{C:attention}コピー{}する",
        }),
        m_aij_scorched = entry("焦げカード", {
            "ディスカードすると{C:green}#2#分の#1#{}の確率で",
            "捨てた{C:attention}ポーカーハンド{}が{C:attention}#3#{}レベル上がる",
        }),
        m_aij_memphis = entry("メンフィスカード", {
            "このランでスキップした{C:attention}ブラインド{}1回につき",
            "倍率{X:mult,C:white}X#1#{}",
            "{C:inactive}（現在の倍率 {X:mult,C:white}X#2#{C:inactive}）",
        }),
        m_aij_lunar = entry("月光カード", {
            "このカードの{C:chips}チップ{}は得点に加わらず",
            "{C:attention}ポーカーハンド{}のチップに永続的に加わる",
        }),
        m_aij_cloud = entry("雲カード", {
            "シャッフルすると{C:attention}必ず{}",
            "デッキの{C:attention}上半分{}に入る",
        }),
    },
    Voucher = {
        v_aij_fairy_dust = entry("妖精の粉", {
            "{C:dark_edition}グリマー{}、{C:dark_edition}オーレート{}、{C:dark_edition}ステラー{}の",
            "カードの出現率が{C:attention}#1#倍{}",
        }),
        v_aij_live_pixie = entry("生きたピクシー", {
            "{C:dark_edition}グリマー{}、{C:dark_edition}オーレート{}、{C:dark_edition}ステラー{}の",
            "カードの出現率が{C:attention}#1#倍{}",
        }),
        v_aij_gold_medal = entry("金メダル", {
            "{C:money}ゴールドタグ{}の出現率が{C:attention}#1#倍{}",
        }),
        v_aij_trophy = entry("トロフィー", {
            "{C:attention}ビッグブラインド{}のスキップタグが",
            "{C:green}#2#分の#1#{}の確率で{C:money}ゴールドタグ{}になる",
        }),
        v_aij_sticker_sheet = entry("ステッカーシート", {
            "{C:red}不利な{}ステッカーの効果を{C:attention}弱める{}",
        }),
        v_aij_polkadot = entry("水玉模様", {
            "{C:red}不利な{}ステッカーの効果を{C:attention}弱める{}",
        }),
        v_aij_wax_stamp = entry("封ろう印", {
            "{C:attention}スタンダードパック{}のカードに",
            "{C:attention}シール{}が付く確率が{C:attention}2倍{}になる",
        }),
        v_aij_seal_of_the_realm = entry("王国の印章", {
            "{C:attention}シール自体{}に{C:dark_edition}エディション{}が付いた",
            "プレイングカードが出現することがある",
        }),
        v_aij_embraced_arcane = entry("秘術の受容", {
            "{C:tarot}アルカナパック{}で選べる枚数{C:attention}+#1#{}",
        }),
        v_aij_thaumaturgy = entry("奇跡術", {
            "{C:money}ショップ{}にランダムな{C:tarot}アルカナパック{}が",
            "毎回1つ追加される",
        }),
        v_aij_common_caste = entry("庶民階級", {
            "{C:money}ショップ{}にランダムな{C:common}コモンパック{}が",
            "毎回1つ追加される",
        }),
        v_aij_upper_class = entry("上流階級", {
            "{C:money}ショップ{}にランダムな{C:uncommon}アンコモンパック{}が",
            "毎回1つ追加される",
        }),
        v_aij_recursion = entry("再帰", {"販売バウチャーの数{C:attention}+#1#{}"}),
        v_aij_recursion_2 = entry("再帰", {
            "販売バウチャーの数{C:attention}+#1#{}",
            "バウチャーの価格が{C:money}$#2#{}下がる",
        }),
        v_aij_raw_mult = entry("未加工の倍率", {"倍率{C:mult}+#1#{}"}),
        v_aij_refined_mult = entry("精製された倍率", {"倍率{X:mult,C:white}X#1#{}"}),
    },
    Edition = {
        e_aij_negative_playing_card = entry("ネガティブ", {
            "ハンドサイズ{C:dark_edition}+#1#{}",
            "{C:inactive}（コピーしたカードからは外れる）",
        }),
        e_aij_glimmer = entry("グリマー", {
            "{C:chips}チップ{}と{C:mult}倍率{}の差を{C:attention}#1#%{}{C:aij_plasma}縮める{}",
        }),
        e_aij_silver = entry("シルバー", {"効果が{C:attention}X#1#{}になる"}),
        e_aij_stellar = entry("ステラー", {
            "プレイした役の{C:attention}レベル{}1につき",
            "チップ{C:chips}+#1#{}、倍率{C:mult}+#2#{}",
        }),
        e_aij_stellar_alt = entry("ステラー", {
            "プレイした役の{C:attention}レベル#3#{}ごとに",
            "チップ{C:chips}+#1#{}、倍率{C:mult}+#2#{}",
        }),
        e_aij_aureate = entry("オーレート", {
            "{C:money}所持金{}が{X:money,C:white}X#1#{}になる",
            "{C:inactive}（最大{C:money}$#2#{C:inactive}）",
        }),
        e_aij_misprint = entry("ミスプリント", {
            "ハンドをプレイした後、この{C:attention}ジョーカー{}の",
            "{C:attention}数値{}が{C:attention}X#1#{}～{C:attention}X#2#{}の範囲でランダムに変わる",
        }),
        e_aij_torn = entry("半人前", {}),
    },
    Planet = {
        c_aij_rogue = entry("自由浮遊惑星", {
            "所持している{C:attention}ジョーカー{}の説明にある",
            "{C:attention}すべてのポーカーハンド{}のレベルを上げる",
        }),
        c_aij_dark_star = entry("ダークスター", {
            "まだプレイしていない{C:attention}すべてのポーカーハンド{}のレベルを上げる",
        }),
        c_aij_ghost_moon = entry("ゴーストムーン", {
            "所持している{C:attention}消耗カード{}の説明にある",
            "{C:attention}すべてのポーカーハンド{}を{C:attention}2{}レベル上げる",
        }),
        c_aij_sol = entry("太陽", {
            "{C:attention}#2#{}のレベルを上げる",
            "{S:0.8}（現在のレベル {S:0.8,V:1}#1#{S:0.8}）{}",
            "チップ{C:chips}+#3#{}、倍率{C:mult}+#4#{}",
        }),
    },
    Spectral = {
        c_aura = entry("オーラ", {
            "手札から選んだ{C:attention}#1#{}枚に",
            "{C:dark_edition}フォイル{}、{C:dark_edition}ホログラム{}、",
            "{C:dark_edition}ポリクローム{}のいずれかを付ける",
        }),
        c_deja_vu = entry("デジャヴ", {
            "手札から選んだ{C:attention}#1#{}枚に{C:red}レッドシール{}を付ける",
        }),
        c_medium = entry("ミディアム", {
            "手札から選んだ{C:attention}#1#{}枚に{C:purple}パープルシール{}を付ける",
        }),
        c_talisman = entry("タリスマン", {
            "手札から選んだ{C:attention}#1#{}枚に{C:attention}ゴールドシール{}を付ける",
        }),
        c_trance = entry("トランス", {
            "手札から選んだ{C:attention}#1#{}枚に{C:blue}ブルーシール{}を付ける",
        }),
        c_aij_gravastar = entry("グラバスター", {
            "すべての{C:legendary,E:1}ポーカーハンド{}の{C:chips}チップ{}をレベルアップする",
        }),
        c_aij_pulsar = entry("パルサー", {
            "すべての{C:legendary,E:1}ポーカーハンド{}の{C:mult}倍率{}をレベルアップする",
        }),
        c_aij_shade = entry("シェイド", {
            "手札のランダムな{C:attention}#1#{}枚に{C:dark_edition}ネガティブ{}を付ける",
        }),
        c_aij_possession = entry("憑依", {
            "選んだカード{C:attention}#1#{}枚から",
            "{C:dark_edition}エディション{}と{C:attention}強化{}を取り除き、",
            "その効果をカードの{C:jest_inherent}固有効果{}にする",
        }),
        c_aij_tetragrammaton = entry("テトラグラマトン", {
            {"{C:attention}ランク{}、{C:attention}スート{}、{C:attention}強化{}を", "指定してカードを1枚生成する"},
            {"{C:attention}ランダム{}なカードを4枚生成してデッキに加える"},
        }),
        c_aij_trefle = entry("トレフル", {
            "選んだ{C:attention}ジョーカー{}1枚を{C:attention}リロール{}する",
            "{C:inactive}（エターナルは対象外）",
        }),
        c_aij_trefle_controller = entry("トレフル", {
            "{C:attention}一番右{}のジョーカーを{C:attention}リロール{}する",
            "{C:inactive}（エターナルは対象外）",
        }),
        c_aij_scopophobia = entry("視線恐怖", {
            "手札から選んだ{C:attention}#1#{}枚に{V:1}#2#{}を付ける",
        }),
        c_aij_maw = entry("大口", {
            "ランダムな{C:attention}ジョーカー{}1枚と",
            "{C:attention}手札のすべてのカード{}を{C:red}破壊{}する",
        }),
        c_aij_reshape = entry("再形成", {
            "右から{C:attention}50%{}のジョーカー{C:inactive}（端数切り上げ）{}を",
            "その中の1枚の{C:attention}コピー{}に変える",
            "{C:inactive,s:0.8}（元のステッカーとエディションは保持）",
        }),
        c_aij_palmistry = entry("手相占い", {
            "{C:attention}手札{}の各カードにランダムな{C:attention}強化{}を付ける",
        }),
        c_aij_gegenschein = entry("対日照", {
            "プレイしたことのある{C:dark_edition}隠しハンド{}の",
            "レベルをそれぞれの{C:attention}プレイ回数{}と同じにする",
        }),
        c_aij_mirth = entry("歓喜", {"手札から選んだ{C:attention}#1#{}枚に{V:1}#2#{}を付ける"}),
        c_aij_tallow = entry("獣脂", {"手札から選んだ{C:attention}#1#{}枚に{V:1}#2#{}を付ける"}),
        c_aij_barathrum = entry("深淵", {
            "選んだ{C:tarot}タロット{}カード{C:attention}#1#{}種を",
            "{C:attention}出現候補{}から永久に{C:red}除外{}する",
        }),
        c_aij_providence = entry("天の導き", {"{C:attention}占星術タグ{}を獲得"}),
        c_aij_lacuna = entry("空白", {
            "選んだカード{C:attention}#1#{}枚を{C:money}売却{}して{C:money}$#2#{}を獲得",
            "カードの{C:attention}強化{}、{C:attention}シール{}、",
            "{C:dark_edition}エディション{}1つにつき、さらに{C:money}$#3#{}",
        }),
        c_aij_ketu = entry("ケートゥ", {
            {"{C:attention}#1#{}に{C:legendary,E:1}ケートゥ{}を対応させる"},
            {"{C:legendary,E:1}ケートゥ{}の効果", "一番左の{C:attention}ジョーカー{}を再発動する"},
        }),
        c_aij_rahu = entry("ラーフ", {
            {"{C:attention}#1#{}に{C:legendary,E:1}ラーフ{}を対応させる"},
            {"{C:legendary,E:1}ラーフ{}の効果", "{C:attention}プレイしたカード{}をすべて再発動する"},
        }),
    },
    aij_astral = {},
    Tag = {
        tag_aij_astrology = entry("占星術タグ", {
            "次に使う{C:planet}惑星{}カードを{C:attention}2～4{}回{C:attention}再発動{}する",
        }),
    },
    Other = {
        joker_locked_legendary = entry("ロック中", {"ラン中にこのジョーカーを見つける"}),
        aij_smiley_seal = entry("スマイリーシール", {
            "このカードが{C:red}破壊{}されると、ランダムに選んだ",
            "{C:attention}ジョーカー{}{C:attention}#1#{}枚にエディションを付ける",
        }),
        aij_melted_seal = entry("溶解シール", {
            "{C:attention}手札{}にある間に最初に得点した",
            "{V:1}溶解シール{}以外の{C:attention}シール{}に{C:attention}変わる{}",
        }),
        aij_eye_seal = entry("アイシール", {
            "{C:attention}デッキ{}にある間も{C:attention}手札にあるとき{}の効果が発動する",
        }),
        p_aij_guess_the_jest = entry("ジョーカー当てパック", {
            "正体の隠された{C:legendary,E:2}レジェンダリー{}ジョーカー",
            "{C:attention}#2#{}枚の中から{C:attention}#1#{}枚を選ぶ",
        }),
        p_aij_sidereal = entry("恒星パック", {
            "最大{C:attention}#2#{}枚の{C:aij_astral}アストラル{}カードから",
            "{C:attention}#1#{}枚を選んで即座に使う",
        }),
    },
}

local hidden_decks = {}
for key, deck in pairs(descriptions.Back) do
    hidden_decks[key .. "_hidden"] = entry(deck.name, {}, deck.unlock)
end
for key, deck in pairs(hidden_decks) do
    descriptions.Back[key] = deck
end

if All_in_Jest.config.blue_stake_rework then
    descriptions.Stake.stake_blue = entry("ブルーステーク", {
        "アンティ{C:attention}4{}または{C:attention}5{}の",
        "ボスブラインドがピットブラインドになる",
        "{s:0.8}これより下位のステークの効果も適用",
    })
end

local function add_planets(names, effect)
    for key, name in pairs(names) do
        descriptions.Planet["c_aij_" .. key] = entry(name, {
            "{C:attention}#2#{}のレベルを上げる",
            "{S:0.8}（現在のレベル {S:0.8,V:1}#1#{S:0.8}）{}",
            effect,
        })
    end
end

add_planets({
    vulcanoid = "バルカノイド", zoozve = "ズーズヴェ", luna = "ルナ", phobos = "フォボス",
    europa = "エウロパ", titan = "タイタン", umbriel = "ウンブリエル", triton = "トリトン",
    nix = "ニクス", planet_nine = "第9惑星", pallas = "パラス", dysnomia = "ディスノミア",
    paper_weywot = "ウェイウォット", paper_namaka = "ナマカ",
    paper_ilmare = "イルマレ", paper_salacia = "サラキア",
}, "倍率{C:mult}+#3#{}")

add_planets({
    phaethon = "ファエトン", ["2013_nd15"] = "2013 ND15", kamooalewa = "カモオアレワ",
    deimos = "ダイモス", callisto = "カリスト", iapetus = "イアペトゥス",
    oberon = "オベロン", proteus = "プロテウス", charon = "カロン", nibiru = "ニビル",
    ["2000_eu16"] = "2000 EU16", kuiper = "カイパー", paper_ixion = "イクシオン",
    paper_hiiaka = "ヒイアカ", paper_varda = "ヴァルダ", paper_mk2 = "Mk2",
}, "チップ{C:chips}+#3#{}")

local function add_astral(key, name, effect, pin_note)
    descriptions.aij_astral["c_aij_" .. key] = entry(name, {
        {"{C:attention}#1#{}に{C:attention}" .. name .. "{}を対応させる"},
        effect,
    })
    local pin_effect = {unpack(effect)}
    if pin_note then
        pin_effect[#pin_effect + 1] = pin_note
    end
    descriptions.aij_astral["c_aij_" .. key .. "_pin"] = entry(name, pin_effect)
end

add_astral("algol", "アルゴル", {"ハンドをプレイした後に{C:money}$#2#{}を獲得"})
add_astral("alcyone", "アルキオネ", {"ハンドをプレイした後", "カードを追加で{C:attention}#2#{}枚引く"})
add_astral("aldebaran", "アルデバラン", {
    "{C:attention}ポーカーハンド{}の基本{C:chips}チップ{}と{C:mult}倍率{}の差を",
    "{C:attention}#2#%{}{C:aij_plasma}縮める{}",
})
add_astral("capella", "カペラ", {"{C:green}#3#分の#2#{}の確率で", "ランダムな{C:planet}惑星{}カードを生成する"})
add_astral("sirius", "シリウス", {"ランダムなカード{C:attention}#2#{}枚を再発動する"})
add_astral("procyon", "プロキオン", {"ランダムな{C:attention}ジョーカー{}1枚の売却額が{C:money}$#2#{}上がる"})
add_astral("regulus", "レグルス", {"{C:green}#3#分の#2#{}の確率で", "{C:attention}プレイした役{}のレベルが上がる"})
add_astral("alkaid", "アルカイド", {"役に含まれる未強化のカードから", "ランダムに{C:attention}#2#{}枚を強化する"})
add_astral("algorab", "アルゴラブ", {"{C:green}#3#分の#2#{}の確率で", "ランダムな{C:tarot}タロット{}カードを生成する"})
add_astral("spica", "スピカ", {
    "現在の{C:attention}ボスブラインド{}を無効化し、",
    "この{C:spectral}アストラル効果{}を解除する",
}, "{C:inactive}#2#{}")
add_astral("arcturus", "アークトゥルス", {"{C:red}ディスカード{}{C:attention}+#2#{}"})
add_astral("alphecca", "アルフェッカ", {"得点したカードのチップが{C:attention}永続的{}に{C:chips}+#2#{}"})
add_astral("antares", "アンタレス", {"{C:attention}手札{}のランダムなカード1枚を{C:red}破壊{}する"})
add_astral("vega", "ベガ", {"{C:attention}手札{}の{C:attention}先頭{}のカードを再発動する"})
add_astral("deneb_algedi", "デネブ・アルゲディ", {
    "各ラウンドでこの役を{C:attention}初めて{}プレイすると",
    "残りハンド数{C:blue}+#2#{}",
}, "{C:inactive}#3#{}")
descriptions.aij_astral.c_aij_ketu_pin = entry("ケートゥ", {"一番左の{C:attention}ジョーカー{}を再発動する"})
descriptions.aij_astral.c_aij_rahu_pin = entry("ラーフ", {"{C:attention}プレイしたカード{}をすべて再発動する"})

local pack_sizes = {normal = "", jumbo = "ジャンボ", mega = "メガ"}
local pack_counts = {normal = 3, jumbo = 2, mega = 1}
for rarity, name in pairs({common = "コモン", uncommon = "アンコモン", rare = "レア"}) do
    for size, prefix in pairs(pack_sizes) do
        for i = 1, pack_counts[size] do
            local key = "p_aij_" .. rarity .. "_" .. size .. "_" .. i
            descriptions.Other[key] = entry(prefix .. name .. "パック", {
                "最大{C:attention}#2#{}枚の{C:" .. rarity .. "}" .. name .. "{}ジョーカーから",
                "{C:attention}#1#{}枚を選ぶ",
            })
        end
    end
end

descriptions.PolyStakeChips = {
    locked = entry("ロック中", {
        "{C:attention}#1#{}ポイント以上でランに勝利するとアンロック",
    }),
    aij_up_the_ante = entry("高まる賭け金", {
        "{C:attention}アンティ{}ごとの必要スコアの上昇幅が大きくなる",
    }),
    aij_sloth = entry("怠惰", {
        "ショップやブースターパックのジョーカーに",
        "{C:attention}30%{}の確率で{C:attention}エターナル{}が付く",
        "{C:inactive,s:0.8}（売却・破壊できない）",
    }),
    aij_gluttony = entry("暴食", {
        "ショップやブースターパックのジョーカーに",
        "{C:attention}30%{}の確率で{C:attention}ペリシャブル{}が付く",
        "{C:inactive,s:0.8}（5ラウンド後にデバフを受ける）",
    }),
    aij_greed = entry("強欲", {
        "ショップやブースターパックのジョーカーに",
        "{C:attention}30%{}の確率で{C:attention}レンタル{}が付く",
        "{C:inactive,s:0.8}（ラウンドごとに{C:money,s:0.8}$3{C:inactive,s:0.8}かかる）",
    }),
    aij_red_challenge = entry("赤の試練", {"{C:attention}スモールブラインド{}から報酬を得られない"}),
    aij_broken_foot = entry("足の骨折", {"各ラウンドのディスカード{C:red}-1{}"}),
    aij_the_pit = entry("闘技場", {
        "アンティ{C:attention}4{}または{C:attention}5{}の{C:attention}ボスブラインド{}が",
        "特殊な{C:attention}ピットブラインド{}に置き換わる",
    }),
    aij_broken_hand = entry("手の骨折", {"各ラウンドのハンド{C:red}-1{}"}),
    aij_pride = entry("傲慢", {
        "{C:attention}ショップ{}のジョーカーに",
        "{C:attention}10%{}の確率で{C:attention}新品同様{}が付く",
        "{C:inactive,s:0.8}（価格が{C:money,s:0.8}$10{C:inactive,s:0.8}高くなる）",
    }),
    aij_pricey_packs = entry("高価なパック", {
        "{C:attention}アンティ{}ごとにブースターパックの価格が{C:money}$1{}上がる",
    }),
    aij_envy = entry("嫉妬", {
        "ショップやブースターパックのジョーカーに",
        "{C:attention}30%{}の確率で{C:attention}内気{}が付く",
        "{C:inactive,s:0.8}（ジョーカースロットが満杯の状態で",
        "{C:inactive,s:0.8}ブラインドを選ぶと自壊する）",
    }),
    aij_in_the_dark = entry("暗闇の中", {
        "各ラウンドの{C:attention}最初の手札{}のうち",
        "ランダムな{C:attention}1{}枚を{C:attention}裏向き{}で引く",
    }),
    aij_wrath = entry("憤怒", {
        "ショップやブースターパックの{C:attention}得点に関わる{}ジョーカーに",
        "{C:attention}30%{}の確率で{C:attention}気まぐれ{}が付く",
        "{C:inactive,s:0.8}（{C:green,s:0.8}4分の1{C:inactive,s:0.8}の確率で得点に加わらない）",
    }),
    aij_blindness = entry("目隠し", {
        "{C:attention}ボスブラインド{}の正体と効果は選ぶまで見えない",
    }),
    aij_lust = entry("色欲", {
        "ショップやブースターパックのジョーカーに",
        "{C:attention}30%{}の確率で{C:attention}注文付き{}が付く",
        "{C:inactive,s:0.8}（各ラウンドで指定された役を",
        "{C:inactive,s:0.8}プレイするまでデバフを受ける）",
    }),
    aij_double_threat = entry("二重の脅威", {
        "{C:attention}ビッグブラインド{}が{C:attention}ボスブラインド{}に置き換わる",
    }),
    aij_chump_change = entry("はした金", {
        "{C:attention}ハイカード{}と{C:attention}ペア{}のレベルアップ時に",
        "増える{C:chips}チップ{}が{C:attention}5{}少なくなる",
    }),
    aij_journey = entry("長旅", {"勝利に必要なアンティ{C:attention}+1{}"}),
    aij_vainglory = entry("虚栄", {
        "ショップやブースターパックのジョーカーに",
        "{C:attention}30%{}の確率で{C:attention}スート{}か{C:attention}フェイス{}が付く",
        "{C:inactive,s:0.8}（対応するスートやフェイスカードを",
        "{C:inactive,s:0.8}そのラウンドにプレイするとデバフを受ける）",
    }),
    aij_deadwood = entry("枯れ木", {"デッキに{C:attention}ブランクカード{}を{C:attention}6{}枚追加して開始"}),
    aij_gladiator = entry("剣闘士", {"{C:attention}ボスブラインド{}の効果が強化される"}),
}

descriptions.Other.aij_polychrome_sticker = entry("ポリクロームステッカー", {
    "このジョーカーを使い、{C:attention}ポリクロームステーク{}を",
    "{C:attention}#1#{}ポイントでクリアした",
})
descriptions.Other.aij_poly_points = entry("ポイント", {"#1#"})

descriptions.Blind = {
    bl_aij_the_heart = entry("心臓", {"#1#を含むハンドをプレイするまで", "ハンドが得点しない"}),
    bl_aij_the_rains = entry("雨", {"勝利したハンドで得点したカードは", "強化・エディション・シールをすべて失う"}),
    bl_aij_the_child = entry("子ども", {"得点する全カードのランクが1下がる"}),
    bl_aij_the_moon = entry("月", {"奇数回目のハンドでは", "すべてのカードがデバフを受ける"}),
    bl_aij_the_shell = entry("殻", {"カードが#2#分の#1#の確率でデバフを受ける", "カードを引くと#4#分の#3#の確率で裏向きになる"}),
    bl_aij_the_earth = entry("大地", {"ハンドをプレイした後、手札に残った", "カードはすべてストーンカードになる"}),
    bl_aij_the_dragon = entry("ドラゴン", {"手札が空になるまでカードを引けない"}),
    bl_aij_the_mountain = entry("山", {"必要スコアが非常に高い", "ハンドサイズ+1"}),
    bl_aij_the_conflagration = entry("大火", {"勝利時にプレイしたカードと", "残った手札をすべて破壊する"}),
    bl_aij_the_umbilical = entry("へその緒", {"各ハンドでランダムなカード1枚に印が付き", "印付きカードはプレイもディスカードもできない"}),
    bl_aij_the_divine = entry("神性", {"ハンドに強化カードが1枚以上必要"}),
    bl_aij_the_bird = entry("鳥", {"得点計算前にランダムな", "ジョーカー1枚の位置を変える"}),
    bl_aij_the_arrow = entry("矢", {"得点するには、このブラインドで", "プレイした全ハンドの得点を上回る必要がある"}),
    bl_aij_the_brilliance = entry("輝き", {"必要スコアに2回到達する必要がある", "ハンド+2"}),
    bl_aij_the_assistant = entry("助手", {"こちらの戦略に刺さる", "ボスブラインドに変わる"}),
    bl_aij_the_pair = entry("一対", {"手札にペアが必要"}),
    bl_aij_the_clown = entry("道化師", {"最初にカードを引いたとき", "ランダムな手札5枚を自動でプレイし", "その得点を必要スコアに加える"}),
    bl_aij_the_business = entry("取引", {"勝利すると左右どちらかの端のジョーカーを破壊し", "エターナルのコモンジョーカーを1枚生成する"}),
    bl_aij_the_multitude = entry("群衆", {"カードが#2#分の#1#の確率でデバフを受ける", "ラウンド終了時にデッキに残った", "デバフ付きカードを破壊する"}),
    bl_aij_the_trio = entry("三つ組", {"プレイまたはディスカード後に同じランクの", "カードが手札に3枚あれば", "ランダムな手札3枚にデバフをかける"}),
    bl_aij_the_connection = entry("つながり", {"このブラインドの必要スコアを超えた分が", "以降すべてのブラインドの必要スコアに加わる"}),
}

descriptions.Joker = {
    j_aij_flying_ace = entry("撃墜王", {
        "このラウンドで得点した{C:attention}エース{}の",
        "{C:attention}スート{}1種類につき、ラウンド終了時に{C:money}$#1#{}を獲得",
        "{C:inactive}（獲得予定額 {C:money}$#2#{C:inactive}）",
    }),
    j_aij_lucky_seven = entry("ラッキーセブン", {
        "強化されていない{C:attention}7{}が得点すると",
        "{C:attention}ラッキーカード{}になる",
    }),
    j_aij_you_broke_it = entry("壊しちゃった！", {
        "強化されていない{C:attention}#1#{}が得点すると{C:attention}#2#{}になる",
        "{s:0.8}対象ランクと付く強化はラウンド終了時に変わる",
    }),
    j_aij_birthday_clown = entry("誕生日のピエロ", {
        "{C:attention}アンティ{}ごとに{C:attention}1{}ラウンドだけ倍率{X:mult,C:white}X#1#{}",
        "{C:inactive}#2#",
    }),
    j_aij_memory_card = entry("メモリーカード", {
        "ラウンド最初のハンドがちょうど{C:attention}1{}枚なら",
        "以降のブラインドでそのカードを{C:attention}最初{}に引く",
        "{C:inactive}（記憶できるのは1枚まで）",
        "{C:inactive}（一番左にあるときのみ発動）",
    }),
    j_aij_sleepy_joker = entry("眠たいジョーカー", {
        "プレイしたハンドが{C:spades}スペード{}と{C:clubs}クラブ{}だけなら",
        "倍率{X:mult,C:white}X#1#{}",
    }),
    j_aij_invisible_man = entry("透明人間", {
        "{C:attention}フェイスカード{}はすべて",
        "{C:attention}K{}・{C:attention}Q{}・{C:attention}J{}として扱う",
        "{C:inactive}（ポーカーの役を作るときは除く）",
    }),
    j_aij_handsome_joker = entry("男前ジョーカー", {
        "{C:attention}デッキ全体{}に含まれる{C:attention}#2#{}1枚につき",
        "倍率{X:mult,C:white}X#1#{}",
        "{s:0.8}対象カードは変わらない",
        "{C:inactive}（現在の倍率 {X:mult,C:white}X#3#{C:inactive}）",
    }),
    j_aij_whiteface_grotesque = entry("白塗りの道化師", {
        "ハンドをプレイするたび、{C:attention}手札{}の",
        "{C:attention}フェイスカード{}1枚につき、このジョーカーのチップ{C:chips}+#1#{}",
        "{C:inactive}（現在のチップ {C:chips}+#2#{C:inactive}）",
    }),
    j_aij_the_clown_show = entry("道化師のショー", {
        "このランで購入した{C:attention}ジョーカー{}1枚につき",
        "チップ{C:chips}+#1#{}",
        "{C:inactive}（現在のチップ {C:chips}+#2#{C:inactive}）",
    }),
    j_aij_pierrot = entry("ピエロ", {"手札の{C:attention}数字札{}がそれぞれの{C:chips}チップ{}を加える"}),
    j_aij_hat_trick = entry("ハットトリック", {
        "{C:attention}スリーカード{}をプレイしたとき",
        "得点するカードはそれぞれ役の{C:attention}レベル{}と",
        "同じ値の{C:mult}倍率{}を加える",
        "{C:inactive}（現在の倍率 {C:mult}+#1#{C:inactive}）",
    }),
    j_aij_infinite_jest = entry("終わらない冗談", {
        "{C:attention}ボスブラインド{}を倒すと、{C:attention}すべての役{}のレベルを上げる",
    }),
    j_aij_trypophobia = entry("集合体恐怖", {
        "得点したカードが{C:attention}8{}だけなら倍率{C:mult}+#1#{}",
    }),
    j_aij_rummikub = entry("ラミィキューブ", {
        "{C:attention}ボスブラインド{}を{C:red}倒す{}たびに",
        "{C:attention}ランク{}、{C:attention}スート{}、{C:attention}強化{}を指定した",
        "カードを1枚生成してデッキに加える",
    }),
    j_aij_imperial_bower = entry("皇帝の切り札", {
        "ラウンドで{C:attention}最初に引いたカード{}を",
        "{C:attention}あらゆる{}ランクとスートとして扱う",
        "{C:inactive}（ランクはポーカーの役を作るときには適用しない）",
    }),
    j_aij_ultrasound = entry("超音波", {
        "{C:attention}ブースターパック{}を選ぶと、中身が1枚見える",
    }),
    j_aij_negative_nancy = entry("ネガティブなナンシー", {
        "{C:attention}ショップ{}に{C:dark_edition}ネガティブ{}のジョーカーが",
        "{C:attention}#1#倍{}出現しやすくなる",
    }),
    j_aij_old_joker = entry("老ジョーカー", {
        "{C:attention}ボスブラインド{}を倒すたびに",
        "このジョーカーのチップ{C:chips}+#2#{}、倍率{C:mult}+#4#{}",
        "{C:inactive,s:0.8}（現在 チップ{C:chips,s:0.8}+#1#{}{C:inactive,s:0.8}、倍率{C:mult,s:0.8}+#3#{C:inactive,s:0.8}）",
        "{C:inactive,s:0.8}（常にエターナル）",
    }),
    j_aij_carousel = entry("回転木馬", {
        "得点計算後、{C:attention}得点した{}カードのスートを{C:attention}順に変更{}する",
        "{C:inactive,s:0.8}（スペード→ハート→クラブ→ダイヤ→スペード）",
    }),
}

descriptions.Tarot = {
    c_aij_master_arcanes = entry("秘術の達人", {
        "{C:green}#2#分の#1#{}の確率でランダムな",
        "{C:spectral}スペクトル{}カードを1枚生成する",
        "{C:inactive}（空きスロットが必要）",
    }),
    c_aij_two_ways = entry("二つの道", {
        "選んだ{C:attention}#1#{}枚を、元の{C:attention}ランク{}が{C:attention}半分{}の",
        "カード{C:attention}2{}枚に分割する",
        "{C:inactive}（奇数はできるだけ均等に分ける）",
        "{C:inactive}（A=14、K=13、Q=12、J=11）",
    }),
    c_aij_osiris = entry("オシリス", {
        "選んだジョーカー{C:attention}1{}枚を{C:red}破壊{}し、",
        "その{C:money}売却額{}の3倍を獲得する",
        "{C:inactive}（獲得予定額 {C:money}$#1#{C:inactive}）",
        "{C:inactive}（最大 {C:money}$#2#{C:inactive}）",
    }),
    c_aij_osiris_controller = entry("オシリス", {
        "{C:attention}一番右{}のジョーカーを{C:red}破壊{}し、",
        "その{C:money}売却額{}の3倍を獲得する",
        "{C:inactive}（獲得予定額 {C:money}$#1#{C:inactive}）",
    }),
    c_aij_balance_and_blade = entry("天秤と刃", {
        "選んだ{C:attention}#1#{}枚にランダムなスートの{C:attention}パッチ{}を付ける",
    }),
    c_aij_sacrifice = entry("生け贄", {
        "選んだカード{C:attention}#1#{}枚を{C:red}破壊{}し、",
        "{C:attention}スート{}・{C:attention}ランク{}・{C:attention}強化{}が",
        "ランダムなカードを1枚生成する",
    }),
    c_aij_reaper = entry("死神", {
        "カードを{C:attention}#1#{}枚選ぶ",
        "{C:attention}ランダム{}に選ばれた1枚の{C:attention}コピー{}に",
        "選んだ{C:attention}#1#{}枚すべてを変える",
    }),
    c_aij_urns = entry("骨壺", {
        "選んだ{C:attention}強化{}カード{C:attention}#1#{}枚を{C:red}破壊{}し、",
        "その{C:attention}強化{}を手札のランダムな{C:attention}#2#{}枚に付ける",
    }),
    c_aij_beheaded = entry("首なき者", {
        "選んだカード{C:attention}#1#{}枚に{C:attention}爆弾ステッカー{}を付ける",
    }),
    c_aij_star_magi = entry("賢者の星", {
        "パッシグレードの{C:aij_astral}アストラル{}カードを",
        "ランダムに1枚{C:attention}生成{}する",
    }),
    c_aij_twilight = entry("黄昏", {
        "最も多くプレイした役のレベル1につき{C:money}$#1#{}を獲得",
        "{C:inactive}（最大 {C:money}$#2#{C:inactive}）",
        "{C:inactive}（獲得予定額 {C:money}$#3#{C:inactive}・#4#）",
    }),
    c_aij_rising_dead = entry("死者の目覚め", {
        "カードを{C:attention}#1#{}枚選ぶ",
        "{C:attention}右{}のカードの{C:attention}強化{}と{C:attention}シール{}を",
        "{C:attention}左{}のカードに付ける",
    }),
    c_aij_broken_fate = entry("砕かれた運命", {
        "{C:attention}一番左の消耗カード{}の数値が",
        "{C:attention}初期値{}の{C:attention}0.75倍{}～{C:attention}2.5倍{}の間でランダムに変わる",
    }),
    c_aij_golem = entry("ゴーレム", {
        "選んだ{C:attention}ストーンカード{}最大{C:attention}#1#{}枚に",
        "ランダムな強化を{C:attention}追加{}する",
    }),
}

for key, name in pairs({
    magus = "魔術師", sanctuary_gate = "聖域の門", isis_urania = "イシス・ウラニア",
    cubic_stone = "立方の石", veiled_lamp = "覆われたランプ", sphinx = "スフィンクス",
    tamed_lion = "飼いならされた獅子", typhon = "テュポーン",
}) do
    descriptions.Tarot["c_aij_" .. key] = entry(name, {
        "選んだカード{C:attention}#1#{}枚を{C:attention}#2#{}に強化する",
    })
end

descriptions.aij_hex_tarot = {
    c_aij_error = entry("誤り", {"選んだカード最大{C:attention}#1#{}枚に{C:red}カオス{}を付ける"}),
    c_aij_janitor = entry("用務員", {"{C:attention}手札{}のカードをすべて{C:red}破壊{}する"}),
    c_aij_inn = entry("宿屋", {
        "ランダムな{C:spectral}顔なじみ{}を1枚生成する",
        "{C:inactive}（空きスロットが必要）",
    }),
    c_aij_faceless = entry("顔なき者", {
        "一番左の{C:attention}ジョーカー{}を{C:red}破壊{}し、",
        "それよりレア度の低い{C:dark_edition}ネガティブ{}の",
        "{C:attention}ジョーカー{}を1枚生成する",
    }),
    c_aij_oracle = entry("神託", {
        "手札の{C:attention}全カード{}に同じ{C:attention}ランダムな強化{}を1つ付ける",
    }),
}

return {
    descriptions = descriptions,
    misc = {
        dictionary = {
            k_coder_badge = "プログラム",
            k_artist_badge = "アート",
            k_playtester_badge = "プレイテスト",
            k_community_member_badge = "コミュニティメンバー",
            k_content_creator_badge = "コンテンツ制作者",
            k_moon = "衛星",
            k_moon_q = "衛星？",
            k_star = "恒星",
            k_tag = "タグ",
            k_delete = "削除",
            k_star_q = "恒星？",
            k_asteroid = "小惑星",
            k_tarot_q = "タロット？",
            k_tarot_hex = "呪い",
            k_active = "有効",
            k_inactive = "無効",
            k_aij_remove = "取り除く",
            k_aij_party_time = "パーティーの時間！",
            k_aij_replace = "置き換える",
            k_aij_select = "選ぶ",
            b_aij_reroll_tags = "タグをリロール",
            k_aij_astral = "アストラル",
            b_aij_astral_cards = "アストラルカード",
            k_aij_inherent = "固有効果",
            aij_requires_restart = "再起動が必要",
            aij_doesnt_requires_restart = "再起動不要",
            aij_upgraded_tags = "ゴールドタグ",
            aij_gladiator_blinds = "剣闘士ブラインド",
            aij_pc_stickers = "プレイングカードのステッカー",
            aij_astral_grades_collection_label = "アストラル等級",
            aij_button_content = "追加コンテンツ",
            aij_button_moons = "衛星",
            aij_button_visuals = "表示・アクセシビリティ",
            aij_button_consistency = "出現ルール",
            aij_enable_astrals = "アストラルを有効にする",
            aij_enable_astrals_tooltip = {
                "アストラルカードと関連効果が出現する",
                "{s:0.8,C:red}（再起動が必要）",
            },
            aij_enable_moons = "衛星を有効にする",
            aij_enable_moons_tooltip = {
                "{C:chips}チップ{}または{C:mult}倍率{}を強化する",
                "{C:planet}惑星{}カードが出現する",
                "{s:0.8,C:red}（再起動が必要）",
            },
            aij_moons_blocking = "同じ役の惑星の重複を防ぐ",
            aij_moons_blocking_tooltip = {
                "{C:planet}衛星{}が有効なとき、同じ役に対応する",
                "{C:planet}惑星{}カードが同時に複数出現しなくなる",
                "{s:0.8,C:inactive}（再起動不要）",
            },
            aij_alter_trypophobia = "集合体恐怖に配慮した画像",
            aij_alter_trypophobia_tooltip = {
                "ジョーカー「{C:attention}集合体恐怖{}」の画像を",
                "刺激の少ないものに変更する",
                "{s:0.8,C:red}（再起動が必要）",
            },
            aij_no_copy_neg = "ネガティブ付きでコピー",
            aij_no_copy_neg_tooltip = {
                "{C:attention}プレイングカード{}のコピーにも",
                "{C:dark_edition}ネガティブ{}を引き継げるようにする",
                "{C:attention}オフ{}（初期設定）では、コピーからネガティブが外れる",
                "{s:0.8,C:inactive}（再起動不要）",
            },
            aij_blue_stake_rework = "ブルーステークの変更",
            aij_blue_stake_rework_tooltip = {
                "ブルーステークの{C:red}ディスカード-1{}を",
                "{C:attention}ピットブラインド{}の出現に置き換える",
                "{s:0.8,C:red}（再起動が必要）",
            },
            aij_lite = "All in Jest Lite",
            aij_lite_tooltip = {
                "{C:attention}本編に近い{}追加コンテンツだけを有効にする",
                "{s:0.8,C:inactive}（現在76項目）",
                "{s:0.8,C:red}（再起動が必要）",
            },
            aij_red_destroy_text = "説明文の「破壊」を強調",
            aij_red_destroy_text_tooltip = {
                "{C:attention}本編{}と{C:attention}MOD{}のカード説明で",
                "英語の destroy を{C:red}赤色{}で表示する",
                "{s:0.8,C:inactive}（他のMODのツールチップに影響する場合がある）",
                "{s:0.8,C:red}（再起動が必要）",
            },
            aij_random_deck_skins = "デッキスキンをランダム化",
            aij_random_deck_skins_tooltip = {
                "デッキに加わる{C:attention}プレイングカード{}に",
                "ランダムな{C:attention}デッキスキン{}を適用する",
                "{s:0.8,C:inactive}（再起動不要）",
            },
            aij_guess_names = "ジョーカー当てで名前を表示",
            aij_guess_names_tooltip = {
                "{C:purple}ジョーカー当てパック{}で名前を表示する",
                "{s:0.8,C:inactive}（効果説明は隠れたまま）",
                "{s:0.8,C:inactive}（再起動不要）",
            },
            aij_mult_appearance = "倍率ジョーカーの出現を増やす",
            aij_mult_appearance_tooltip = {
                "ランの{C:attention}序盤{}に{C:mult}倍率{}ジョーカーが",
                "安定して出現するようにする",
                "{s:0.8,C:inactive}（再起動不要）",
            },
            aij_mult_appearance_opt = {"オフ", "標準", "強"},
            aij_suit_boss_blocking = "同じスートのボスの再出現を防ぐ",
            aij_suit_boss_blocking_tooltip = {
                "特定の{C:attention}スート{}に影響する{C:attention}ボスブラインド{}が出た後は、",
                "同じスートに影響する別のボスは以降の{C:attention}アンティ{}に出現しない",
                "{s:0.8,C:inactive}（再起動不要）",
            },
            k_aij_guess_the_jest = "ジョーカー当て",
            k_aij_sidereal_packs = "恒星パック",
            k_aij_common_packs = "コモンパック",
            k_aij_uncommon_packs = "アンコモンパック",
            k_aij_rare_packs = "レアパック",
            k_aij_points = "ポイント",
            k_aij_total_points = "現在の合計",
            k_aij_pb = "自己ベスト",
            k_aij_all_time = "全期間",
            k_aij_disable_all = "すべて無効にする",
            run_select_aij_polychrome_settings = "カスタマイズ",
        },
        v_dictionary = {
            a_aij_exp_mult = "倍率^#1#",
            a_aij_mult_equal = "倍率=#1#",
            a_aij_chips_equal = "チップ=#1#",
            a_aij_ante_minus = "アンティ-#1#",
            a_aij_win_ante_plus = "勝利に必要なアンティ+#1#",
            a_aij_score_reduction = "スコア-#1#%",
            a_aij_percent_balance = "+#1#%",
            a_aij_percent_balance_minus = "-#1#%",
            a_aij_hands_minus = "ハンド-#1#",
            a_aij_discards_plus = "ディスカード+#1#",
            a_aij_discards_plus_singular = "ディスカード+#1#",
            a_aij_handsize = "ハンドサイズ+#1#",
            a_aij_joker_slots = "ジョーカースロット+#1#",
            a_aij_joker_slots_minus = "ジョーカースロット-#1#",
            a_aij_odds = "確率+#1#",
            a_aij_jokers = "ジョーカー+#1#",
            a_aij_times_interest = "利息X#1#",
            a_aij_plus_rerolls = "リロール+#1#",
            a_aij_times_money = "所持金X#1#",
            a_aij_discards = "ディスカード+#1#",
            a_aij_slots_left = "（空きスロット #1#）",
            a_aij_slots_minus = "スロット-#1#",
            a_aij_slots = "スロット+#1#",
            a_aij_points = "#1#ポイント",
            a_aij_applied_stake = "（#1#回適用）",
        },
        challenge_names = {
            c_aij_bananarama = "バナナ祭り",
            c_aij_sharpest_tool = "切れ者",
            c_aij_the_pit = "闘技場",
            c_aij_mircotransactions = "少額決済",
            c_aij_micromanagement = "細かい管理",
            c_aij_flip_flop = "表裏一転",
            c_aij_full_plate = "満腹御礼",
            c_aij_pandemonium = "大混乱",
        },
        v_text = {
            ch_c_aij_sharpest_tool_1 = {"{C:attention}ショップ{}と{C:attention}バフーンパック{}には"},
            ch_c_aij_sharpest_tool_2 = {"{C:common}コモン{}ジョーカーだけが出現する"},
            ch_c_aij_all_pit_blinds = {"アンティ2以降の通常ボスはすべて{C:attention}ピットブラインド{}になる"},
            ch_c_aij_no_mult_in_pool = {"指定のジョーカーからのみ{C:mult}倍率{}を得られる"},
            ch_c_aij_all_jokers_perishable_1 = {"すべてのジョーカーに{C:attention}ペリシャブル{}が付く"},
            ch_c_aij_all_jokers_perishable_2 = {"{C:attention}ペリシャブル{}は{C:attention}2{}ラウンドでデバフをかける"},
            ch_c_aij_money_times_negative = {"ラウンド終了時に所持金を{C:red}-1{}倍する"},
            ch_c_aij_all_jokers_is_food = {"{C:attention}食べ物系ジョーカー{}だけが出現する"},
            ch_c_aij_pandemonium_1 = {"スキップタグがすべて{C:attention}カオスタグ{}になる"},
            ch_c_aij_pandemonium_2 = {"スモールブラインドとビッグブラインドは{C:attention}選択できない{}"},
        },
        labels = {
            aij_glimmer = "グリマー",
            aij_silver = "シルバー",
            aij_misprint = "ミスプリント",
            aij_stellar = "ステラー",
            aij_aureate = "オーレート",
            aij_torn = "破れ",
            aij_marked = "目印付き",
            aij_pc_perishable = "ペリシャブル",
            aij_pc_eternal = "エターナル",
            aij_pc_rental = "レンタル",
            pinned = "固定",
            aij_unusual_doubled = "2倍",
            aij_recherche_doubled = "2倍",
            aij_indecisive = "気まぐれ",
            aij_mint_condition = "新品同様",
            aij_introverted = "内気",
            aij_demanding = "注文付き",
            aij_spade = "スペード",
            aij_diamond = "ダイヤ",
            aij_heart = "ハート",
            aij_club = "クラブ",
            aij_face = "フェイス",
            aij_bomb = "爆弾",
            aij_smiley_seal = "スマイリーシール",
            aij_melted_seal = "溶解シール",
            aij_eye_seal = "アイシール",
            aij_jest_chaotic_card = "カオス",
            astral_grade_aij_passigrade = "パッシグレード",
            astral_grade_aij_prograde = "プログレード",
            astral_grade_aij_retrograde = "レトログレード",
            astral_grade_aij_omnigrade = "オムニグレード",
        },
        poker_hands = {
            ["aij_Royal Flush"] = "ロイヤルフラッシュ",
            ["aij_Nothing_q"] = "役なし？",
        },
        poker_hand_descriptions = {
            ["aij_Royal Flush"] = {"同じスートの10・J・Q・K・Aの5枚"},
        },
    },
}
