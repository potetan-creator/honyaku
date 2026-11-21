-- All In Jest 0.8.0 の日本語ローカライズ
local localization = {
    descriptions = {
        Back = {
            b_aij_branching = {
                name = "分岐のデッキ",
                text = {
                    "ブラインドをスキップするとき",
                    "{C:attention}3{}つのタグから選べる",
                },
                unlock = {
                    "1回のランでブラインドを{C:attention}5{}回以上スキップする",
                },
            },
            b_aij_branching_hidden = {
                name = "分岐のデッキ",
                text = {},
                unlock = {
                    "1回のランでブラインドを{C:attention}5{}回以上スキップする",
                },
            },
            b_aij_coupon = {
                name = "クーポンデッキ",
                text = {
                    "{C:attention}アンティ{}ごとにバウチャーが{C:attention}2{}枚並ぶ",
                    "{C:red}特殊な{}バウチャーが出現することがある",
                },
                unlock = {
                    "",
                },
            },
            b_aij_coupon_hidden = {
                name = "クーポンデッキ",
                text = {},
                unlock = {
                    "",
                },
            },
            b_aij_fabled = {
                name = "伝説のデッキ",
                text = {
                    "{C:legendary,E:1}レジェンダリー{}ジョーカーが",
                    "{C:attention}ショップ{}に出現することがある",
                    "ジョーカースロット{C:attention}-1{}",
                },
                unlock = {
                    "{C:legendary,E:1}レジェンダリー{}ジョーカーをアンロックする",
                },
            },
            b_aij_fabled_hidden = {
                name = "伝説のデッキ",
                text = {},
                unlock = {
                    "{C:legendary,E:1}レジェンダリー{}ジョーカーをアンロックする",
                },
            },
            b_aij_madcap = {
                name = "奇想デッキ",
                text = {
                    "{C:attention}スタンダードパック{}のカード候補が{C:attention}+2{}",
                    "パック内の全カードに{C:attention}ランダムな強化{}が付く",
                    "{C:red}特殊な{}強化が出現することがある",
                },
                unlock = {
                    "",
                },
            },
            b_aij_madcap_hidden = {
                name = "奇想デッキ",
                text = {},
                unlock = {
                    "",
                },
            },
            b_aij_melded = {
                name = "融合デッキ",
                text = {
                    "各プレイングカードに{C:attention}2{}種類の強化を付けられる",
                },
                unlock = {
                    "{V:1}#2#{}以上の難易度で{C:attention}#1#{}種類のデッキをクリアする",
                },
            },
            b_aij_melded_hidden = {
                name = "融合デッキ",
                text = {},
                unlock = {
                    "{V:1}#2#{}以上の難易度で{C:attention}#1#{}種類のデッキをクリアする",
                },
            },
            b_aij_patchwork = {
                name = "パッチワークデッキ",
                text = {
                    "すべてのプレイングカードに",
                    "{C:attention}ランダム{}なスートのパッチが付いて見える",
                },
                unlock = {
                    "{C:attention}スートパッチ{}付きのカードを同時に{C:attention}13{}枚以上持つ",
                },
            },
            b_aij_patchwork_hidden = {
                name = "パッチワークデッキ",
                text = {},
                unlock = {
                    "{C:attention}スートパッチ{}付きのカードを同時に{C:attention}13{}枚以上持つ",
                },
            },
            b_aij_twofold = {
                name = "二倍のデッキ",
                text = {
                    "{C:attention}ボスブラインド{}の効果が{C:attention}2{}つになる",
                    "ジョーカーの効果、ブラインドの報酬と",
                    "必要スコア、ショップの枠が{C:attention}2倍{}になる",
                    "通常の{C:attention}2倍{}の枚数でランを開始",
                },
                unlock = {
                    "",
                },
            },
            b_aij_twofold_hidden = {
                name = "二倍のデッキ",
                text = {},
                unlock = {
                    "",
                },
            },
        },
        Blind = {
            bl_aij_amber_acorn_GL = {
                name = "琥珀色のドングリ",
                text = {
                    "すべてのジョーカーとプレイしたカードをそれぞれ手札で",
                    "シャッフルする",
                },
            },
            bl_aij_angling_hook = {
                name = "釣りフック",
                text = {
                    "ブラインドが選択された場合、プレイされたすべてのカードまたは",
                    "このアンティを破棄したカードをすべて破棄する",
                },
            },
            bl_aij_aureate_coin = {
                name = "金貨コイン",
                text = {
                    "+0.1X $1 がこのアンティを費やしたときのベース",
                },
            },
            bl_aij_cerulean_bell_GL = {
                name = "セルリアンベル",
                text = {
                    "プレイまたはディスカード時に、1 ランダムカードの選択を解除し、",
                    "手札にある別のカードを選ぶ",
                },
            },
            bl_aij_crimson_heart_GL = {
                name = "クリムゾンハート",
                text = {
                    "それぞれの手にさらに 1 人のジョーカーがデバフされる",
                },
            },
            bl_aij_fallen_falcon = {
                name = "フォールン・ファルコン",
                text = {
                    "ラウンドの最初のドローで、利用可能な最高レベルのポーカー",
                    "ハンドをプレイし、それをスコア要件に追加する",
                },
            },
            bl_aij_golden_string = {
                name = "黄金の糸",
                text = {
                    "プレイしたカードごとに $2 を失うすべてのカードは $0 以下で",
                    "デバフされる",
                },
            },
            bl_aij_golden_string_GL = {
                name = "黄金の糸",
                text = {
                    "カードを引くごとに $2 を失い、すべてのカードは $#1# 以下で",
                    "デバフされる",
                },
            },
            bl_aij_golden_string_GL_collection = {
                name = "黄金の糸",
                text = {
                    "カードを引くごとに $2 を失い、すべてのカードは （開始資金）",
                    "以下でデバフされる",
                },
            },
            bl_aij_mysterious_myriad = {
                name = "ミステリアス・ミリアド",
                text = {
                    "5 カード未満のスコアを獲得したハンドは、5 未満のカードごとに",
                    "20% スコアを失う",
                },
            },
            bl_aij_obsidian_blade = {
                name = "オブシディアンブレード",
                text = {
                    "-1 ハンド -1 ディスカード -1 ハンドサイズラージブラインド",
                },
            },
            bl_aij_obsidian_blade_GL = {
                name = "オブシディアンブレード",
                text = {
                    "1 ハンド、1 ディスカード、特大ブラインド",
                },
            },
            bl_aij_rubber_duck = {
                name = "ラバーアヒル",
                text = {
                    "基本チップまたは基本倍率はレベル 1 として得点される",
                },
            },
            bl_aij_rubber_duck_GL = {
                name = "ラバーアヒル",
                text = {
                    "基本チップと倍率はレベル 1 としてスコア化される",
                },
            },
            bl_aij_silver_stag = {
                name = "シルバースタッグ",
                text = {
                    "このアンティで破棄されたカードを除くすべてのカードがデバフ",
                    "される",
                },
            },
            bl_aij_tarnished_tile = {
                name = "変色したタイル",
                text = {
                    "ハンドサイズが2倍になる",
                    "最初のドロー後、デッキに残ったカードをすべてディスカードする",
                },
            },
            bl_aij_tarnished_tile_GL = {
                name = "変色したタイル",
                text = {
                    "3回目のドロー後にデッキ内のカードをすべて捨てる",
                },
            },
            bl_aij_the_alder = {
                name = "アルダー",
                text = {
                    "すべてのハートは最後に描かれます",
                },
            },
            bl_aij_the_alder_GL = {
                name = "アルダー",
                text = {
                    "ハートは描けない",
                },
            },
            bl_aij_the_ancestor = {
                name = "祖先",
                text = {
                    "このラウンドで破棄されたポーカーハンドはプレイできません",
                },
            },
            bl_aij_the_ancestor_GL = {
                name = "祖先",
                text = {
                    "このアンティで破棄されたポーカーハンドはプレイできません",
                },
            },
            bl_aij_the_apple = {
                name = "アップル",
                text = {
                    "1 ハンドでブラインドを獲得した場合、左端のジョーカーを破壊する",
                },
            },
            bl_aij_the_arm_GL = {
                name = "腕",
                text = {
                    "プレイされるすべてのポーカーハンドのレベルを下げる",
                },
            },
            bl_aij_the_arrow = {
                name = "矢",
                text = {
                    "得点するには、このブラインドで",
                    "プレイした全ハンドの得点を上回る必要がある",
                },
            },
            bl_aij_the_ash = {
                name = "ザ・アッシュ",
                text = {
                    "+0.25X 以下のカードごとのベース #1# フルデッキ",
                },
            },
            bl_aij_the_ash_GL = {
                name = "ザ・アッシュ",
                text = {
                    "+0.25X 以下のカードごとのベース #1# フルデッキ",
                },
            },
            bl_aij_the_aspen = {
                name = "アスペン",
                text = {
                    "+2X ブラインドごとのベースがこのアンティを破りました",
                },
            },
            bl_aij_the_aspen_GL = {
                name = "アスペン",
                text = {
                    "+2X ブラインドごとのベースがこのアンティを破りました",
                },
            },
            bl_aij_the_assistant = {
                name = "助手",
                text = {
                    "こちらの戦略に刺さる",
                    "ボスブラインドに変わる",
                },
            },
            bl_aij_the_auroch = {
                name = "オーロックス",
                text = {
                    "すべての#1# と #2# は裏向きに描画される",
                },
            },
            bl_aij_the_beast = {
                name = "野獣",
                text = {
                    "敗北した場合、すべてのフードジョーカーを破壊する",
                },
            },
            bl_aij_the_beast_GL = {
                name = "野獣",
                text = {
                    "手札がプレイされたときにすべてのフードジョーカーを破壊する",
                },
            },
            bl_aij_the_beith = {
                name = "ザ・ビース",
                text = {
                    "すべてのダイヤは最後に描画される",
                },
            },
            bl_aij_the_beith_GL = {
                name = "ザ・ビース",
                text = {
                    "ダイヤは描けない",
                },
            },
            bl_aij_the_birch = {
                name = "バーチ",
                text = {
                    "偶数ランクはすべてデバフされる",
                },
            },
            bl_aij_the_birch_GL = {
                name = "バーチ",
                text = {
                    "プレイされた偶数カードごとにスコアが 20% 減る",
                },
            },
            bl_aij_the_bird = {
                name = "鳥",
                text = {
                    "得点計算前にランダムな",
                    "ジョーカー1枚の位置を変える",
                },
            },
            bl_aij_the_blush = {
                name = "ザ・ブラッシュ",
                text = {
                    "一度に5 カードを捨てなければなりません",
                },
            },
            bl_aij_the_branch = {
                name = "ブランチ",
                text = {
                    "すべてのフェイスカードは最後に引かれます",
                },
            },
            bl_aij_the_branch_GL = {
                name = "ブランチ",
                text = {
                    "フェイスカードは引けない",
                },
            },
            bl_aij_the_brilliance = {
                name = "輝き",
                text = {
                    "必要スコアに2回到達する必要がある",
                    "ハンド+2",
                },
            },
            bl_aij_the_brimstone = {
                name = "ブリムストーン",
                text = {
                    "捨てるたびにお金の半分を失う",
                },
            },
            bl_aij_the_brimstone_GL = {
                name = "ブリムストーン",
                text = {
                    "ディスカードで$#1#を失う",
                },
            },
            bl_aij_the_brimstone_GL_collection = {
                name = "ブリムストーン",
                text = {
                    "負け （X0.5 開始資金）",
                    "廃棄時",
                },
            },
            bl_aij_the_bullion = {
                name = "地金",
                text = {
                    "プレイされた強化カードごとに-$5",
                },
            },
            bl_aij_the_business = {
                name = "取引",
                text = {
                    "勝利すると左右どちらかの端のジョーカーを破壊し",
                    "エターナルのコモンジョーカーを1枚生成する",
                },
            },
            bl_aij_the_celebration = {
                name = "祝賀会",
                text = {
                    "+0.5X 未使用の手札ごとにベース/このアンティを破棄",
                },
            },
            bl_aij_the_celebration_GL = {
                name = "祝賀会",
                text = {
                    "+0.25X このランで使用されなかった各ハンドのベース",
                },
            },
            bl_aij_the_child = {
                name = "子ども",
                text = {
                    "得点する全カードのランクが1下がる",
                },
            },
            bl_aij_the_clay = {
                name = "ザ・クレイ",
                text = {
                    "ランダムなラージブラインド",
                },
            },
            bl_aij_the_clay_GL = {
                name = "ザ・クレイ",
                text = {
                    "ランダムなラージブラインド",
                },
            },
            bl_aij_the_clown = {
                name = "道化師",
                text = {
                    "最初にカードを引いたとき",
                    "ランダムな手札5枚を自動でプレイし",
                    "その得点を必要スコアに加える",
                },
            },
            bl_aij_the_club_GL = {
                name = "クラブ",
                text = {
                    "プレイしたクラブごとにスコアを 20% 減らする",
                },
            },
            bl_aij_the_conflagration = {
                name = "大火",
                text = {
                    "勝利時にプレイしたカードと",
                    "残った手札をすべて破壊する",
                },
            },
            bl_aij_the_connection = {
                name = "つながり",
                text = {
                    "このブラインドの必要スコアを超えた分が",
                    "以降すべてのブラインドの必要スコアに加わる",
                },
            },
            bl_aij_the_dagger = {
                name = "ダガー",
                text = {
                    "手にはスペードまたはクラブが含まれている必要があります",
                },
            },
            bl_aij_the_dagger_GL = {
                name = "ダガー",
                text = {
                    "手にハートやダイヤが含まれていてはなりません",
                },
            },
            bl_aij_the_day = {
                name = "その日",
                text = {
                    "手にはハートまたはダイヤが含まれている必要があります",
                },
            },
            bl_aij_the_day_GL = {
                name = "その日",
                text = {
                    "手にスペードやクラブを含めてはいけません",
                },
            },
            bl_aij_the_divine = {
                name = "神性",
                text = {
                    "ハンドに強化カードが1枚以上必要",
                },
            },
            bl_aij_the_dragon = {
                name = "ドラゴン",
                text = {
                    "手札が空になるまでカードを引けない",
                },
            },
            bl_aij_the_earth = {
                name = "大地",
                text = {
                    "ハンドをプレイした後、手札に残った",
                    "カードはすべてストーンカードになる",
                },
            },
            bl_aij_the_elbow = {
                name = "肘",
                text = {
                    "プレイされた強化はランダム化される",
                },
            },
            bl_aij_the_elk = {
                name = "エルク",
                text = {
                    "このアンティの前にプレイされたポーカーハンドはプレイ",
                    "できません",
                },
            },
            bl_aij_the_elm = {
                name = "エルム",
                text = {
                    "すべてのクラブは最後に抽選される",
                },
            },
            bl_aij_the_elm_GL = {
                name = "エルム",
                text = {
                    "クラブは引けない",
                },
            },
            bl_aij_the_enigma = {
                name = "エニグマ",
                text = {
                    "強化されたカードは最後に引かれます",
                },
            },
            bl_aij_the_enigma_GL = {
                name = "エニグマ",
                text = {
                    "強化カードは引けない",
                },
            },
            bl_aij_the_evergreen = {
                name = "エバーグリーン",
                text = {
                    "+0.25X フルデッキの上記#1# のカードごとのベース",
                },
            },
            bl_aij_the_evergreen_GL = {
                name = "エバーグリーン",
                text = {
                    "+0.25X フルデッキの上記#1# のカードごとのベース",
                },
            },
            bl_aij_the_field = {
                name = "フィールド",
                text = {
                    "#1# カードが破棄されるまで、すべてのカードはデバフされる",
                },
            },
            bl_aij_the_fig = {
                name = "イチジク",
                text = {
                    "それぞれの手札の最初と最後の得点カードにデバフを与える",
                },
            },
            bl_aij_the_figure = {
                name = "フィギュア",
                text = {
                    "手札に3 以上のフェイスカードを含めることはできません",
                },
            },
            bl_aij_the_fish_GL = {
                name = "魚",
                text = {
                    "各カードを捨てるたびに裏向きに引いたカード",
                },
            },
            bl_aij_the_flint_GL = {
                name = "フリント",
                text = {
                    "ベースチップはレベル 0 としてスコア化される",
                },
            },
            bl_aij_the_frost = {
                name = "ザ・フロスト",
                text = {
                    "プレイ後、手札の1ランダムなカードを破壊する",
                },
            },
            bl_aij_the_giant = {
                name = "巨人",
                text = {
                    "非常に大きなブラインド +2 ハンド",
                },
            },
            bl_aij_the_gift = {
                name = "ギフト",
                text = {
                    "お金を$0に設定すると、プレイまたは破棄されたカードごとに$1を",
                    "獲得できる",
                },
            },
            bl_aij_the_gift_GL = {
                name = "ギフト",
                text = {
                    "お金を$10に設定する",
                },
            },
            bl_aij_the_goad_GL = {
                name = "ザ・ゴード",
                text = {
                    "スペードをプレイするごとにスコアが 20% 減る",
                },
            },
            bl_aij_the_god = {
                name = "神様",
                text = {
                    "すべてのカードが得点する必要があります",
                },
            },
            bl_aij_the_god_GL = {
                name = "神様",
                text = {
                    "3 以上のカードを獲得する必要があります",
                },
            },
            bl_aij_the_groan = {
                name = "うめき声",
                text = {
                    "+1X ハンドをプレイした後のベース",
                },
            },
            bl_aij_the_groan_GL = {
                name = "うめき声",
                text = {
                    "+2X ハンドをプレイした後のベース",
                },
            },
            bl_aij_the_hazel = {
                name = "ヘーゼル",
                text = {
                    "敗北すると、ランダムなジョーカーにレンタルを適用する",
                },
            },
            bl_aij_the_head_GL = {
                name = "頭",
                text = {
                    "ハートをプレイするごとにスコアが 20% 減る",
                },
            },
            bl_aij_the_heart = {
                name = "心臓",
                text = {
                    "#1#を含むハンドをプレイするまで",
                    "ハンドが得点しない",
                },
            },
            bl_aij_the_hoard = {
                name = "ザ・ホード",
                text = {
                    "選択された場合、このアンティがこのブラインドに追加する超過",
                    "スコア",
                },
            },
            bl_aij_the_hoard_GL = {
                name = "ザ・ホード",
                text = {
                    "このアンティのブラインドが小さくなり、選択するとこの",
                    "アンティに超過スコアがこのブラインドに追加される",
                },
            },
            bl_aij_the_hook_GL = {
                name = "フック",
                text = {
                    "プレイされた各ハンドの1 ランダムな得点カードを破棄する",
                },
            },
            bl_aij_the_horror = {
                name = "ホラー",
                text = {
                    "ラウンド最後のハンドで、ランダムなジョーカーにペリシャブルが付く",
                },
            },
            bl_aij_the_ingot = {
                name = "インゴット",
                text = {
                    "ラウンドの最終ハンドですべてのジョーカーにエターナルを適用する",
                },
            },
            bl_aij_the_journey = {
                name = "旅",
                text = {
                    "このラウンドで #1# が得点されれば、+1 アンティを獲得する",
                },
            },
            bl_aij_the_kind = {
                name = "種類",
                text = {
                    "このアンティ、タグをスキップした方が良いですが、+2X",
                    "スキップをベースにする",
                },
            },
            bl_aij_the_lake = {
                name = "湖",
                text = {
                    "このアンティでプレイしたカードは最後に引かれます",
                },
            },
            bl_aij_the_life = {
                name = "人生",
                text = {
                    "すべての得点カードが腐りやすくなる",
                },
            },
            bl_aij_the_life_GL = {
                name = "人生",
                text = {
                    "プレイしたカードはすべて腐りやすくなる",
                },
            },
            bl_aij_the_loan = {
                name = "ローン",
                text = {
                    "勝ち手でプレイしたカードはすべてレンタルになる",
                },
            },
            bl_aij_the_loan_GL = {
                name = "ローン",
                text = {
                    "敗北すると、デッキに残っている#2#分の#1#カードがレンタルになる",
                },
            },
            bl_aij_the_man = {
                name = "その男",
                text = {
                    "このアンティの前にプレイしたカードは裏向きに引かれます",
                },
            },
            bl_aij_the_manacle_GL = {
                name = "手枷",
                text = {
                    "-1 プレイされる各ハンドのハンドサイズ",
                },
            },
            bl_aij_the_moon = {
                name = "月",
                text = {
                    "奇数回目のハンドでは",
                    "すべてのカードがデバフを受ける",
                },
            },
            bl_aij_the_mountain = {
                name = "山",
                text = {
                    "必要スコアが非常に高い",
                    "ハンドサイズ+1",
                },
            },
            bl_aij_the_multitude = {
                name = "群衆",
                text = {
                    "カードが#2#分の#1#の確率でデバフを受ける",
                    "ラウンド終了時にデッキに残った",
                    "デバフ付きカードを破壊する",
                },
            },
            bl_aij_the_neck = {
                name = "首",
                text = {
                    "一度に捨てられるのは1 カードのみです",
                },
            },
            bl_aij_the_need = {
                name = "必要性",
                text = {
                    "ハンドがスコアを獲得するには、少なくとも $20 が必要",
                },
            },
            bl_aij_the_need_GL = {
                name = "必要性",
                text = {
                    "ハンドがスコアを獲得するには、少なくとも $#1# が必要",
                },
            },
            bl_aij_the_need_GL_collection = {
                name = "必要性",
                text = {
                    "少なくとも （X1.5 開始資金） が必要",
                    "ハンドが得点するために",
                },
            },
            bl_aij_the_needle_GL = {
                name = "針",
                text = {
                    "1 ハンドのみをプレイする",
                },
            },
            bl_aij_the_oak = {
                name = "ザオーク",
                text = {
                    "右端のジョーカーにデバフを与える",
                },
            },
            bl_aij_the_oil = {
                name = "ザ・オイル",
                text = {
                    "強化されたカードは、引いたときに#2#分の#1#の確率で捨てられ",
                    "ます",
                },
            },
            bl_aij_the_ox_GL = {
                name = "ザ・オックス",
                text = {
                    "ポーカーハンドが 5 以上プレイされた場合、お金を $0 に設定する",
                },
            },
            bl_aij_the_pair = {
                name = "一対",
                text = {
                    "手札にペアが必要",
                },
            },
            bl_aij_the_pear = {
                name = "洋ナシ",
                text = {
                    "プレイ後、手札にあるカードのスートとランクをランダム化する",
                },
            },
            bl_aij_the_pear_GL = {
                name = "洋ナシ",
                text = {
                    "プレイ後、プレイしたカードのスーツとランクをランダム化する",
                },
            },
            bl_aij_the_plant_GL = {
                name = "植物",
                text = {
                    "プレイされたフェイスカードごとにスコアが 20% 減る",
                },
            },
            bl_aij_the_rains = {
                name = "雨",
                text = {
                    "勝利したハンドで得点したカードは",
                    "強化・エディション・シールをすべて失う",
                },
            },
            bl_aij_the_real = {
                name = "ザ・リアル",
                text = {
                    "カードは基本ランクとスートのみとみなされる",
                },
            },
            bl_aij_the_seed = {
                name = "種",
                text = {
                    "次のアンティのビッグブラインドはボスブラインドです",
                },
            },
            bl_aij_the_seed_GL = {
                name = "種",
                text = {
                    "次のアンティはスモールブラインド、ボスブラインド、",
                    "ショーダウンブラインドです",
                },
            },
            bl_aij_the_serpent_GL = {
                name = "蛇",
                text = {
                    "プレイまたはディスカードの後、常に最大 3 のカードを引く",
                },
            },
            bl_aij_the_shell = {
                name = "殻",
                text = {
                    "カードが#2#分の#1#の確率でデバフを受ける",
                    "カードを引くと#4#分の#3#の確率で裏向きになる",
                },
            },
            bl_aij_the_silence = {
                name = "沈黙",
                text = {
                    "得点したカードは再発動できません",
                },
            },
            bl_aij_the_solid = {
                name = "ザ・ソリッド",
                text = {
                    "プレイしたカードはすべて永遠になる",
                },
            },
            bl_aij_the_solid_GL = {
                name = "ザ・ソリッド",
                text = {
                    "捨てられたカードまたは得点されていないカードはすべて永遠になる",
                },
            },
            bl_aij_the_spear = {
                name = "槍",
                text = {
                    "最初の得点カードの各ハンドは永続的にデバフされる",
                },
            },
            bl_aij_the_spear_GL = {
                name = "槍",
                text = {
                    "勝利ハンドの得点カードは永続的にデバフされる",
                },
            },
            bl_aij_the_steed = {
                name = "スティード",
                text = {
                    "プレイ時、手札にあるデバフカード",
                },
            },
            bl_aij_the_steed_GL = {
                name = "スティード",
                text = {
                    "手札がプレイされたときにデバフ保持カード",
                },
            },
            bl_aij_the_storm = {
                name = "嵐",
                text = {
                    "得点したハンドに 3 以上のカードが含まれている場合、",
                    "プレイしたカードをすべて破壊する",
                },
            },
            bl_aij_the_storm_GL = {
                name = "嵐",
                text = {
                    "得点したカードをすべて破壊する",
                },
            },
            bl_aij_the_sun = {
                name = "太陽",
                text = {
                    "スペードとクラブは裏向きに描かれます",
                },
            },
            bl_aij_the_thorn = {
                name = "ザ・ソーン",
                text = {
                    "全ての強化カードにデバフを与える",
                },
            },
            bl_aij_the_thorn_GL = {
                name = "ザ・ソーン",
                text = {
                    "強化カードをプレイするごとにスコアが20%減る",
                },
            },
            bl_aij_the_tooth_GL = {
                name = "歯",
                text = {
                    "カードを引くごとに $1 を失う",
                },
            },
            bl_aij_the_trio = {
                name = "三つ組",
                text = {
                    "プレイまたはディスカード後に同じランクの",
                    "カードが手札に3枚あれば",
                    "ランダムな手札3枚にデバフをかける",
                },
            },
            bl_aij_the_twin = {
                name = "ザ・ツイン",
                text = {
                    "強化されたカードは裏向きでドローされる",
                },
            },
            bl_aij_the_ulcer = {
                name = "潰瘍",
                text = {
                    "-1 手札 -1 捨てる",
                },
            },
            bl_aij_the_ulcer_GL = {
                name = "潰瘍",
                text = {
                    "-2 ハンド -2 ディスカード",
                },
            },
            bl_aij_the_umbilical = {
                name = "へその緒",
                text = {
                    "各ハンドでランダムなカード1枚に印が付き",
                    "印付きカードはプレイもディスカードもできない",
                },
            },
            bl_aij_the_wall_GL = {
                name = "ザ・ウォール",
                text = {
                    "とても大きなブラインド",
                },
            },
            bl_aij_the_wheel_GL = {
                name = "ホイール",
                text = {
                    "#2#分の#1# カードは裏向きに引かれます",
                },
            },
            bl_aij_the_willow = {
                name = "ヤナギ",
                text = {
                    "すべてのスペードは最後に引かれます",
                },
            },
            bl_aij_the_willow_GL = {
                name = "ヤナギ",
                text = {
                    "スペードは引けない",
                },
            },
            bl_aij_the_window_GL = {
                name = "窓",
                text = {
                    "ダイヤをプレイするごとにスコアが 20% 減る",
                },
            },
            bl_aij_the_wine = {
                name = "ワイン",
                text = {
                    "カードをプレイまたは廃棄する場合、デッキ内のカー",
                    "ドをランダムに1枚廃棄する。",
                },
            },
            bl_aij_the_worm = {
                name = "ワーム",
                text = {
                    "ブラインドを選択したときにすべてのペリシャブルジョーカーを",
                    "破壊する",
                },
            },
            bl_aij_the_wound = {
                name = "傷",
                text = {
                    "0 のディスカードが残るまでハンドは得点しません",
                },
            },
            bl_aij_the_wound_GL = {
                name = "傷",
                text = {
                    "各ハンドをプレイする前に破棄する必要があります",
                },
            },
            bl_aij_the_yew = {
                name = "イチイ",
                text = {
                    "すべての奇数ランクはデバフされる",
                },
            },
            bl_aij_the_yew_GL = {
                name = "イチイ",
                text = {
                    "プレイされた奇数カードごとにスコアが 20% 減る",
                },
            },
            bl_aij_verdant_leaf_GL = {
                name = "緑の葉",
                text = {
                    "1 ジョーカーが売れるまで、各ハンドのスコアを 90% 減らする",
                },
            },
            bl_aij_violet_vessel_GL = {
                name = "バイオレットの器",
                text = {
                    "大規模なブラインド",
                },
            },
            bl_aij_wenge_wand = {
                name = "ウェンジワンド",
                text = {
                    "強化は#2#分の#1#の確率で発動しない",
                },
            },
            bl_aij_wooden_wheel = {
                name = "木製車輪",
                text = {
                    "ブラインドが選択されている場合、左端と右端のジョーカーを",
                    "リロールする",
                },
            },
            bl_aij_wooden_wheel_GL = {
                name = "木製車輪",
                text = {
                    "ブラインドが選択されている場合、ランダムなジョーカーを",
                    "リロールする",
                },
            },
        },
        Edition = {
            e_aij_aureate = {
                name = "オーレート",
                text = {
                    "{C:money}所持金{}が{X:money,C:white}X#1#{}になる",
                    "{C:inactive}（最大{C:money}$#2#{C:inactive}）",
                },
            },
            e_aij_glimmer = {
                name = "グリマー",
                text = {
                    "{C:chips}チップ{}と{C:mult}倍率{}の差を{C:attention}#1#%{}{C:aij_plasma}縮める{}",
                },
            },
            e_aij_misprint = {
                name = "ミスプリント",
                text = {
                    "ハンドをプレイした後、この{C:attention}ジョーカー{}の",
                    "{C:attention}数値{}が{C:attention}X#1#{}～{C:attention}X#2#{}の範囲でランダムに変わる",
                },
            },
            e_aij_negative_playing_card = {
                name = "ネガティブ",
                text = {
                    "ハンドサイズ{C:dark_edition}+#1#{}",
                    "{C:inactive}（コピーしたカードからは外れる）",
                },
            },
            e_aij_silver = {
                name = "シルバー",
                text = {
                    "効果が{C:attention}X#1#{}になる",
                },
            },
            e_aij_stellar = {
                name = "ステラー",
                text = {
                    "プレイした役の{C:attention}レベル{}1につき",
                    "チップ{C:chips}+#1#{}、倍率{C:mult}+#2#{}",
                },
            },
            e_aij_stellar_alt = {
                name = "ステラー",
                text = {
                    "プレイした役の{C:attention}レベル#3#{}ごとに",
                    "チップ{C:chips}+#1#{}、倍率{C:mult}+#2#{}",
                },
            },
            e_aij_torn = {
                name = "半人前",
                text = {},
            },
        },
        Enhanced = {
            m_aij_canvas = {
                name = "キャンバスカード",
                text = {
                    "{C:attention}右隣{}のカードのランクとスートを{C:attention}コピー{}する",
                },
            },
            m_aij_charged = {
                name = "帯電カード",
                text = {
                    "このカードと{C:attention}一緒にプレイ{}したカード、または",
                    "一緒に{C:attention}手札にある{}カードの",
                    "{C:attention}強化{}の効果が{C:attention}+#1#%{}",
                },
            },
            m_aij_cloud = {
                name = "雲カード",
                text = {
                    "シャッフルすると{C:attention}必ず{}",
                    "デッキの{C:attention}上半分{}に入る",
                },
            },
            m_aij_dyscalcular = {
                name = "数え違いカード",
                text = {
                    "すべての{C:attention}数字札{}のランクとして扱う",
                    "{C:inactive}（ポーカーの役を作るときは除く）",
                },
            },
            m_aij_fervent = {
                name = "熱烈カード",
                text = {
                    "得点するとチップ{C:chips}+#2#{}",
                },
            },
            m_aij_ice = {
                name = "アイスカード",
                text = {
                    "{C:attention}必ず{}得点し、プレイ時の選択枚数制限を{C:red}無視{}する",
                    "{C:inactive}上限を超えた分のアイスカードは役に影響しない",
                },
            },
            m_aij_lunar = {
                name = "月光カード",
                text = {
                    "このカードの{C:chips}チップ{}は得点に加わらず",
                    "{C:attention}ポーカーハンド{}のチップに永続的に加わる",
                },
            },
            m_aij_memphis = {
                name = "メンフィスカード",
                text = {
                    "このランでスキップした{C:attention}ブラインド{}1回につき",
                    "倍率{X:mult,C:white}X#1#{}",
                    "{C:inactive}（現在の倍率 {X:mult,C:white}X#2#{C:inactive}）",
                },
            },
            m_aij_scorched = {
                name = "焦げカード",
                text = {
                    "ディスカードすると{C:green}#2#分の#1#{}の確率で",
                    "捨てた{C:attention}ポーカーハンド{}が{C:attention}#3#{}レベル上がる",
                },
            },
            m_aij_simulated = {
                name = "仮想カード",
                text = {
                    {
                        "各ラウンドの{C:attention}最初{}のプレイ時に",
                        "このカードは手札に{C:attention}戻る{}",
                    },
                    {
                        "{C:attention}仮想カードだけ{}を捨てた場合は",
                        "{C:red}ディスカード{}回数を消費しない",
                    },
                },
            },
            m_aij_wood = {
                name = "ウッドカード",
                text = {
                    "手札にあるとチップ{C:chips}+#3#{}",
                    "手札にある他の{C:attention}ウッドカード{}1枚につき",
                    "さらにチップ{C:chips}+#2#{}",
                    "{C:inactive}（現在のチップ {C:chips}+#1#{C:inactive}）",
                },
            },
        },
        Joker = {
            j_aij_9mm = {
                name = "9mm",
                text = {
                    "",
                },
            },
            j_aij_9ts_credits_joker = {
                name = "9TS",
                text = {
                    "「スキッビー・ディー」",
                },
            },
            j_aij_Ffwllier = {
                name = "ファフリエ",
                text = {
                    "",
                },
                unlock = {
                    "?????",
                },
            },
            j_aij_a_modest_proposal = {
                name = "ささやかな提案",
                text = {
                    "",
                },
            },
            j_aij_a_v_g_m = {
                name = "A. V. G. M",
                text = {
                    "{B:1,C:white,s:0.8}アクティブ能力",
                    "{C:money}$#2#{}を費やして{C:attention}#1#%{}のチャンスを獲得し、{C:attention}完全に",
                    "{C:attention}ランダム{}なジョーカー、消耗カード、トランプ、またはタグを",
                    "生成する",
                },
            },
            j_aij_a_young_hamlet = {
                name = "若いハムレット",
                text = {
                    "このジョーカーは、{C:attention}#3#{}[{C:inactive}#4#{}] 枚のカードが捨てられるたびに、",
                    "{C:mult}+#2#{}の倍率を獲得する",
                    "{C:inactive}（現在{C:mult}+#1#{}{C:inactive}倍率）{}",
                },
            },
            j_aij_abacus = {
                name = "そろばん",
                text = {
                    "",
                },
            },
            j_aij_abandoned_joker = {
                name = "捨てられたジョーカー",
                text = {
                    "ラウンドの最初の手でプレイされたすべての{C:attention}フェイスカード{}を",
                    "{C:red}破壊{}する",
                },
            },
            j_aij_abuse_joker = {
                name = "虐待ジョーカー",
                text = {
                    "",
                },
            },
            j_aij_adoring_joker = {
                name = "ジョーカーへの憧れ",
                text = {
                    "{C:attention}ジョーカー{}が発動した{C:attention}後{}、{C:mult}倍率{}をこの{C:attention}アンティ{}に達した{C:attention}最高{}の",
                    "{C:mult}倍率{}に設定する",
                    "{C:inactive}（現在{C:mult}#1#{}{C:inactive}倍率）{}",
                },
            },
            j_aij_akahachi = {
                name = "アカハチ",
                text = {
                    "",
                },
            },
            j_aij_alas = {
                name = "ああ！",
                text = {
                    "このジョーカーはカードが捨てられるたびに{C:chips}+#1#{}チップを獲得する",
                    "{C:inactive}（現在{C:chips}+#2#{}チップ）{}",
                },
            },
            j_aij_alexandre = {
                name = "アレクサンドル",
                text = {
                    "プレイしたハンドが{C:clubs}クラブ{}キングのみの場合、このジョーカーは",
                    "{C:mult}+#1#{}の倍率を獲得する",
                    "{C:inactive}（現在{C:mult}+#2#{}{C:inactive}倍率）{}",
                },
            },
            j_aij_alien_joker = {
                name = "エイリアンジョーカー",
                text = {
                    {
                        "{C:attention}1{}カードを強制的に選ぶ",
                    },
                    {
                        "強制的に選んだカードは、得点したときに{X:mult,C:white}X#1#{}の倍率を加える",
                    },
                },
            },
            j_aij_alleged_burger = {
                name = "疑惑のバーガー",
                text = {
                    "",
                },
            },
            j_aij_aluzinnu = {
                name = "アルジンヌ",
                text = {
                    "{C:attention}ヒエログリフ{}と{C:attention}ペトログリフ{}のバウチャーには{C:red}欠点{}はなく、{C:attention}複数{}",
                    "回表示できる",
                },
            },
            j_aij_ambrosius = {
                name = "アンブロシウス",
                text = {
                    "{C:tarot}アルカナ{}パックには{C:attention}#3#{}のオプションがあり、プレイしたハンドに",
                    "{C:paperback_crowns}クラウン{}キングのみが含まれている場合、{C:green}#2#分の#1#{}の確率が",
                    "{C:attention}#4#{}{C:attention}増加{}する",
                },
            },
            j_aij_american_comic = {
                name = "アメリカンコミック",
                text = {
                    {
                        "{C:money}ショップ{}に{C:attention}#1#{}追加スロットを追加する。これには常にランダム",
                        "な{C:common}コモン{}ジョーカーが含まれます",
                    },
                },
            },
            j_aij_anagraph = {
                name = "アナグラフ",
                text = {
                    "{C:attention}ジョーカー{}またはプレイング{C:attention}カード{}が売却または{C:red}破壊{}された場合は、",
                    "正確な{C:attention}コピー{}を作成し、すぐに再度{C:red}破壊{}する",
                },
            },
            j_aij_anatomy = {
                name = "解剖学",
                text = {
                    "",
                },
            },
            j_aij_anchor = {
                name = "アンカー",
                text = {
                    "このジョーカーと隣接するジョーカーは{C:red}破壊{}されない",
                },
            },
            j_aij_angel_number = {
                name = "エンジェルナンバー",
                text = {
                    "得点する{C:attention}7{}が1枚あるごとに",
                    "このハンドの確率の分子{C:green}+#1#{}",
                },
            },
            j_aij_angoulevent = {
                name = "アングルヴァン",
                text = {
                    "プレイしたカードをすべて追加で{C:attention}#1#{}回再発動する",
                },
                unlock = {
                    "?????",
                },
            },
            j_aij_animatronic = {
                name = "アニマトロニクス",
                text = {
                    "{C:attention}+#1#{}{C:attention}ストレート{}を含む連続ハンドごとのハンドサイズ",
                    "{C:inactive}（現在{C:attention}+#2#{}の{C:inactive}手のサイズ）{}",
                    "{C:inactive}（最大{C:attention}+#3#{}）{}",
                },
            },
            j_aij_antihero = {
                name = "アンチヒーロー",
                text = {
                    "",
                },
            },
            j_aij_antiquarian = {
                name = "古物収集家",
                text = {
                    "",
                },
            },
            j_aij_antonio = {
                name = "アントニオ",
                text = {
                    "カードが{C:attention}得点{}されると、デッキ全体にある一致する{C:attention}ランク{}",
                    "のすべてのカードが永続的に{C:mult}+#1#{}倍率を獲得する",
                },
            },
            j_aij_aphantasia = {
                name = "アファンタシア",
                text = {
                    "プレイされたすべての強化カードがカオティックになる",
                },
            },
            j_aij_aphi_credits_joker = {
                name = "Aphi",
                text = {
                    "「スキッビー・ディー」",
                },
            },
            j_aij_archy = {
                name = "アーチー",
                text = {
                    "{C:money}ショップ{}内のすべての初期{C:attention}カード{}と{C:attention}ブースターパック{}は無料です",
                },
                unlock = {
                    "?????",
                },
            },
            j_aij_arecibo_message = {
                name = "アレシボ",
                text = {
                    "プレイされたポーカーハンドの{C:planet}プラネットカード{}を保持して",
                    "いる場合、すべてのカードを再発動する",
                },
            },
            j_aij_arlecchina = {
                name = "アルレッキーナ",
                text = {
                    "{C:attention}バフーンパック{}または{C:attention}スタンダードパック{}がスキップされた場合、",
                    "このジョーカーは{X:mult,C:white}X#2#{}の倍率を獲得する",
                    "{C:inactive}（現在{X:mult,C:white}X#1#{}{C:inactive}倍率）{}",
                },
            },
            j_aij_arlecchino = {
                name = "アルレッキーノ",
                text = {
                    "{C:attention}バフーンパック{}と{C:attention}スタンダードパック{}の",
                    "候補の数が無制限になる",
                },
            },
            j_aij_arngren = {
                name = "アーングレン",
                text = {
                    "{C:money}ショップ{}内の{C:attention}+#1#{}カードスロット、{C:attention}+#1#{}ブースタースロット、",
                    "{C:attention}+#1#{}バウチャースロット",
                },
            },
            j_aij_art_of_the_deal = {
                name = "取引の芸術",
                text = {
                    "{C:money}お金{}を稼ぐと{C:mult}+#2#{}の倍率が上がります{C:money}$#3#{}以下の場合はリセット",
                    "される",
                    "{C:inactive}（現在{C:mult}+#1#{}{C:inactive}倍率）{}",
                },
            },
            j_aij_ascii = {
                name = "",
                text = {
                    "",
                },
            },
            j_aij_asphyxiation = {
                name = "窒息",
                text = {
                    "",
                },
            },
            j_aij_astrologer = {
                name = "占星術師",
                text = {
                    {
                        "{C:attention}+#1#{}セレスティアル パックを選択してください",
                    },
                    {
                        "{C:planet}惑星{}カードは、{C:attention}奇数{}アンティでは{C:mult}倍率{}バリアント、偶数アンティでは",
                        "{C:chips}チップ{}バリアントに置き換わる",
                    },
                },
            },
            j_aij_atemporal_taco = {
                name = "アテンポラルタコス",
                text = {
                    "{C:green}#2#分の#1#{}ラウンド終了時に{C:red}自壊する{}チャンス、{C:attention}-#3#{}{C:red}破壊{}されると",
                    "{C:attention}アンティ{}",
                },
            },
            j_aij_atom = {
                name = "原子",
                text = {
                    "プレイしたハンドがシングル{C:attention}エース{}の場合、{C:attention}ハイカード{}を",
                    "レベルアップする",
                },
            },
            j_aij_audiophile = {
                name = "オーディオマニア",
                text = {
                    "",
                },
            },
            j_aij_autogenes = {
                name = "自己遺伝子",
                text = {
                    {
                        "新しい手を引いた後、{C:attention}残り{}のデッキからランダムに{C:attention}#1#{}カードが",
                        "提示される",
                    },
                    {
                        "{C:attention}#2#{}を選択して手札に加えます",
                    },
                },
            },
            j_aij_autograph = {
                name = "サイン",
                text = {
                    "",
                },
            },
            j_aij_average_joe = {
                name = "アベレージ・ジョー",
                text = {
                    "{C:chips}チップ{}の残高{C:attention}#1#%{}と{C:mult}倍率{}",
                },
            },
            j_aij_bad_apple = {
                name = "バッドアップル",
                text = {
                    "{C:attention}得点したハンド{}に{C:attention}#4#{}ダークスーツと{C:attention}#3#{}{C:hearts}ライト{}スーツが含まれ",
                    "ている場合、このジョーカーは{X:mult,C:white}X#2#{}倍率を獲得する",
                    "{C:inactive,s:0.8}（ラウンド終了時に割合が変化する）{}",
                    "{C:inactive}（現在{X:mult,C:white}X#1#{}{C:inactive}倍率）{}",
                },
            },
            j_aij_bad_guy = {
                name = "悪い奴",
                text = {
                    "ブラインドが倒されたとき、{C:attention}手札{}にあるランダムなカードに",
                    "{C:attention}フォイル{}を適用する",
                },
            },
            j_aij_bad_sun = {
                name = "悪い太陽",
                text = {
                    "プレイしたハンドに{C:attention}#1#{}以上の{C:hearts}ハート{}が含まれている場合、",
                    "{C:attention}ランダム{}にプレイしたカードを破壊する",
                },
            },
            j_aij_baddata = {
                name = "悪いデータ",
                text = {},
            },
            j_aij_balance = {
                name = "バランス",
                text = {
                    "",
                },
            },
            j_aij_banana_man = {
                name = "バナナマン",
                text = {
                    {
                        "他のすべてのジョーカーを{C:attention}再発動{}する",
                    },
                    {
                        "各ジョーカーは、各ハンドの後に{C:red}破壊{}される確率が{C:green}#2#分の#1#{}",
                        "あります",
                    },
                },
            },
            j_aij_barcode = {
                name = "バーコード",
                text = {
                    "{C:attention}ブースターパック{}は{C:attention}#1#%{}安くなる",
                },
            },
            j_aij_baroque_joker = {
                name = "バロックジョーカー",
                text = {
                    "このジョーカーは、プレイしたハンドに最後にプレイしたハンド",
                    "としてスコアが含まれているがスコアされてい{C:attention}ない{}場合、{X:mult,C:white}X#2#{}",
                    "倍率を獲得する",
                    "{C:inactive}（現在{X:mult,C:white}X#1#{}{C:inactive}倍率）{}",
                },
            },
            j_aij_bartender = {
                name = "バーテンダー",
                text = {
                    "{C:attention}ショップ{}を出るときに、ランダムに保持されている{C:attention}消耗カード{}に",
                    "{C:dark_edition}フォイル{}、{C:dark_edition}ホログラム{}、または{C:dark_edition}ポリクローム{}を適用する",
                },
            },
            j_aij_base_camp = {
                name = "ベースキャンプ",
                text = {
                    "",
                },
            },
            j_aij_bat_credit_card = {
                name = "バットクレジットカード",
                text = {
                    "",
                },
            },
            j_aij_beale = {
                name = "ビール",
                text = {
                    "",
                },
            },
            j_aij_beanstalk = {
                name = "豆の木",
                text = {
                    "{C:attention}ジャック{}はデバフ、反転、またはマークを付けることができず、",
                    "常に得点する",
                },
            },
            j_aij_bear = {
                name = "クマ",
                text = {
                    "所持金が{C:money}$#2#{}を下回っているとき",
                    "不足額{C:money}$5{}につき倍率{C:mult}+#1#{}",
                    "{C:inactive}（現在の倍率 {C:mult}+#3#{C:inactive}）",
                },
            },
            j_aij_bearded_joker = {
                name = "ひげを生やしたジョーカー",
                text = {
                    "{C:mult}+#1#{}フルデッキの各強化カードの倍率",
                    "{C:inactive}（現在{C:mult}+#2#{}{C:inactive}倍率）{}",
                },
            },
            j_aij_beastly_joker = {
                name = "野獣のジョーカー",
                text = {
                    "",
                },
            },
            j_aij_bebe = {
                name = "Bébé",
                text = {
                    "{C:blue}+#1#{}ラウンドごとのハンド数",
                },
                unlock = {
                    "?????",
                },
            },
            j_aij_beefeater = {
                name = "ビーフィーター",
                text = {
                    "",
                },
            },
            j_aij_beekeeper = {
                name = "養蜂家",
                text = {
                    "ランク{C:attention}6{}のカードが手札にあると、{C:chips}+#1#{}チップと{C:mult}+#2#{}倍率が与え",
                    "られます",
                },
            },
            j_aij_beelzebub = {
                name = "ベルゼバブ",
                text = {
                    "{C:attention}トランプ{}が{C:attention}デッキ{}に追加されると、このジョーカーは{C:mult}+#1#{}倍率を",
                    "獲得する",
                    "{C:inactive}（現在{C:mult}+#2#{}{C:inactive}倍率）{}",
                },
            },
            j_aij_bell = {
                name = "ベル",
                text = {
                    "",
                },
            },
            j_aij_bellhop = {
                name = "ベルボーイ",
                text = {
                    "{C:attention}+#1#{}ショップスロット",
                },
            },
            j_aij_bermuda = {
                name = "バミューダ",
                text = {
                    "",
                },
            },
            j_aij_biancolelli = {
                name = "ビアンコレリ",
                text = {
                    "ジョーカートリガー後の{C:aij_plasma}バランス{}{C:chips}チップ{}と{C:mult}倍率{}",
                },
                unlock = {
                    "?????",
                },
            },
            j_aij_big_ears = {
                name = "大きな耳",
                text = {
                    "このジョーカーは偶数カードが得点した場合は{C:chips}+#2#{}チップを",
                    "獲得し、{C:attention}奇数{}カードが得点した場合は{C:red}-#3#{}チップを獲得する",
                    "{C:inactive}（現在{C:chips}+#1#{}チップ）{}",
                },
            },
            j_aij_big_fish = {
                name = "ビッグフィッシュ",
                text = {
                    "",
                },
            },
            j_aij_big_red = {
                name = "ビッグレッド",
                text = {
                    "{C:mult}+#1#{}{C:mult}倍率{}倍率ジョーカーのみが表示される",
                },
            },
            j_aij_bingo_card = {
                name = "ビンゴカード",
                text = {
                    "スコアを獲得したラッキー カードには、{C:green}#2#分の#1#{}のチャンスが",
                    "あり、{X:mult,C:white}X#5#{}の倍率と、{C:green}#4#分の#3#{}が再び発動しる可能性がある",
                },
            },
            j_aij_bingsu = {
                name = "ビンス",
                text = {
                    "すべての得点カードは、カードが得点されると{C:chips}+#1#{}チップ{C:green}#4#",
                    "{C:green}分の#3#{}に{C:chips}-#2#{}チップを減らすチャンスを加える",
                },
            },
            j_aij_birthday_clown = {
                name = "誕生日のピエロ",
                text = {
                    "{C:attention}アンティ{}ごとに{C:attention}1{}ラウンドだけ倍率{X:mult,C:white}X#1#{}",
                    "{C:inactive}#2#",
                },
            },
            j_aij_bit_flip = {
                name = "ビットフリップ",
                text = {
                    "ハンドがプレイされた後、{C:aij_plasma}合計スコア{}の各{C:attention}桁{}が{C:green}#2#分の#1#{}だけ",
                    "増加することがある{C:attention}#3#{}",
                },
            },
            j_aij_bits_n_bob = {
                name = "ビッツ&ボブ",
                text = {
                    "",
                },
            },
            j_aij_bizco = {
                name = "ビスコ",
                text = {
                    "{C:attention}手札{}にある左端の{C:attention}#1#{}カードが得点にカウントされる",
                },
                unlock = {
                    "?????",
                },
            },
            j_aij_black_belt = {
                name = "黒帯",
                text = {
                    "",
                },
            },
            j_aij_black_cat = {
                name = "黒猫",
                text = {
                    "",
                },
            },
            j_aij_blacklight = {
                name = "ブラックライト",
                text = {
                    "{C:attention}+#1#{}偶数アンティの手のサイズ",
                    "{C:inactive}（現在{C:attention}+#2#{}手のサイズ）{}",
                },
            },
            j_aij_blacklist = {
                name = "ブラックリスト",
                text = {
                    "売却されたジョーカーは再登場できなくなる現在ブラックリストに",
                    "登録されているジョーカー:",
                },
            },
            j_aij_blanca = {
                name = "ブランカ",
                text = {
                    "",
                },
            },
            j_aij_blanche = {
                name = "ブランシュ",
                text = {
                    "",
                },
                unlock = {
                    "?????",
                },
            },
            j_aij_blank_card = {
                name = "ブランクカード",
                text = {
                    "{C:attention}スタンダードパック{}から{C:attention}トランプ{}を選択するたびに、正確な",
                    "{C:attention}コピー{}を生成する",
                },
            },
            j_aij_blarney_stone = {
                name = "ブラーニー・ストーン",
                text = {
                    "現在の{C:attention}スコア{}の{C:attention}最初の桁{}の 3 倍に等しい{C:mult}倍率{}を追加する",
                    "{C:inactive}（現在{C:mult}+#1#{}{C:inactive}倍率）{}",
                },
            },
            j_aij_blemmya = {
                name = "ブレミア",
                text = {
                    "プレイしたハンドに{C:attention}奇数{}枚のカードが含まれている場合、中央の",
                    "カードがランダムな{C:attention}フェイスカード{}に変換される",
                },
            },
            j_aij_blind_drawn = {
                name = "ブラインドドロー",
                text = {
                    "{X:mult,C:white}X#1#{}倍率選択するまで{C:attention}ボスブラインド{}またはその効果を見ることが",
                    "できません",
                },
            },
            j_aij_blizzard = {
                name = "ブリザード",
                text = {
                    "",
                },
            },
            j_aij_blood_artist = {
                name = "ブラッドアーティスト",
                text = {
                    "ジョーカーまたはカードが売却または{C:attention}破壊{}されると、現在の",
                    "{C:attention}ブラインドの{}スコア要件が{C:attention}#1#%{}減る",
                },
            },
            j_aij_bloody_mary = {
                name = "ブラッディメアリー",
                text = {
                    "",
                },
            },
            j_aij_blue_eyes_white_joker = {
                name = "ブルーアイズ・ホワイト・ジョーカー",
                text = {
                    "ラウンドの最終ハンドが正確に{C:attention}1{}カードだった場合、そのカードは",
                    "永続的に{C:attention}+#1#{}トリガーを再度獲得する",
                },
            },
            j_aij_blue_star = {
                name = "ブルースター",
                text = {
                    "{C:green}#2#分の#1#{}{C:attention}ボーナス{}カードまたは熱烈なカードが含まれている",
                    "場合、プレイされたポーカーハンドを{C:attention}レベルアップ{}する",
                    "チャンス",
                },
            },
            j_aij_blue_tongue = {
                name = "青い舌",
                text = {
                    "",
                },
            },
            j_aij_blueberries = {
                name = "ブルーベリー",
                text = {
                    {
                        "この{C:attention}ジョーカー{}は、カードがFerventに強化されると{X:mult,C:white}X#1#{}の倍率を",
                        "獲得するが、カードが再発動されると{X:mult,C:white}X#2#{}の倍率を失う",
                        "{C:inactive}（現在{X:mult,C:white}X#3#{}{C:inactive}倍率）{}",
                    },
                    {
                        "このジョーカーを入手すると{C:tarot}魔術師{}を生成する",
                        "{C:inactive}（空きスロットが必要）",
                    },
                },
            },
            j_aij_bluet = {
                name = "ブルート",
                text = {
                    "ブラインドを選択した場合、{C:dark_edition}ネガティブ{}{C:spectral}スペクトル{}カードを生成する",
                },
                unlock = {
                    "?????",
                },
            },
            j_aij_bobblehead = {
                name = "ボブルヘッド",
                text = {
                    "最も保有しているレア度に属する{C:attention}ジョーカー{} （除く",
                    "ボブルヘッド） がより頻繁に出現する",
                    "{C:inactive}（現在{C:attention}#1#{}）{}",
                },
            },
            j_aij_bobby = {
                name = "ボビー",
                text = {
                    "",
                },
            },
            j_aij_body_pillow = {
                name = "抱き枕",
                text = {
                    "スコアのないカードをプレイすると{C:money}$#1#{}を獲得できる",
                },
            },
            j_aij_bogdonoff = {
                name = "ボグドノフ",
                text = {
                    {
                        "借金が{C:red}-$#1#{}に達する",
                    },
                    {
                        "{C:attention}ショップ{}を出るときにお金を{C:money}$0{}に設定してください",
                    },
                },
                unlock = {
                    "?????",
                },
            },
            j_aij_bon_vivant = {
                name = "ボンヴィヴァン",
                text = {
                    "{C:attention}このラウンド{}で{C:attention}#3#{}カードが得点した後、{C:money}$#1#{}を獲得",
                    "（{C:inactive}#2#{}残り）",
                },
            },
            j_aij_bonus_bob = {
                name = "ボーナスボブ",
                text = {
                    "{C:attention}ボーナスカード{}は得点すると{X:chips,C:white}X#1#{}チップを加える",
                },
            },
            j_aij_bonus_pay = {
                name = "ボーナス支給",
                text = {
                    "{C:attention}ボーナスカード{}が得点されると{C:money}$#1#{}を獲得する",
                },
            },
            j_aij_bonus_round = {
                name = "ボーナスラウンド",
                text = {
                    "獲得したすべての{C:attention}ボーナスカード{}を{C:attention}再発動{}する",
                },
            },
            j_aij_bookmaker = {
                name = "ブックメーカー",
                text = {
                    "",
                },
            },
            j_aij_booms_day = {
                name = "ブームの日",
                text = {
                    "",
                },
            },
            j_aij_boomy_the_cat = {
                name = "ブーミー・ザ・キャット",
                text = {
                    "",
                },
            },
            j_aij_borra = {
                name = "ボラ",
                text = {
                    "{C:inactive}（現在{C:mult}+#1#{}{C:inactive}倍率）{}",
                },
                unlock = {
                    "?????",
                },
            },
            j_aij_bottle_opener = {
                name = "栓抜き",
                text = {
                    "",
                },
            },
            j_aij_bouffon = {
                name = "ブフォン",
                text = {
                    "自分のデッキに残っている一番上の{C:attention}#1#{}カードの{C:attention}手札{}効果を発動する",
                },
            },
            j_aij_bowls_of_joy = {
                name = "ボウルズ・オブ・ジョイ",
                text = {
                    "{C:attention}ショップ{}で{C:green}リロール{}すると、{C:green}#2#分の#1#{}{C:green}リロール{}費用と同じ",
                    "売却額を獲得するチャンス",
                },
            },
            j_aij_boy_scout = {
                name = "ボーイスカウト",
                text = {
                    "",
                },
            },
            j_aij_bozo = {
                name = "ボゾ",
                text = {
                    "{C:attention}ボスブラインド{}を倒すとランダムな{C:dark_edition}ネガティブ{}ジョーカーを2",
                    "体生成する",
                },
                unlock = {
                    "?????",
                },
            },
            j_aij_brass_joker = {
                name = "ブラスジョーカー",
                text = {
                    "{V:1}アクティブ能力{}を持つ{C:attention}ジョーカー{}が使用されると、この",
                    "{C:attention}ジョーカー{}はその能力の使用にかかるコストに等しい倍率を獲得する",
                    "{C:inactive}（現在{C:mult}+#1#{}{C:inactive}倍率）{}",
                },
            },
            j_aij_breakey = {
                name = "ブレイキー",
                text = {
                    "",
                },
            },
            j_aij_brick_game = {
                name = "レンガゲーム",
                text = {
                    "",
                },
            },
            j_aij_broken_dreams = {
                name = "壊れた夢",
                text = {
                    "",
                },
            },
            j_aij_brusquet = {
                name = "ブルスケ",
                text = {
                    "",
                },
                unlock = {
                    "?????",
                },
            },
            j_aij_bucolic_hills = {
                name = "牧歌的な丘",
                text = {
                    "ラウンドの最後のハンドをプレイすると{C:money}$#1#{}を獲得する",
                },
            },
            j_aij_buggy = {
                name = "バギー",
                text = {
                    "",
                },
            },
            j_aij_bullet_king = {
                name = "バレットキング",
                text = {
                    "キングは得点すると手札の効果も発動する",
                },
            },
            j_aij_bullseye = {
                name = "ブルズアイ",
                text = {
                    "現在の{C:chips}チップ{}が{C:attention}10{}の倍数である場合、{X:mult,C:white}X#1#{}倍率",
                },
            },
            j_aij_bumper_sticker = {
                name = "バンパーステッカー",
                text = {
                    "プレイした{C:attention}カード{}は得点されると永続的に{C:mult}+#1#{}倍率を獲得する",
                },
            },
            j_aij_burly_joker = {
                name = "たくましいジョーカー",
                text = {
                    "",
                },
            },
            j_aij_button_moulder = {
                name = "ボタン成形機",
                text = {
                    "",
                },
            },
            j_aij_buzheninova = {
                name = "ブジェニノワ",
                text = {
                    "",
                },
                unlock = {
                    "?????",
                },
            },
            j_aij_buzzy_bee = {
                name = "バジービー",
                text = {
                    "ランク{C:attention}6{}のカードが手札にある場合、フルデッキの{C:attention}6{}ごとに{C:chips}+#1#{}",
                    "チップが与えられます",
                    "{C:inactive}（現在{C:chips}+#2#{}チップ）{}",
                },
            },
            j_aij_bygone_credits_joker = {
                name = "Bygone",
                text = {
                    "「スキッビー・ディー」",
                },
            },
            j_aij_cairoli = {
                name = "カイローリ",
                text = {
                    "{C:attention}ブースターパック{}またはブラインドがスキップされた場合、この",
                    "ジョーカーは{X:mult,C:white}X#1#{}の倍率を獲得する",
                    "{C:inactive}（現在{X:mult,C:white}X#2#{}{C:inactive}倍率）{}",
                },
                unlock = {
                    "?????",
                },
            },
            j_aij_candidate = {
                name = "候補者",
                text = {
                    {
                        "一般的なジョーカーは{C:chips}+#2#{}チップを加える",
                    },
                    {
                        "{C:uncommon}アンコモン{}および{C:rare}レア{}ジョーカーは{C:mult}+#1#{}倍率を加える",
                    },
                },
            },
            j_aij_candy_box = {
                name = "キャンディボックス",
                text = {
                    "",
                },
            },
            j_aij_candy_floss = {
                name = "綿菓子",
                text = {
                    "{C:chips}チップ{}と{C:mult}倍率{}の残高{C:attention}#1#%{}、ラウンド終了時に{C:attention}#2#%{}減る",
                },
            },
            j_aij_candy_wrapper = {
                name = "キャンディラッパー",
                text = {
                    "保有するすべての{C:attention}消耗カード{}の{C:money}売却額{}の{C:mult}+#1#{}{C:money}$1{}ごとの倍率",
                    "{C:inactive}（現在{C:mult}+#2#{}{C:inactive}倍率）{}",
                },
            },
            j_aij_cap_n_bells = {
                name = "キャップ＆ベルズ",
                text = {
                    "",
                },
            },
            j_aij_capo = {
                name = "カポ",
                text = {
                    "",
                },
            },
            j_aij_card_shop = {
                name = "カードショップ",
                text = {
                    "",
                },
            },
            j_aij_carequinha = {
                name = "カレキーニャ",
                text = {
                    "",
                },
            },
            j_aij_carousel = {
                name = "回転木馬",
                text = {
                    "得点計算後、{C:attention}得点した{}カードのスートを{C:attention}順に変更{}する",
                    "{C:inactive,s:0.8}（スペード→ハート→クラブ→ダイヤ→スペード）",
                },
            },
            j_aij_casual_absent_paranoia = {
                name = "何気なく不在のパラノイア",
                text = {
                    "",
                },
            },
            j_aij_causal_absent_paranoia = {
                name = "因果関係のないパラノイア",
                text = {
                    "",
                },
            },
            j_aij_cavalier = {
                name = "キャバリア",
                text = {
                    "{C:mult}+#2#{}この{C:attention}ラウンド{}で以前に得点した各{C:attention}ハンド{}の倍率",
                    "{C:inactive}（現在{C:mult}+#1#{}{C:inactive}倍率）{}",
                },
            },
            j_aij_caveat_emptor = {
                name = "警告エンプター",
                text = {
                    "",
                },
            },
            j_aij_cctv = {
                name = "監視カメラ",
                text = {
                    "{C:attention}ガラスカード{}が割れると{C:money}$#1#{}を獲得し、",
                    "手札からランダムに1枚を{C:attention}ガラスカード{}に強化する",
                },
            },
            j_aij_cebee_credits_joker = {
                name = "Cebee",
                text = {
                    "「スキッビー・ディー」",
                },
            },
            j_aij_cerium = {
                name = "セリウム",
                text = {
                    "プレイしたハンドが{C:attention}フラッシュハウス{}の場合、すべての得点",
                    "カードを{C:attention}#1#{}回再発動する",
                },
            },
            j_aij_cesar = {
                name = "セザール",
                text = {
                    "プレイするたびに{C:money}$#1#{}を獲得する。プレイしたハンドが",
                    "{C:diamonds}ダイヤ{}キングのみの場合、{C:money}$#2#{}ずつ増える",
                },
            },
            j_aij_chaos_orb = {
                name = "カオスオーブ",
                text = {
                    "",
                },
            },
            j_aij_charles = {
                name = "チャールズ",
                text = {
                    "プレイしたハンドがハートキングのみの場合、このジョーカーは",
                    "{X:mult,C:white}X#1#{}の倍率を獲得する",
                    "{C:inactive}（現在{X:mult,C:white}X#2#{}{C:inactive}倍率）{}",
                },
            },
            j_aij_chaufournier = {
                name = "ショーフルニエ",
                text = {
                    "",
                },
            },
            j_aij_cheddar = {
                name = "チェダー",
                text = {
                    "",
                },
            },
            j_aij_cheddar_credits_joker = {
                name = "Cheddar",
                text = {
                    "「スキッビー・ディー」",
                },
            },
            j_aij_cheerio = {
                name = "チェリオ",
                text = {
                    "{C:chips}+#1#{}{C:chips}チップ{}、損失{C:green}リロール{}に費やした金額に等しいチップ",
                },
            },
            j_aij_cheese_squigglies = {
                name = "チーズスクイギー",
                text = {
                    "このジョーカーは、ショップでの{C:green}リロール{}ごとに{X:mult,C:white}X#2#{}倍率を獲得し、",
                    "{C:attention}#4#{}のリロール後に食べられます",
                    "{C:inactive}（現在{X:mult,C:white}X#1#{}倍率、{C:attention}#3#{}/{C:attention}#4#{}）{}",
                },
            },
            j_aij_chef = {
                name = "シェフ",
                text = {
                    "{C:attention}ペリシャブル{}の{C:common}コモン{}ジョーカーが",
                    "{C:dark_edition}ネガティブ{}になり、{C:money}無料{}になる",
                },
            },
            j_aij_chelonian_citrolo = {
                name = "チェロニアン・シトロロ",
                text = {
                    "",
                },
            },
            j_aij_chimney_sweep = {
                name = "煙突掃除人",
                text = {
                    "",
                },
            },
            j_aij_chipped_joker = {
                name = "欠けたジョーカー",
                text = {
                    "{C:attention}ストーンカード{}が得点されると、{C:red}-#1#{}チップを失い、この",
                    "{C:attention}ジョーカー{}は{C:chips}+#1#{}チップを獲得する",
                    "{C:inactive}（現在{C:chips}+#2#{}チップ）{}",
                },
            },
            j_aij_chippy = {
                name = "チッピー",
                text = {
                    "このジョーカーは使用した金額に等しい{C:chips}チップ{}を獲得する",
                    "{C:inactive}（現在{C:chips}+#1#{}チップ）{}",
                },
            },
            j_aij_chips_n_dip = {
                name = "チップスアンドディップ",
                text = {
                    "{X:chips,C:white}X#1#{}チップ、負け{X:chips,C:white}X#2#{}{C:attention}ラウンド{}終了時にチップ",
                },
            },
            j_aij_chitty = {
                name = "チッティ",
                text = {
                    "{C:attention}+#1#{}{C:attention}ショップ{}で購入できるクーポン",
                },
            },
            j_aij_chocolate_coins = {
                name = "チョコレートコイン",
                text = {
                    {
                        "この{C:attention}ジョーカー{}は、カードがゴールドに強化されると{X:mult,C:white}X#1#{}倍率を",
                        "獲得するが、ブラインド中にお{C:attention}金{}を稼ぐと{X:mult,C:white}X#2#{}倍率を失う",
                        "{C:inactive}（現在{X:mult,C:white}X#3#{}{C:inactive}倍率）{}",
                    },
                    {
                        "このジョーカーを入手すると{C:tarot}悪魔{}を生成する",
                        "{C:inactive}（空きスロットが必要）",
                    },
                },
            },
            j_aij_choleric_joker = {
                name = "コレリックジョーカー",
                text = {
                    "{C:diamonds}ダイヤ{}のスーツを使用してプレイしたカードは、得点され",
                    "たときに{C:green}#2#分の#1#{}の確率でランダムな{C:tarot}タロット{}カードを生成する",
                    "{C:inactive}（空きスロットが必要）{}",
                },
            },
            j_aij_christmas_eve = {
                name = "クリスマスイブ",
                text = {
                    "{C:attention}ビッグブラインド{}が負けたときに{C:attention}クーポンタグ{}を生成する",
                },
            },
            j_aij_chromatic_aberrant = {
                name = "色収差",
                text = {
                    {
                        "ハンドに{C:attention}ストレート{}または{C:attention}フラッシュ{}が含まれる場合、この",
                        "ハンドのリストされた{C:green}確率{}に対する{C:green}+#5#{}",
                    },
                    {
                        "プレイしたハンドに{C:attention}ストレートフラッシュ{}が含まれている場合、",
                        "リストされた{C:green}確率{}が{C:attention}永続的{}に{C:green}+#3#{}",
                        "{C:inactive}（現在{C:green}+#1#{}確率）{}",
                        "{C:inactive}（最大{C:green}+#2#{}確率）{}",
                    },
                },
            },
            j_aij_chromatist = {
                name = "クロマティスト",
                text = {
                    "{X:mult,C:white}X#1#{}{C:attention}ポリクローム{}エディション発動時の倍率",
                },
            },
            j_aij_chunyu = {
                name = "チュンユ",
                text = {
                    "",
                },
                unlock = {
                    "?????",
                },
            },
            j_aij_circle_joker = {
                name = "サークルジョーカー",
                text = {
                    "{X:mult,C:white}X#1#{}得点したハンドの各{C:attention}ランク{}が以前{C:attention}より低い{}場合の倍率",
                },
            },
            j_aij_circuit_board = {
                name = "回路基板",
                text = {
                    "",
                },
            },
            j_aij_circuit_diagram = {
                name = "回路図",
                text = {
                    "チャージされたカードは常にデッキの一番上にシャッフルされる",
                },
            },
            j_aij_circus_elephant = {
                name = "サーカスの象",
                text = {
                    "",
                },
            },
            j_aij_circus_monkey = {
                name = "サーカスの猿",
                text = {
                    "ブラインドが選択されている場合、左端のジョーカーは永続的に",
                    "{C:mult}+#1#{}倍率を獲得する",
                },
            },
            j_aij_clapperdudgeon = {
                name = "クラッパーダジョン",
                text = {
                    "{C:money}$#2#{}以下の場合は、{X:mult,C:white}X#1#{}倍率",
                },
            },
            j_aij_clay = {
                name = "粘土",
                text = {
                    "",
                },
            },
            j_aij_clay_credits_joker = {
                name = "Clay",
                text = {
                    "「スキッビー・ディー」",
                },
            },
            j_aij_clay_joker = {
                name = "クレイジョーカー",
                text = {
                    "直近に{C:red}破壊{}された{C:attention}ジョーカー{}",
                    "{C:attention}#1#{}枚の能力をコピーする",
                    "{C:inactive}（クレイジョーカーを除く）",
                },
            },
            j_aij_cliff = {
                name = "崖",
                text = {
                    "",
                },
            },
            j_aij_clipart = {
                name = "クリップアート",
                text = {
                    "",
                },
            },
            j_aij_cloth_joker = {
                name = "クロスジョーカー",
                text = {
                    "{C:attention}クイーンズ{}は得点すると{X:mult,C:white}X#2#{}倍率と{C:red}-$#1#{}を加える",
                },
            },
            j_aij_cloudwatching = {
                name = "雲見",
                text = {
                    "{C:attention}+#1#{}ブラインドをスキップする際の{C:attention}タグの選択{}",
                },
            },
            j_aij_clownbug = {
                name = "カクレクマノミ",
                text = {
                    "",
                },
            },
            j_aij_clownfish = {
                name = "カクレクマノミ",
                text = {
                    "",
                },
            },
            j_aij_clowns_on_parade = {
                name = "ピエロのパレード",
                text = {
                    "プレイしたハンドに{C:attention}2{}が3枚以上含まれると",
                    "このジョーカーのチップ{C:chips}+#2#{}",
                    "{C:inactive}（現在のチップ {C:chips}+#1#{C:inactive}）",
                },
            },
            j_aij_club_card = {
                name = "クラブカード",
                text = {
                    "フルデッキに少なくとも{C:attention}#2#{}{C:clubs}クラブ{}が含まれている場合、{X:mult,C:white}X#1#{}",
                    "倍率",
                    "{C:inactive}（現在{C:attention}#3#{}）{}",
                },
            },
            j_aij_coconut = {
                name = "ココナッツ",
                text = {
                    "このジョーカーが売れたら{C:attention}ジャグルタグ{}を生成する",
                },
            },
            j_aij_coffee_thermos = {
                name = "コーヒー魔法瓶",
                text = {
                    "次の{C:attention}#1#{}ラウンドのすべてのラウンド終了効果を再発動する",
                },
            },
            j_aij_colour_test = {
                name = "カラーテスト",
                text = {
                    "ラウンドの最終{C:attention}ハンド{}で最初の得点カードに{C:attention}ポリクローム{}を適用する",
                },
            },
            j_aij_colquhoun = {
                name = "コルクフーン",
                text = {
                    "すべてのカードは{C:attention}得点{}すると{C:money}$#1#{}を獲得し、{C:attention}ボスブラインド{}",
                    "を倒すと{C:money}$#2#{}ずつ増える",
                },
                unlock = {
                    "?????",
                },
            },
            j_aij_columbina = {
                name = "コロンビーナ",
                text = {
                    "{C:spectral}スペクトル{}カードを使用すると、{C:chips}チップ{}と{C:mult}倍率{}の残高{C:attention}#1#%{}が{C:attention}#2#%{}",
                    "ずつ増える",
                },
            },
            j_aij_comedians_manifesto = {
                name = "コメディアン宣言",
                text = {
                    "{C:attention}スタンダードパック{}のキングとクイーンが{C:attention}ジャック{}になる",
                },
            },
            j_aij_comedy_of_errors = {
                name = "エラーのコメディー",
                text = {
                    "ハートが破棄されるたびに{C:money}$#1#{}を獲得する",
                },
            },
            j_aij_comic_panel = {
                name = "コミックパネル",
                text = {
                    "{C:green}#2#分の#1#{}プレイされた手札のすべてのカードにランダムな{C:attention}強化{}を",
                    "適用するチャンス",
                },
            },
            j_aij_comic_spirit = {
                name = "コミックスピリット",
                text = {
                    "",
                },
            },
            j_aij_commentator = {
                name = "コメンテーター",
                text = {
                    "",
                },
            },
            j_aij_conboi_credits_joker = {
                name = "Conboi",
                text = {
                    "「スキッビー・ディー」",
                },
            },
            j_aij_conspiracy_board = {
                name = "陰謀委員会",
                text = {
                    "",
                },
            },
            j_aij_conspiracy_theorist = {
                name = "陰謀論者",
                text = {
                    "",
                },
            },
            j_aij_constable = {
                name = "巡査",
                text = {
                    "",
                },
            },
            j_aij_cool_joker = {
                name = "クールなジョーカー",
                text = {
                    "{B:1,C:white,s:0.8}アクティブ能力",
                    "{V:1}発動{}この{C:attention}ジョーカー{}は通常であれば{X:mult,C:white}X#1#{}の倍率を",
                    "獲得する",
                },
            },
            j_aij_copper = {
                name = "銅",
                text = {
                    "プレイしたハンドがスリー オブカインドの場合、すべての得点",
                    "カードを再発動する",
                },
            },
            j_aij_copycat = {
                name = "模倣者",
                text = {
                    "{C:attention}#2#{}ラウンド後、このカードを売ってランダムなコピーの",
                    "ジョーカーを生成する",
                    "{C:inactive}（空きスロットが必要）{}",
                    "（現在{C:attention}#1#{}/{C:inactive}#2#{}）",
                },
            },
            j_aij_cordyceps = {
                name = "冬虫夏草",
                text = {
                    "",
                },
            },
            j_aij_corndog = {
                name = "コーンドッグ",
                text = {
                    "次の{C:attention}#1#{}ハンドは、どのカードがプレイされたかに関係なく、",
                    "{C:attention}ストレートフラッシュ{}として{C:attention}得点{}され、ストレートフラッシュと",
                    "みなされる",
                },
            },
            j_aij_corny_joker = {
                name = "コーニー・ジョーカー",
                text = {
                    "",
                },
            },
            j_aij_corporate_memphis = {
                name = "コーポレートメンフィス",
                text = {
                    "ブラインドがスキップされると、次の{C:money}ショップ{}は{C:attention}+#1#{}",
                    "{C:attention}ショップスロット{}を獲得する",
                    "{C:inactive}（現在{C:attention}+#2#{}ショップスロット）{}",
                },
            },
            j_aij_corpse_paint = {
                name = "コープスペイント",
                text = {
                    "得点したカードからネガティブを削除する。それぞれ、{C:green}#2#分の#1#{}の",
                    "確率でこのジョーカーは{C:attention}ハンドサイズ{}を{C:attention}+#3#{}獲得する",
                    "{C:inactive}（現在{C:attention}+#4#{}の{C:inactive}手のサイズ）{}",
                },
            },
            j_aij_coryat = {
                name = "コリアット",
                text = {
                    "{C:attention}+#1#{}ショップスロット{C:attention}+#2#{}ブースタースロット{C:attention}+#3#{}",
                    "バウチャースロット",
                },
                unlock = {
                    "?????",
                },
            },
            j_aij_cosmological_constant = {
                name = "宇宙定数",
                text = {
                    "プレイされたポーカーハンドの{C:attention}ベース{}{C:chips}チップ{}と{C:mult}倍率{}の{C:aij_plasma}バランス{}を",
                    "とる",
                },
            },
            j_aij_cosmonaut = {
                name = "宇宙飛行士",
                text = {
                    "",
                },
            },
            j_aij_coulrorachne = {
                name = "クーロラクネ",
                text = {
                    "このジョーカーは、ランク{C:attention}8{}の得点したカード{C:attention}#4#{}[{C:inactive}#3#{}] 枚ごとに",
                    "{C:mult}+#1#{}の倍率を獲得する",
                    "{C:inactive}（現在{C:mult}+#2#{}{C:inactive}倍率）{}",
                },
            },
            j_aij_courier = {
                name = "宅配便",
                text = {
                    "",
                },
            },
            j_aij_crab_in_a_bucket = {
                name = "バケツに入ったカニ",
                text = {
                    "{C:chips}+#1#{}{C:attention}デッキ全体{}の{C:attention}#2#{}上のカードごとのチップ",
                    "{C:inactive}（現在{C:chips}+#3#{}チップ）{}",
                },
            },
            j_aij_cracked_up = {
                name = "ひび割れた",
                text = {
                    "",
                },
            },
            j_aij_crapple_apple = {
                name = "クラップルアップル",
                text = {
                    "",
                },
            },
            j_aij_crayon_rubbing = {
                name = "クレヨンこすり",
                text = {
                    "{C:attention}右{}側の{C:attention}ジョーカー{}の合計数値と同じ{C:chips}チップ{}を追加する",
                    "{C:inactive}（現在{C:chips}+#1#{}チップ）{}",
                },
            },
            j_aij_creative_commons = {
                name = "クリエイティブ・コモンズ",
                text = {
                    "",
                },
            },
            j_aij_crop_circle = {
                name = "ミステリー サークル",
                text = {
                    "プラネットカード使用時に手札の{C:attention}#1#{}{C:attention}ランダム{}カードに",
                    "{C:attention}ランダム強化{}を追加",
                },
            },
            j_aij_croupier = {
                name = "ディーラー",
                text = {
                    "最終スコアがブラインド要件の 2 倍を超えた場合、{C:money}$#1#{}を獲得する",
                },
            },
            j_aij_crypto_trader = {
                name = "仮想通貨トレーダー",
                text = {
                    "{C:green}#2#分の#1#{}利息を{C:attention}#3#{}倍にするチャンス;それ以外の場合は利息は",
                    "発生しません",
                },
            },
            j_aij_cubewano = {
                name = "クベワノ",
                text = {
                    "",
                },
            },
            j_aij_cubic_joker = {
                name = "キュービックジョーカー",
                text = {
                    "",
                },
            },
            j_aij_curse_of_scotland = {
                name = "スコットランドの呪い",
                text = {
                    "ラウンド最初のハンドがちょうど{C:attention}1枚{}なら",
                    "そのカードを{C:diamonds}ダイヤ{}の{C:attention}9{}に変える",
                },
            },
            j_aij_cut_here = {
                name = "ここをカット",
                text = {
                    "このジョーカーが{C:red}破壊{}されたとき、ランダムな{C:red}レア{}ジョーカーを",
                    "生成する",
                },
            },
            j_aij_cutesy_joker = {
                name = "キュートなジョーカー",
                text = {
                    "{C:attention}消耗カード{}の{C:green}確率{}は保証されています",
                },
            },
            j_aij_cutting_board = {
                name = "まな板",
                text = {
                    "",
                },
            },
            j_aij_cyclops = {
                name = "サイクロプス",
                text = {
                    "ラウンド最初のハンドがちょうど{C:attention}1枚{}なら",
                    "このジョーカーの倍率{C:mult}+#1#{}",
                    "{C:inactive}（現在の倍率 {C:mult}+#2#{C:inactive}）",
                },
            },
            j_aij_cytherean_joker = {
                name = "シテリアンジョーカー",
                text = {
                    "",
                },
            },
            j_aij_czar = {
                name = "皇帝",
                text = {
                    {
                        "この{C:attention}ジョーカー{}はあなたの{C:attention}コレクション{}からランダムに発見され",
                        "たジョーカーの能力をコピーする。コピーされたジョーカーは",
                        "ショップがリロールされるときに変更される",
                    },
                },
            },
            j_aij_dacosta = {
                name = "ダコスタ",
                text = {
                    "隣接する{C:attention}両方{}のジョーカーの能力をコピーする",
                },
                unlock = {
                    "?????",
                },
            },
            j_aij_dandiprat = {
                name = "ダンディプラット",
                text = {
                    "ランク{C:attention}2{}、ランク{C:attention}3{}、ランク{C:attention}4{}、ランク{C:attention}5{}のカードを得点すると、",
                    "{C:money}$#1#{}を獲得する",
                },
            },
            j_aij_dapper_dan = {
                name = "ダッパー・ダン",
                text = {
                    "ジョーカーの{C:attention}エディション{}の効果が{C:attention}100%{}増える",
                    "{C:inactive}（ネガティブを除く）",
                },
            },
            j_aij_dark_angel = {
                name = "ダークエンジェル",
                text = {
                    "",
                },
            },
            j_aij_dark_magician = {
                name = "ダークマジシャン",
                text = {
                    "{C:tarot}タロット{}カード、プラネットカード、{C:spectral}スペクトル{}カードは同じ",
                    "ものとみなされる",
                },
            },
            j_aij_dark_presence = {
                name = "ダークプレゼンス",
                text = {
                    {
                        "{C:attention}手{}持ちの{C:attention}フェイスカード{}{C:attention}#1#{}の効果を追加で再度発動する",
                    },
                    {
                        "{C:attention}フェイスカード{}はプレイできません",
                    },
                },
            },
            j_aij_david = {
                name = "デビッド",
                text = {
                    "プレイしたハンドが{C:spades}スペード{}キングのみの場合、このジョーカーは",
                    "{C:chips}+#1#{}チップを獲得する",
                    "{C:inactive}（現在{C:chips}+#2#{}チップ）{}",
                },
            },
            j_aij_de_acedo = {
                name = "デ・アセド",
                text = {
                    "",
                },
            },
            j_aij_de_morra = {
                name = "デ・モラ",
                text = {
                    "",
                },
            },
            j_aij_dead_hand = {
                name = "デッドハンド",
                text = {
                    "",
                },
            },
            j_aij_dead_joker = {
                name = "デッドジョーカー",
                text = {
                    "",
                },
            },
            j_aij_dead_president = {
                name = "死んだ大統領",
                text = {
                    "この{C:attention}ジョーカー{}を売却すると、隣接する{C:attention}ジョーカー{}の{C:money}売却額{}が 2",
                    "倍になる",
                    "{C:inactive}（最大{C:money}$#1#{}）{}",
                },
            },
            j_aij_death_of_a_salesman = {
                name = "セールスマンの死",
                text = {
                    "{C:attention}#1#{}{C:red}カオス{}または{C:red}アナーキー{}の{C:attention}タグ{}が各{C:money}ショップ{}で購入可能",
                },
            },
            j_aij_debbie_downer = {
                name = "デビー・ダウナー",
                text = {
                    "",
                },
            },
            j_aij_deburau = {
                name = "デブラウ",
                text = {
                    "",
                },
                unlock = {
                    "?????",
                },
            },
            j_aij_default_credits_joker = {
                name = "Default",
                text = {
                    "「スキッビー・ディー」",
                },
            },
            j_aij_dendrochronology = {
                name = "年輪年代学",
                text = {
                    "",
                },
            },
            j_aij_dendroglyph = {
                name = "デンドログリフ",
                text = {
                    "得点した{C:attention}ウッドカード{}は、手札のウッドカードごとに{C:mult}+#1#{}の",
                    "倍率を加える",
                },
            },
            j_aij_depth_of_delusion = {
                name = "妄想の深さ",
                text = {
                    "",
                },
            },
            j_aij_desiderium = {
                name = "デジデリウム",
                text = {
                    "この{C:attention}ジョーカー{}は、{C:money}お金{}を使わずにショップを出ると、{X:mult,C:white}X#1#{}の",
                    "倍率を獲得する",
                    "{C:inactive}（現在{X:mult,C:white}X#2#{}{C:inactive}倍率）{}",
                },
            },
            j_aij_design_document = {
                name = "設計書",
                text = {
                    "いずれかの{C:green}確率{}が失敗した場合に{C:money}$#1#{}を獲得",
                },
            },
            j_aij_devil_deal = {
                name = "悪魔の取引",
                text = {
                    "ハートが{C:attention}破壊{}されると、このジョーカーは{X:mult,C:white}X#1#{}の倍率を獲得する",
                    "{C:inactive}（現在{X:mult,C:white}X#2#{}{C:inactive}倍率）{}",
                },
            },
            j_aij_diamantaire = {
                name = "ディアマンテール",
                text = {
                    "手札が{C:diamonds}ダイヤ{} 1 枚の場合は、{C:attention}ゴールドカード{}にして{C:money}$#1#{}を",
                    "獲得する",
                },
            },
            j_aij_diced_joker = {
                name = "サイコロジョーカー",
                text = {
                    "",
                },
            },
            j_aij_dicky = {
                name = "ディッキー",
                text = {
                    "ラウンド終了時に、そのラウンドで引かれなかったすべての",
                    "カードは{C:attention}永続的{}に{X:mult,C:white}X#1#{}倍率を獲得する",
                },
                unlock = {
                    "?????",
                },
            },
            j_aij_dim_bulb = {
                name = "薄暗い電球",
                text = {
                    "{X:mult,C:white}X#1#{}{C:uncommon}アンコモン{}または{C:red}レア{}{C:attention}ジョーカー{}を持っていない場合の倍率",
                },
            },
            j_aij_dim_bulb_alt = {
                name = "薄暗い電球",
                text = {
                    "{X:mult,C:white}X#1#{}他に{C:uncommon}アンコモン{}または{C:red}レア{}{C:attention}ジョーカー{}がいない場合の倍率",
                },
            },
            j_aij_diogenes = {
                name = "ディオゲネス",
                text = {
                    "",
                },
            },
            j_aij_dire_warning = {
                name = "悲惨な警告",
                text = {
                    "{C:attention}0{}ハンドが残っている状態で{C:attention}前のラウンド{}に勝った場合の{X:mult,C:white}X#1#{}",
                    "倍率",
                    "{C:inactive}(#2#)",
                },
            },
            j_aij_dirty_deed = {
                name = "汚い行為",
                text = {
                    "",
                },
            },
            j_aij_disco_joker = {
                name = "ディスコジョーカー",
                text = {
                    "{C:attention}エディション{}を持つすべてのカードを{C:attention}再発動{}する",
                },
            },
            j_aij_diver = {
                name = "ダイバー",
                text = {
                    "{C:attention}ブースターパック{}には、選択できる{C:attention}#1#{}追加オプションが含まれ",
                    "ています",
                },
            },
            j_aij_divine_comedy = {
                name = "神曲",
                text = {
                    "",
                },
            },
            j_aij_dizzard = {
                name = "ディザード",
                text = {
                    "ブラインドをスキップした後、{C:money}ショップ{}にアクセスしてください",
                },
            },
            j_aij_dizzy_lizzy = {
                name = "ディジー・リジー",
                text = {
                    "",
                },
            },
            j_aij_doctors_note = {
                name = "医師のメモ",
                text = {
                    "すべての{C:attention}番号付き{}{C:hearts}ハート{}は同じランクとみなされる",
                    "{C:inactive}（ポーカーハンドを作る場合を除く）{}",
                },
            },
            j_aij_doctors_orders = {
                name = "医師の指示",
                text = {
                    "プレイしたハンドの{C:attention}9{}ごとに{X:mult,C:white}X#1#{}の倍率、ランク{C:attention}9{}のカードが",
                    "プレイされなかった場合は{C:red}自壊する{}",
                },
            },
            j_aij_dog_treat = {
                name = "犬のおやつ",
                text = {
                    "ブラインドを{C:attention}1{}ハンドで倒すと、{C:money}$#1#{}を獲得して{C:red}自壊{}する",
                },
            },
            j_aij_doink = {
                name = "ドインク",
                text = {
                    "",
                },
                unlock = {
                    "?????",
                },
            },
            j_aij_dolly = {
                name = "ドリー",
                text = {
                    "",
                },
            },
            j_aij_dongfang = {
                name = "東方",
                text = {
                    "すべての{C:planet}惑星{}カードを追加で{C:attention}#1#{}回再発動する",
                },
                unlock = {
                    "?????",
                },
            },
            j_aij_dongtong = {
                name = "東通",
                text = {
                    {
                        "ほとんどの{C:attention}ジョーカー{}値を{C:green}100%{}増加させます",
                    },
                    {
                        "ダブルスのブラインド{C:attention}要件{}",
                    },
                },
                unlock = {
                    "?????",
                },
            },
            j_aij_dont_be_a_joker = {
                name = "ジョーカーになるな！",
                text = {
                    "{C:attention}ジョーカー{}が{C:red}破壊{}されるか{C:money}売却{}されると、売却{C:money}価値{}が増加する",
                },
            },
            j_aij_doodle = {
                name = "いたずら書き",
                text = {
                    "各{C:attention}ラウンド{}の開始時に、{C:green}#2#分の#1#{}{C:attention}ラウンド{}の残りの間、隣接する",
                    "両方のジョーカーをコピーするチャンス",
                    "{C:inactive}#3#",
                },
            },
            j_aij_doormat = {
                name = "玄関マット",
                text = {
                    "各{C:attention}ラウンド{}で最初に引いたカードに{C:attention}ランダム{}な{C:attention}強化{}を与える",
                },
            },
            j_aij_dor = {
                name = "ドール",
                text = {
                    "{X:dark_edition,C:white}#1#{}{C:attention}ラウンド{}の最終ハンドの倍率",
                },
                unlock = {
                    "?????",
                },
            },
            j_aij_dot_matrix = {
                name = "ドットマトリックス",
                text = {
                    "{C:mult}+#1#{}デッキに残っている各固有ランクの倍率",
                    "{C:inactive}（現在{C:mult}+#2#{}{C:inactive}倍率）{}",
                },
            },
            j_aij_double_sundae_1 = {
                name = "ダブルサンデー",
                text = {
                    {
                        "{C:chips}+#1#{}チップ、{C:mult}+#2#{}倍率",
                    },
                    {
                        "{C:attention}#3#{}ラウンド後に一部消費される",
                    },
                },
            },
            j_aij_double_sundae_2 = {
                name = "ダブルサンデー",
                text = {
                    {
                        "{C:chips}+#1#{}チップ、{C:attention}ラウンド{}終了時に{C:money}$#2#{}を獲得",
                    },
                    {
                        "{C:attention}#3#{}ラウンド後に一部消費される",
                    },
                },
            },
            j_aij_double_sundae_3 = {
                name = "ダブルサンデー",
                text = {
                    {
                        "{C:mult}+#1#{}倍率、{C:attention}ラウンド{}終了時に{C:money}$#2#{}を獲得",
                    },
                    {
                        "{C:attention}#3#{}ラウンド後に一部消費される",
                    },
                },
            },
            j_aij_downing_street = {
                name = "ダウニング街",
                text = {
                    "{C:attention}10{}が得点すると、{C:green}#2#分の#1#{}の確率で",
                    "ランダムな{C:attention}タグ{}を生成する",
                },
            },
            j_aij_dragon = {
                name = "ドラゴン",
                text = {
                    "",
                },
            },
            j_aij_draupnir = {
                name = "ドラウプニル",
                text = {
                    "",
                },
            },
            j_aij_drying_paint = {
                name = "塗料の乾燥",
                text = {
                    "{B:1,C:white,s:0.8}アクティブ能力",
                    "ブラインド中に、{C:attention}#3#{}{C:blue}手{}札を使ってこの",
                    "ジョーカー {X:mult,C:white}X#1#{}の倍率を加える",
                    "{C:inactive}（現在{X:mult,C:white}X#2#{}{C:inactive}倍率）{}",
                },
            },
            j_aij_duende = {
                name = "ドゥエンデ",
                text = {
                    "ラウンド終了時に、{C:attention}空{}のジョーカースロットごとに{C:money}$#2#{}を獲得する",
                    "{C:inactive}（現在{C:money}$#1#{}）{}",
                },
            },
            j_aij_durak = {
                name = "デュラック",
                text = {
                    "",
                },
            },
            j_aij_durie = {
                name = "デュリー",
                text = {
                    "",
                },
                unlock = {
                    "?????",
                },
            },
            j_aij_dwarf = {
                name = "ドワーフ",
                text = {
                    "{C:attention}ランク{}{C:attention}2{}のカード、ランク{C:attention}3{}のカード、ランク{C:attention}4{}のカード、および",
                    "ランク{C:attention}5{}のカードは、得点したときに{C:attention}#1#{}からランクを引いた",
                    "ものに等しい{C:mult}倍率{}を加える",
                },
            },
            j_aij_dynamic_duo = {
                name = "ダイナミックデュオ",
                text = {
                    "",
                },
            },
            j_aij_earl = {
                name = "伯爵",
                text = {
                    "手に持ったキングは{C:money}$#1#{}を獲得する",
                },
            },
            j_aij_egg_cc = {
                name = "\"卵\"",
                text = {
                    "ラウンド終了時にこのジョーカーの",
                    "チップ{C:chips}+#2#{}、{C:attention}売却額{}{C:money}+$#3#{}",
                    "{C:inactive}（現在のチップ {C:chips}+#1#{C:inactive}）",
                    "{C:inactive}ほら、「卵」だよ",
                },
            },
            j_aij_elder = {
                name = "長老",
                text = {
                    "最も長く所有していた他の{C:attention}ジョーカー{}の効果をコピーする",
                    "（現在{C:inactive}#1#{}）",
                },
            },
            j_aij_electric_snow = {
                name = "エレクトリックスノー",
                text = {
                    "ラウンドはラウンドの最{C:attention}後{}のハンドの後にのみ終了する",
                },
            },
            j_aij_elf = {
                name = "エルフ",
                text = {
                    "{C:attention}#2#{}ブラインドをスキップした後、このジョーカーを売って{C:attention}#3#{}",
                    "{C:attention}投資タグ{}を生成する",
                    "（現在{C:attention}#1#{}/{C:inactive}#2#{}）",
                },
            },
            j_aij_embroidery = {
                name = "刺繍",
                text = {
                    {
                        "{C:attention}キャンバスカード{}はランクされている場合、{C:mult}+#2#{}倍率を加える",
                    },
                    {
                        "{C:attention}キャンバスカード{}には{C:attention}ランク{}が{C:red}ない{}場合、{C:chips}+#1#{}チップが与えられ",
                        "ます",
                    },
                },
            },
            j_aij_emergent_pattern = {
                name = "出現パターン",
                text = {
                    "プレイされた{C:attention}手{}にちょうど{C:attention}#1#{}のカードが含まれている場合、",
                    "得点したカードを再発動する",
                },
            },
            j_aij_emo_joker = {
                name = "エモジョーカー",
                text = {
                    "",
                },
            },
            j_aij_emoticon = {
                name = "絵文字",
                text = {
                    "",
                },
            },
            j_aij_emptyhead = {
                name = "空っぽの頭",
                text = {
                    "",
                },
            },
            j_aij_enraging_photo = {
                name = "感動的な写真",
                text = {
                    "{X:mult,C:white}X#1#{}このラウンドで{C:attention}ジョーカー{}、{C:attention}消耗カード{}、または",
                    "プレイングカードが売却または{C:red}破壊{}された場合の倍率",
                    "{C:inactive}#2#",
                },
            },
            j_aij_entropy = {
                name = "エントロピ",
                text = {
                    "ブラインドがスキップされた場合に{C:attention}#1#{}{C:red}カオス{}{C:attention}タグ{}を生成する",
                },
            },
            j_aij_error_404 = {
                name = "エラー404",
                text = {
                    "ランダムに保持されているジョーカーの能力を{C:attention}コピー{}し、ハンド",
                    "ごとに変更する",
                    "{C:inactive}（現在{C:attention}#1#{}）{}",
                },
            },
            j_aij_esther = {
                name = "エスター",
                text = {
                    "",
                },
            },
            j_aij_eulenspiegel = {
                name = "オイレンシュピーゲル",
                text = {
                    {
                        "{C:attention}ボスブラインド{}を倒すと、{C:attention}-#1#{}アンティとこのジョーカーは",
                        "{X:mult,C:white}X#2#{}倍率を失う",
                        "{C:inactive}（現在{X:mult,C:white}X#3#{}{C:inactive}倍率）{}",
                    },
                    {
                        "{X:mult,C:white}X0{}倍率で自身をデバフする",
                    },
                },
                unlock = {
                    "?????",
                },
            },
            j_aij_event_horizon = {
                name = "イベントホライズン",
                text = {
                    {
                        "ハンドがレベルアップすると、この{C:attention}ジョーカー{}は{X:mult,C:white}X#1#{}の倍率を",
                        "獲得する",
                        "{C:inactive}（現在{X:mult,C:white}X#2#{}{C:inactive}倍率）{}",
                    },
                    {
                        "同じ役が2回連続レベルアップすると{C:attention}リセット{}される",
                        "{C:inactive}（最後にレベルアップしたハンド: {C:attention}#3#{}#）{}",
                    },
                },
            },
            j_aij_evergreen = {
                name = "エバーグリーン",
                text = {
                    "",
                },
            },
            j_aij_evil_eye = {
                name = "邪眼",
                text = {
                    "",
                },
            },
            j_aij_evil_joker = {
                name = "イビルジョーカー",
                text = {
                    "{X:mult,C:white}X#1#{}倍率、取得時に{C:attention}ランダム{}なジョーカーを破壊する",
                },
            },
            j_aij_evil_twin = {
                name = "エビルツイン",
                text = {
                    "",
                },
            },
            j_aij_executioner = {
                name = "死刑執行人",
                text = {
                    "{C:attention}フェイスカード{}が{C:attention}破壊{}されたとき、このジョーカーは{C:chips}+#1#{}チップを",
                    "獲得する",
                    "{C:inactive}（現在{C:chips}+#2#{}チップ）{}",
                },
            },
            j_aij_expressive_joker = {
                name = "表情豊かなジョーカー",
                text = {
                    "",
                },
            },
            j_aij_eye_test = {
                name = "視力検査",
                text = {
                    "{C:mult}+#1#{}{C:attention}前の{}{C:attention}ハンド{}よりも多くのカードが含まれる連続ハンドごとの",
                    "倍率",
                    "{C:inactive}（現在{C:mult}+#2#{}{C:inactive}倍率）{}",
                },
            },
            j_aij_fabulist = {
                name = "ファビュリスト",
                text = {
                    "",
                },
            },
            j_aij_fall_of_count_chaligny = {
                name = "シャリニー伯爵の没落",
                text = {
                    "すべての{C:attention}ブラインド{}の必要なスコアを{C:attention}1X{}Base に設定する",
                },
            },
            j_aij_family_tree = {
                name = "家系図",
                text = {
                    "{C:attention}ボスブラインド{}を倒すと、{C:attention}右{}側に{C:attention}ジョーカー{}のレア度に",
                    "関連付けられた{C:attention}タグ{}を生成する",
                    "{C:inactive}（現在{V:1}#1#{}）{}",
                },
            },
            j_aij_famulus = {
                name = "ファミュルス",
                text = {
                    "{C:tarot}タロットカード{}を使用すると{C:money}$#1#{}を獲得できる",
                },
            },
            j_aij_fantasio = {
                name = "ファンタジオ",
                text = {
                    "すべてのカードはすべてのスートとしてカウントされる",
                },
                unlock = {
                    "?????",
                },
            },
            j_aij_farceur = {
                name = "ファルスール",
                text = {
                    "{B:1,C:white,s:0.8}アクティブ能力",
                    "{C:money}$#1#{}を支払うと、このジョーカー {X:mult,C:white}X#3#{}の倍率が",
                    "付く",
                    "{C:inactive}（現在{X:mult,C:white}X#2#{}{C:inactive}倍率）{}",
                },
            },
            j_aij_fat_ed = {
                name = "ファットエド",
                text = {
                    "",
                },
            },
            j_aij_father_and_son = {
                name = "父と息子",
                text = {
                    "{C:attention}得点したハンド{}にキングとジャックが 1 人ずつ含まれている",
                    "場合、このジョーカーは{X:mult,C:white}X#2#{}の倍率を獲得する",
                    "{C:inactive}（現在{X:mult,C:white}X#1#{}{C:inactive}倍率）{}",
                },
            },
            j_aij_father_christmas = {
                name = "ファーザー・クリスマス",
                text = {
                    "いずれかのカードが{C:attention}得点{}されると{C:money}$#1#{}を獲得する",
                },
            },
            j_aij_fatuus = {
                name = "ファトゥウス",
                text = {
                    "ラウンドの最初の手にキングとクイーンしか含まれていない場合、",
                    "ランダムにプレイしたカードに{C:blue}ブルーシール{}を適用する",
                },
            },
            j_aij_feather_in_your_cap = {
                name = "帽子の中の羽根",
                text = {
                    "",
                },
            },
            j_aij_feedback_form = {
                name = "フィードバックフォーム",
                text = {
                    "プレイしたハンドのすべての固有の強化は、得点したときに",
                    "{X:mult,C:white}X#1#{}の倍率を加える",
                },
            },
            j_aij_firework = {
                name = "花火",
                text = {
                    "最初にプレイされた{C:attention}倍率{}カードは、得点したときに{X:mult,C:white}X#1#{}の倍率を",
                    "加える",
                },
            },
            j_aij_first_draft = {
                name = "初稿",
                text = {
                    "{C:attention}ジョーカー{}の能力を{C:attention}左{}にコピーする",
                },
            },
            j_aij_fish_fingers = {
                name = "フィッシュフィンガー",
                text = {
                    "{C:blue}+#1#{}ラウンドごとのハンド、負け{C:blue}-#2#{}ブラインドが{C:attention}負けた{}ときの",
                    "ハンド",
                },
            },
            j_aij_flatwoods = {
                name = "フラットウッズ",
                text = {
                    "",
                },
            },
            j_aij_fleeman = {
                name = "フリーマン",
                text = {
                    "",
                },
                unlock = {
                    "?????",
                },
            },
            j_aij_fleshgait = {
                name = "フレッシュゲイト",
                text = {
                    "{C:attention}スートパッチ{}のないカードが得点すると",
                    "ランダムな{C:attention}スートパッチ{}が付く",
                },
            },
            j_aij_flibbertigibbit = {
                name = "フリバーティギビット",
                text = {
                    "捨てられたポーカーハンドの{C:attention}ユニークなスーツ{}ごとに{C:money}$#1#{}を獲得",
                },
            },
            j_aij_flushed_face = {
                name = "紅潮した顔",
                text = {
                    "このジョーカーは、{C:attention}フラッシュ{}で得点した{C:attention}フェイスカード{}ごとに",
                    "{C:mult}+#1#{}の倍率を獲得する",
                    "{C:inactive}（現在{C:mult}+#2#{}{C:inactive}倍率）{}",
                },
            },
            j_aij_fly_agaric = {
                name = "ベニテングタケ",
                text = {
                    "もう一度すべて{V:1}発動された{}{V:1}能力{}をトリガーする",
                },
            },
            j_aij_flying_ace = {
                name = "撃墜王",
                text = {
                    "このラウンドで得点した{C:attention}エース{}の",
                    "{C:attention}スート{}1種類につき、ラウンド終了時に{C:money}$#1#{}を獲得",
                    "{C:inactive}（獲得予定額 {C:money}$#2#{C:inactive}）",
                },
            },
            j_aij_foliate_head = {
                name = "葉状頭",
                text = {
                    "",
                },
            },
            j_aij_force_the_hand_of_fate = {
                name = "運命の手を強制する",
                text = {
                    "",
                },
            },
            j_aij_fortunato = {
                name = "フォルトゥナート",
                text = {
                    {
                        "プレイ済みで得点されていないカードをすべて{C:attention}ストーンカード{}に",
                        "変える",
                    },
                    {
                        "{C:attention}ストーンカード{}が得点されると、この{C:attention}ジョーカー{}は{X:mult,C:white}X#2#{}の倍率を",
                        "獲得する",
                        "{C:inactive}（現在{X:mult,C:white}X#1#{}{C:inactive}倍率）{}",
                    },
                },
                unlock = {
                    "?????",
                },
            },
            j_aij_fortune_cookie = {
                name = "フォーチュンクッキー",
                text = {
                    "いずれかの{C:attention}ブースター{}{C:attention}パック{}を開いたときにランダムな{C:tarot}タロット{}",
                    "カードを作成し、{C:attention}#1#{}パック後に消費する",
                    "{C:inactive}（空きスロットが必要）{}",
                },
            },
            j_aij_fou_du_roi = {
                name = "フ・デュ・ロワ",
                text = {
                    "{C:green}#2#分の#1#{}プレイされた手にキングまたはクイーンが含まれて",
                    "いる場合、{C:tarot}タロット{}カードを生成するチャンス",
                    "{C:inactive}（空きスロットが必要）{}",
                },
            },
            j_aij_founding_father = {
                name = "建国の父",
                text = {
                    "{C:attention}チャージされたカード{}の効果は2倍になる",
                },
            },
            j_aij_four_leaf_clover = {
                name = "四つ葉のクローバー",
                text = {
                    "{C:attention}#1#%{}{C:attention}ショップ{}内のジョーカーのレア度が増加する確率は、",
                    "{C:attention}デッキ全体{}にあるランク{C:attention}4{}のカードの数と同じです",
                },
            },
            j_aij_foureyes = {
                name = "フォーアイズ",
                text = {
                    "",
                },
            },
            j_aij_friendly_face = {
                name = "フレンドリーな顔",
                text = {
                    "",
                },
            },
            j_aij_from_the_top_rope = {
                name = "トップロープから",
                text = {
                    "",
                },
            },
            j_aij_fruity_joker = {
                name = "フルーティージョーカー",
                text = {
                    "{C:attention}ポリクローム{}のエディションが発動するたびに倍率{C:mult}+#1#{}",
                },
            },
            j_aij_ftus = {
                name = "胎児",
                text = {
                    "",
                },
            },
            j_aij_fulehung = {
                name = "フレフン",
                text = {
                    "ブラインドが選択されている場合、{C:green}#2#分の#1#{}はスキップタグを",
                    "獲得する可能性がある",
                },
            },
            j_aij_full_monty = {
                name = "フルモンティ",
                text = {
                    "",
                },
            },
            j_aij_fun_guy = {
                name = "ファンガイ",
                text = {
                    "",
                },
            },
            j_aij_fun_is_infinite = {
                name = "楽しみは無限大",
                text = {
                    "",
                },
            },
            j_aij_funny_bone = {
                name = "ファニーボーン",
                text = {
                    "ジョーカーが売却または{C:red}破壊{}された場合、ランダムな",
                    "{C:tarot}タロットカード{}を生成する",
                },
            },
            j_aij_funny_bunch = {
                name = "ファニーバンチ",
                text = {
                    "{C:common}コモン{}ジョーカーごとに{X:mult,C:white}X#1#{}の倍率を加える",
                    "{C:inactive}（現在{X:mult,C:white}X#2#{}{C:inactive}倍率）{}",
                },
            },
            j_aij_funny_money = {
                name = "ファニーマネー",
                text = {
                    "ブラインドを{C:attention}スキップ{}すると{C:money}$#1#{}を獲得できる",
                },
            },
            j_aij_funny_phone = {
                name = "面白い電話",
                text = {
                    "このジョーカーは{C:attention}ショップ{}で{C:green}リロール{}すると{C:chips}+#3#{}-{C:chips}#2#{}チップを",
                    "獲得する",
                    "{C:inactive}（現在{C:chips}+#1#{}チップ）{}",
                },
            },
            j_aij_furbo_e_stupido = {
                name = "ファーボとバカ",
                text = {
                    "計算障害のあるカードも{C:attention}エースと{}{C:attention}ジャック{}としてカウントされる",
                },
            },
            j_aij_fuzzy_joker = {
                name = "ファジージョーカー",
                text = {
                    "{C:mult}倍率{}を{C:attention}#1#{}の次の累乗に四捨五入する",
                },
            },
            j_aij_galet = {
                name = "ガレット",
                text = {
                    "",
                },
            },
            j_aij_game_bro = {
                name = "ゲームブロ",
                text = {
                    "現在の{C:attention}ラウンド{}の 2 倍に等しい{C:mult}倍率{}を加える",
                    "{C:inactive}（現在{C:mult}+#1#{}{C:inactive}倍率）{}",
                },
            },
            j_aij_game_cartridge = {
                name = "ゲームカートリッジ",
                text = {
                    "",
                },
            },
            j_aij_gameshow = {
                name = "ゲームショー",
                text = {
                    {
                        "{C:green}#2#分の#1#{}ブラインドが選択された場合、ランダムな{C:attention}ジョーカー{}に",
                        "{C:dark_edition}フォイル{}、{C:dark_edition}ホログラム{}、または{C:dark_edition}ポリクローム{}エディションを追加する",
                        "チャンス",
                    },
                    {
                        "{C:money}-$#3#{}結果に関係なく発動した場合",
                    },
                },
            },
            j_aij_gargoyle = {
                name = "ガーゴイル",
                text = {
                    "",
                },
            },
            j_aij_gelato = {
                name = "ジェラート",
                text = {
                    "{C:attention}ラウンド{}終了時に{C:money}$#1#{}を獲得、ブラインドを{C:attention}片手{}で倒さなければ",
                    "自壊",
                },
            },
            j_aij_gematria = {
                name = "ゲマトリア",
                text = {
                    "{C:mult}+#1#{}プレイしたハンドが{C:attention}ジョーカー{}のいずれかによって言及され",
                    "た場合の倍率",
                },
            },
            j_aij_generic = {
                name = "ジェネリック",
                text = {
                    "「ゲームバランスを考慮して残りは白紙にしました」",
                },
            },
            j_aij_generic_credits_joker = {
                name = "Gen-Eric",
                text = {
                    "「スキッビー・ディー」",
                },
            },
            j_aij_geoglyph = {
                name = "地上絵",
                text = {
                    "得点カードは、{C:attention}手札{}にある同じスーツのカードごとに{C:mult}+#1#{}倍率を",
                    "加える",
                },
            },
            j_aij_gfsgfsgdsgf_credits_joker = {
                name = "gfsgfsgdsgf",
                text = {
                    "「スキッビー・ディー」",
                },
            },
            j_aij_ghosthunter = {
                name = "ゴーストハンター",
                text = {
                    "{C:spectral}スペクトル{} #1# #2# {C:money}ショップ{}",
                },
            },
            j_aij_ghoti_credits_joker = {
                name = "Ghoti",
                text = {
                    "「スキッビー・ディー」",
                },
            },
            j_aij_gille = {
                name = "ジル",
                text = {
                    "利用可能な{C:attention}タグ{}を{C:attention}リロール{}することがある",
                },
            },
            j_aij_giocoliere = {
                name = "ジョコリエーレ",
                text = {
                    "{C:attention}+#1#{}各{C:attention}ボスブラインド{}中のハンドサイズ",
                },
            },
            j_aij_glacier = {
                name = "氷河",
                text = {
                    "",
                },
            },
            j_aij_glam_joker = {
                name = "グラムジョーカー",
                text = {
                    "",
                },
            },
            j_aij_glasgow_smile = {
                name = "グラスゴー・スマイル",
                text = {
                    {
                        "{C:chips}+#1#{}{C:attention}ボーナス{}{C:attention}カード{}が得点した場合のチップ",
                    },
                    {
                        "ラウンドの{C:attention}最初{}の手札が 1 枚の{C:attention}ボーナスカード{}の場合、それを",
                        "{C:red}破壊{}し、この量を{C:chips}+#2#{}チップずつ増やす",
                    },
                },
            },
            j_aij_glass_delusion = {
                name = "ガラスの妄想",
                text = {
                    "{C:attention}ガラスカード{}が壊れたとき、{C:green}#2#分の#1#{}のチャンスで代わりに",
                    "ガラスカードのコピーを 2 枚デッキに追加する",
                },
            },
            j_aij_glassblower = {
                name = "吹きガラス職人",
                text = {
                    "",
                },
            },
            j_aij_glizzy = {
                name = "グリジー",
                text = {
                    "",
                },
            },
            j_aij_gloaming = {
                name = "輝く",
                text = {
                    "得点したカードはラウンドの最終{C:attention}ハンド{}で{X:mult,C:white}X#1#{}の倍率を加える",
                },
            },
            j_aij_glovely_joker = {
                name = "グローブリージョーカー",
                text = {
                    "",
                },
            },
            j_aij_glyphic_joker = {
                name = "グリフジョーカー",
                text = {
                    "",
                },
            },
            j_aij_gnasher = {
                name = "グナッシャー",
                text = {
                    "{B:1,C:white,s:0.8}アクティブ能力",
                    "アンティごとに 1 回、ランダムに保持されて",
                    "いる{C:attention}消耗カード{}を{C:attention}コピー{}して{C:attention}すぐに{}使用する",
                    "{C:inactive}#1#",
                },
            },
            j_aij_goblet = {
                name = "ゴブレット",
                text = {
                    "{C:attention}+#1#{}消耗カードスロット",
                },
            },
            j_aij_goblin_joker = {
                name = "ゴブリンジョーカー",
                text = {
                    "捨てた後、追加のカード{C:attention}#1#{}を引く",
                },
            },
            j_aij_golden_effigy = {
                name = "黄金の人形",
                text = {
                    "",
                },
            },
            j_aij_golden_record = {
                name = "ゴールデンレコード",
                text = {
                    "",
                },
            },
            j_aij_golitsyn = {
                name = "ゴリツィン",
                text = {
                    "",
                },
                unlock = {
                    "?????",
                },
            },
            j_aij_gong_gil = {
                name = "コンギル",
                text = {
                    "",
                },
                unlock = {
                    "?????",
                },
            },
            j_aij_gonnella = {
                name = "ゴネラ",
                text = {
                    "エディションなしのジョーカーが販売された場合、同じ",
                    "レア度の{C:dark_edition}エディション付き{}ジョーカーをランダムに{C:attention}生成{}する",
                },
                unlock = {
                    "?????",
                },
            },
            j_aij_goo_joker = {
                name = "グージョーカー",
                text = {
                    "スコアを獲得した強化カードは{C:mult}+#1#{}倍率を加える",
                },
            },
            j_aij_goofball = {
                name = "マイペース",
                text = {
                    "スコア付き{C:attention}フェイスカード{}の{C:chips}チップ{}残高{C:attention}#1#%{}と{C:mult}倍率{}",
                },
            },
            j_aij_goon_joker = {
                name = "グーンジョーカー",
                text = {
                    "{C:mult}#2#{}{C:attention}ボスブラインド{}の倍率、それ以外の場合は{C:mult}+#1#{}倍率",
                },
            },
            j_aij_gopnik = {
                name = "ゴプニク",
                text = {
                    "{B:1,C:white,s:0.8}アクティブ能力",
                    "{C:money}$#1#{}を支払うと、このジョーカー {C:mult}+#3#{}の倍率が",
                    "付く",
                    "{C:inactive}（現在{C:mult}+#2#{}{C:inactive}倍率）{}",
                },
            },
            j_aij_graffiti = {
                name = "落書き",
                text = {
                    {
                        "{B:1,C:white,s:0.8}アクティブ能力",
                        "{C:money}$#1#{}を支払って、ランダムな{C:attention}タグ{}を受け取ります",
                    },
                    {
                        "使用後はコストが{C:red}X#2#{}増加する。{C:attention}ボスブラインド{}を倒すと",
                        "リセットされる",
                    },
                },
            },
            j_aij_grandma = {
                name = "おばあちゃん",
                text = {
                    "",
                },
            },
            j_aij_grass = {
                name = "草",
                text = {
                    "「ゲーム」",
                },
            },
            j_aij_grass_credits_joker = {
                name = "Grass",
                text = {
                    "「スキッビー・ディー」",
                },
            },
            j_aij_greasepaint = {
                name = "グリースペイント",
                text = {
                    {
                        "隣接する{C:attention}ジョーカー{}にデバフを与える",
                    },
                    {
                        "デバフされた{C:attention}ジョーカー{}と{C:attention}カード{}は{X:mult,C:white}X#1#{}倍率を加える",
                    },
                },
            },
            j_aij_great_kraken = {
                name = "グレートクラーケン",
                text = {
                    "{X:mult,C:white}X#1#{}残りの各{C:blue}ハンド{}の倍率",
                    "{C:inactive}（{X:mult,C:white}X#2#{}倍率が与えられます）{}",
                    "{C:inactive}（最小{X:mult,C:white}X1{}{C:inactive}倍率）{}",
                },
            },
            j_aij_great_white_north = {
                name = "グレートホワイトノース",
                text = {
                    "プレイしたカードは{C:attention}得点{}されると{C:mult}+#1#{}の倍率を加える",
                },
            },
            j_aij_grey_goo = {
                name = "グレイ・グー",
                text = {
                    "",
                },
            },
            j_aij_grock = {
                name = "グロック",
                text = {
                    "",
                },
                unlock = {
                    "?????",
                },
            },
            j_aij_grue = {
                name = "グルー",
                text = {
                    "",
                },
            },
            j_aij_grumpy_gus = {
                name = "不機嫌なガス",
                text = {
                    "{C:mult}+#1#{}このランの未使用破棄ごとの倍率",
                    "{C:inactive}（現在{C:mult}+#2#{}{C:inactive}倍率）{}",
                },
            },
            j_aij_guillaume = {
                name = "ギョーム",
                text = {
                    "{C:attention}5{}未満のジョーカーで{C:attention}ボスブラインド{}を倒した場合、この",
                    "ジョーカーは{C:dark_edition}+#2#{}ジョーカースロットを獲得する",
                    "{C:inactive}（現在{C:dark_edition}+#1#{}ジョーカースロット）{}",
                },
                unlock = {
                    "?????",
                },
            },
            j_aij_guiser = {
                name = "ガイザー",
                text = {
                    "{C:tarot}タロット{}カード使用時、{C:attention}売却額{}の{C:money}$#1#{}を獲得",
                },
            },
            j_aij_gumdrops = {
                name = "ガムドロップ",
                text = {
                    "",
                },
            },
            j_aij_gummy = {
                name = "グミ",
                text = {
                    "{C:chips}+#1#{}チップ{C:mult}+#2#{}倍率",
                },
            },
            j_aij_hacking_minigame = {
                name = "ハッキングミニゲーム",
                text = {
                    "",
                },
            },
            j_aij_haggler = {
                name = "ハグラー",
                text = {
                    "{C:attention}ゴールドカード{}を破棄すると、{C:green}#2#分の#1#{}の確率で{C:money}$#3#{}を獲得",
                    "できる",
                },
            },
            j_aij_hairy_joker = {
                name = "ヘアリージョーカー",
                text = {
                    "",
                },
            },
            j_aij_hall_monitor = {
                name = "ホールモニター",
                text = {
                    "",
                },
            },
            j_aij_hallucinaut = {
                name = "幻覚者",
                text = {
                    "このジョーカーは{C:attention}ブースターパック{}を購入すると{X:mult,C:white}X#1#{}倍率を獲得し、",
                    "{C:attention}ボスブラインド{}を倒すとリセットされる",
                    "{C:inactive}（現在{X:mult,C:white}X#2#{}{C:inactive}倍率）{}",
                },
            },
            j_aij_halter_sack = {
                name = "ホルターサック",
                text = {
                    "{X:mult,C:white}X#3#{}倍率は、手に少なくとも{C:attention}4{}得点カードが含まれている場合、",
                    "このラウンドで使用される捨て札ごとに{X:mult,C:white}X#2#{}倍率が減る",
                },
            },
            j_aij_hand_drawn = {
                name = "手描き",
                text = {
                    "ラウンドの開始時に、最も多くプレイされたポーカーハンドが",
                    "手に入るまでカードを引き続けます",
                },
            },
            j_aij_handsome_joker = {
                name = "男前ジョーカー",
                text = {
                    "{C:attention}デッキ全体{}に含まれる{C:attention}#2#{}1枚につき",
                    "倍率{X:mult,C:white}X#1#{}",
                    "{s:0.8}対象カードは変わらない",
                    "{C:inactive}（現在の倍率 {X:mult,C:white}X#3#{C:inactive}）",
                },
            },
            j_aij_handyman = {
                name = "便利屋",
                text = {
                    "",
                },
            },
            j_aij_hangman = {
                name = "ハングマン",
                text = {
                    {
                        "プレイしたハンドに{V:1}#2#{}の{C:attention}#1#{}が含まれると",
                        "{C:tarot}吊された男{}を生成する",
                        "{C:inactive}（対象カードは各ラウンドで変わる）",
                    },
                    {
                        "{C:attention}#3#{}ラウンド発動しなければ",
                        "{C:red}自壊{}して{C:tarot}死神{}を生成する",
                    },
                },
            },
            j_aij_happy_as_larry = {
                name = "ラリーのように幸せ",
                text = {
                    {
                        "{X:mult,C:white}X#1#{}倍率",
                    },
                    {
                        "{C:green}#3#分の#2#{}{C:attention}再発動{}する{C:attention}チャンス{}、後続のトリガーごとにチャンスは",
                        "{C:green}#4#{}ずつ減る",
                    },
                },
            },
            j_aij_happygolucky = {
                name = "ハッピーゴーラッキー",
                text = {
                    "",
                },
            },
            j_aij_hardy = {
                name = "ハーディ",
                text = {
                    "得点したすべての強化カードに{C:aij_silver}シルバー{}を適用する",
                },
                unlock = {
                    "?????",
                },
            },
            j_aij_haruspex = {
                name = "ハルスペックス",
                text = {
                    "{B:1,C:white,s:0.8}アクティブ能力",
                    "{C:attention}#1#{}を捨てて、{C:attention}デッキ{}から{C:attention}#2#{}のカードを選んで",
                    "手札に加える",
                },
            },
            j_aij_harvest_spirit = {
                name = "ハーベストスピリット",
                text = {
                    "",
                },
            },
            j_aij_hat_trick = {
                name = "ハットトリック",
                text = {
                    "{C:attention}スリーカード{}をプレイしたとき",
                    "得点するカードはそれぞれ役の{C:attention}レベル{}と",
                    "同じ値の{C:mult}倍率{}を加える",
                    "{C:inactive}（現在の倍率 {C:mult}+#1#{C:inactive}）",
                },
            },
            j_aij_haughty_joker = {
                name = "傲慢なジョーカー",
                text = {
                    "{C:chips}+#1#{}プレイしたハンドに{C:attention}ロイヤルフラッシュ{}が含まれている場合は",
                    "チップ",
                },
            },
            j_aij_haunted_maze = {
                name = "お化けの迷路",
                text = {
                    "プレイしたハンドに{C:attention}ストレート{}が含まれている場合、得点カードは",
                    "ハンドがプレイされた回数に等しい{C:mult}倍率{}を加える",
                },
            },
            j_aij_headache = {
                name = "頭痛",
                text = {
                    "{C:mult}+#2#{}倍率{C:attention}+$#1#{}{C:green}リロール{}コスト",
                },
            },
            j_aij_headfooter = {
                name = "ヘッドフッター",
                text = {},
            },
            j_aij_headstone = {
                name = "墓石",
                text = {
                    "すべての{C:attention}フェイスカード{}はあなたのデッキの一番下にシャッフル",
                    "される",
                },
            },
            j_aij_heavenbrand_credits_joker = {
                name = "HEAVENBRAND",
                text = {
                    "「フランスではよく言うように、『2つ持っていきます』」",
                },
            },
            j_aij_heavy_sixer = {
                name = "ヘビーシクサー",
                text = {
                    "ランク{C:attention}6{}のすべての得点したカードに{C:dark_edition}ホログラム{}を適用する",
                },
            },
            j_aij_heel_turn = {
                name = "ヒールターン",
                text = {
                    "",
                },
            },
            j_aij_hei_tiki = {
                name = "ヘイティキ",
                text = {
                    "プレイしたハンドの最後の{C:chips}チップ{}が{C:mult}倍率{}を超えた場合、この",
                    "{C:attention}ジョーカー{}は{X:mult,C:white}X#2#{}倍率を獲得する",
                    "{C:inactive}（現在{X:mult,C:white}X#1#{}{C:inactive}倍率）{}",
                },
            },
            j_aij_heidelberg_tun = {
                name = "ハイデルベルクトゥーン",
                text = {
                    "各ショップで最初に購入した{C:attention}消耗カード{}にネガティブを適用",
                    "{C:inactive}#1#",
                },
            },
            j_aij_heisenburger_credits_joker = {
                name = "Heisenburger",
                text = {
                    "「スキッビー・ディー」",
                },
            },
            j_aij_hermaean_joker = {
                name = "ハーメアン・ジョーカー",
                text = {
                    "",
                },
            },
            j_aij_hes_outside = {
                name = "彼は外にいる",
                text = {
                    "",
                },
            },
            j_aij_heyokha = {
                name = "ヘイヨクシャ",
                text = {
                    "",
                },
            },
            j_aij_hijacker = {
                name = "ハイジャッカー",
                text = {
                    "",
                },
            },
            j_aij_his_majesty = {
                name = "陛下",
                text = {
                    "",
                },
            },
            j_aij_historian = {
                name = "歴史家",
                text = {
                    "最後に販売されたジョーカーの{C:money}売却額{}{C:attention}#1#X{}に等しい{C:mult}倍率{}を追加する",
                    "{C:inactive}（現在{C:mult}+#2#{}{C:inactive}倍率）{}",
                },
            },
            j_aij_histrio = {
                name = "ヒストリオ",
                text = {
                    "ラウンド終了時に未使用の手札ごとに{C:money}$#1#{}をさらに獲得",
                },
            },
            j_aij_hofnarr_the_barbarian = {
                name = "野蛮人ホフナール",
                text = {
                    "{C:mult}+#1#{}倍率{C:attention}最終ボスブラインドブラインド{}では、ブラインドを無効にし、",
                    "{X:mult,C:white}X#2#{}倍率を加える",
                },
            },
            j_aij_holy_bible = {
                name = "聖書",
                text = {
                    "",
                },
            },
            j_aij_homemade_comic = {
                name = "ホームメイドコミック",
                text = {
                    "スコアを獲得したチャージカードには{X:mult,C:white}X#1#{}の倍率が与えられます",
                },
            },
            j_aij_honest_john = {
                name = "正直なジョン",
                text = {
                    "",
                },
            },
            j_aij_honker = {
                name = "ホンカー",
                text = {
                    "{C:attention}倍率カード{}が得点されると、このジョーカーは{C:red}+#1#{}倍率を獲得する",
                    "{C:inactive}（現在{C:mult}+#2#{}{C:inactive}倍率）{}",
                },
            },
            j_aij_hot_sauce = {
                name = "ホットソース",
                text = {
                    "",
                },
            },
            j_aij_identity_theif = {
                name = "個人情報泥棒",
                text = {
                    "",
                },
            },
            j_aij_idiot_box = {
                name = "イディオットボックス",
                text = {
                    "",
                },
            },
            j_aij_ijoker_co = {
                name = "iジョーカー.co",
                text = {
                    "各{C:money}ショップ{}でランダムな{C:attention}タグ{}を 2 つ購入可能",
                },
            },
            j_aij_illuminated_joker = {
                name = "イルミネーションジョーカー",
                text = {
                    "ゴールドタグが出現しやすくなる",
                },
            },
            j_aij_imageboard = {
                name = "イメージボード",
                text = {
                    "各{C:attention}得点{}カードは、各{C:attention}時間{}の{C:attention}ランク{}がこのハンドで{C:attention}得点{}を",
                    "獲得したときの{C:mult}+#1#{}倍率を与えます。",
                    "{C:inactive}(例:{}{C:attention}2 2 2{}{C:inactive}->{}{C:mult}+#1#{}{C:inactive},{}{C:mult}+#2#{}{C:inactive},{}{C:mult}+#3#{}{C:inactive}){}",
                },
            },
            j_aij_imperial_bower = {
                name = "皇帝の切り札",
                text = {
                    "ラウンドで{C:attention}最初に引いたカード{}を",
                    "{C:attention}あらゆる{}ランクとスートとして扱う",
                    "{C:inactive}（ランクはポーカーの役を作るときには適用しない）",
                },
            },
            j_aij_imperious_joker = {
                name = "インペリアス・ジョーカー",
                text = {
                    "{C:mult}+#1#{}プレイしたハンドに{C:attention}ロイヤルフラッシュ{}が含まれている場合の",
                    "倍率",
                },
            },
            j_aij_in_memorium = {
                name = "追悼",
                text = {
                    {
                        "{C:spectral}スペクトルパック{}を開くたびに",
                        "このジョーカーの倍率の乗数が{X:mult,C:white}X#1#{}分増える",
                        "{C:inactive}（現在の倍率 {X:mult,C:white}X#2#{C:inactive}）",
                    },
                    {
                        "このジョーカーの入手後、次の{C:money}ショップ{}に並ぶ",
                        "パックのうち{C:attention}1つ{}が{C:spectral}スペクトルパック{}になる",
                    },
                },
            },
            j_aij_in_vino_veritas = {
                name = "ヴィーノヴェリタスで",
                text = {
                    "{C:attention}+#1#{}{C:attention}消耗カード{}使用時のハンドサイズ、{C:attention}ラウンド{}終了時に",
                    "リセット",
                    "{C:inactive}（現在{C:attention}+#2#{}手のサイズ）{}",
                    "{C:inactive}（最大{C:attention}+#3#{}手のサイズ）{}",
                },
            },
            j_aij_infamous_machine = {
                name = "悪名高いマシン",
                text = {
                    "各ラウンドの最初のドロー後、{C:attention}一番左{}の{C:attention}トランプ{}を{C:red}破壊{}すると、",
                    "この{C:attention}ジョーカー{}は{C:mult}+#1#{}の倍率を獲得する",
                    "{C:inactive}（現在{C:mult}+#2#{}{C:inactive}倍率）{}",
                },
            },
            j_aij_infinite_jest = {
                name = "終わらない冗談",
                text = {
                    "{C:attention}ボスブラインド{}を倒すと、{C:attention}すべての役{}のレベルを上げる",
                },
            },
            j_aij_infuriating_note = {
                name = "腹立たしいメモ",
                text = {
                    {
                        "倍率{X:mult,C:white}X#1#{}",
                        "このジョーカーの{C:dark_edition}ネガティブ{}版が",
                        "{C:attention}ショップ{}や{C:attention}バフーンパック{}に出現することがある",
                    },
                    {
                        "「私はあなたのものを奪ったのに、あなたは押し続けます。私は",
                        "もっと頑張らなければなりません、だからネズミはあなたのもとに",
                        "逃げてください！」 -R. R.",
                    },
                },
            },
            j_aij_infuriating_note_2 = {
                name = "腹立たしいメモ",
                text = {
                    {
                        "{X:mult,C:white}X#1#{}倍率このジョーカーのネガティブの重複が{C:attention}ショップ{}パックと",
                        "バフーンパックに出現することがある",
                    },
                    {
                        "「赤いパックもあるけど、青いパックのほうが多い。中身が何で",
                        "あれ、盗んでやる！」",
                        "",
                        "{C:inactive,s:0.8}ものをありがとう、ジョーカー！」 - R. R.{}",
                    },
                },
            },
            j_aij_infuriating_note_3 = {
                name = "腹立たしいメモ",
                text = {
                    {
                        "{X:mult,C:white}X#1#{}倍率このジョーカーのネガティブの重複が{C:attention}ショップ{}パックと",
                        "バフーンパックに出現することがある",
                    },
                    {
                        "「私があげたくないのは、あなたの顔の表情を見ることです",
                        "あるアイテムが欲しいと思ったら、その場所にこのメモがあるのを",
                        "見つけました",
                        "",
                        "{C:inactive,s:0.8}今後ともご愛顧賜りますようお願い申し上げます{}{C:inactive,s:0.8}ふふふふふふ…！」",
                        "{C:inactive,s:0.8}-R.R.{}",
                    },
                },
            },
            j_aij_infuriating_note_4 = {
                name = "腹立たしいメモ",
                text = {
                    {
                        "{X:mult,C:white}X#1#{}倍率このジョーカーのネガティブの重複が{C:attention}ショップ{}パックと",
                        "バフーンパックに出現することがある",
                    },
                    {
                        "「あなたを殺せばいいのですが、それは難しいことではないので、",
                        "笑いのためにあなたのカードを盗みました！",
                        "",
                        "{C:inactive,s:0.8}頑張れ、愚か者！」 - R. R.{}",
                    },
                },
            },
            j_aij_infuriating_note_5 = {
                name = "腹立たしいメモ",
                text = {
                    {
                        "{X:mult,C:white}X#1#{}倍率このジョーカーのネガティブの重複が{C:attention}ショップ{}パックと",
                        "バフーンパックに出現することがある",
                    },
                    {
                        "「もし私を見つけたら、ひざまずかせます",
                        "あなたはただのげっ歯類で、私はビッグチーズです!」 - R. R.",
                    },
                },
            },
            j_aij_infuriating_note_6 = {
                name = "腹立たしいメモ",
                text = {
                    {
                        "{X:mult,C:white}X#1#{}倍率このジョーカーのネガティブの重複が{C:attention}ショップ{}パックと",
                        "バフーンパックに出現することがある",
                    },
                    {
                        "「あなたは通り抜けたいのに、まだ十分にわかっていません、",
                        "その道はあなたのものです、だからネットで騙すのはやめてく",
                        "ださい！」 -R. R.",
                    },
                },
            },
            j_aij_interstate = {
                name = "州間高速道路",
                text = {
                    "{C:blue}+#1#{}ラウンドの{C:attention}最初{}のハンドに{C:attention}ストレート{}が含まれている場合、",
                    "このラウンドのハンド",
                },
            },
            j_aij_investment_banker = {
                name = "投資銀行家",
                text = {
                    "",
                },
            },
            j_aij_invisible_man = {
                name = "透明人間",
                text = {
                    "{C:attention}フェイスカード{}はすべて",
                    "{C:attention}K{}・{C:attention}Q{}・{C:attention}J{}として扱う",
                    "{C:inactive}（ポーカーの役を作るときは除く）",
                },
            },
            j_aij_iron = {
                name = "鉄",
                text = {
                    "プレイしたハンドがフォー オブカインドの場合、すべての得点",
                    "カードを再発動する",
                },
            },
            j_aij_isonomic_joker = {
                name = "アイソノミックジョーカー",
                text = {
                    "{C:paperback_stars}スター{}のカードが得点すると",
                    "{C:green}#2#分の#1#{}の確率でランダムな{C:attention}消耗カード{}を生成",
                    "{C:inactive}（空きスロットが必要）",
                },
            },
            j_aij_j_file = {
                name = "J-ファイル",
                text = {
                    "{C:attention}ラウンド{}開始時に、{C:attention}デッキ{}から{C:attention}#1#{}のカードを探して手札に",
                    "加える",
                },
            },
            j_aij_jack_horner = {
                name = "ジャック・ホーナー",
                text = {
                    "",
                },
            },
            j_aij_jack_o_lantern = {
                name = "ジャック・オ・ランタン",
                text = {
                    "",
                },
            },
            j_aij_jack_of_all_trades = {
                name = "何でも屋",
                text = {
                    "{C:attention}ジャック{}はどのスーツとしてもカウントされる",
                },
            },
            j_aij_jack_sprat = {
                name = "ジャック・スプラット",
                text = {
                    "",
                },
            },
            j_aij_jackpot = {
                name = "ジャックポット",
                text = {
                    "ラウンド終了時に{C:money}$#1#{}を獲得し、{C:attention}ラッキー{}{C:attention}カード{}が正常に発動",
                    "しると{C:money}$#2#{}ずつ増える",
                },
            },
            j_aij_jaffas = {
                name = "ヤッファス",
                text = {
                    "",
                },
            },
            j_aij_jamie_credits_joker = {
                name = "Jamie!",
                text = {
                    "「私とネバーネームドはとても良い友達です」「時々口にキスする」",
                },
            },
            j_aij_janus = {
                name = "ヤヌス",
                text = {
                    "{C:attention}エディション{}、 {C:attention}機能強化{}、 {C:attention}シール{}の{C:attention}フェイスカード{}に",
                    "対する影響は{C:green}倍増した{}",
                },
            },
            j_aij_jawbreaker = {
                name = "ジョーブレイカー",
                text = {
                    {
                        "この{C:attention}ジョーカー{}は、カードがストーンに強化されると{X:mult,C:white}X#1#{}倍率を",
                        "獲得するが、プレイされた手にスコアのないカードが含まれてい",
                        "ない場合は、{X:mult,C:white}X#2#{}倍率を失う",
                        "{C:inactive}（現在{X:mult,C:white}X#3#{}{C:inactive}倍率）{}",
                    },
                    {
                        "入手するとタワーを生成する",
                        "{C:inactive}（空きスロットが必要）{}",
                    },
                },
            },
            j_aij_jeez_louise = {
                name = "やあルイーズ",
                text = {
                    "",
                },
            },
            j_aij_jeff_the_joker = {
                name = "ジェフ・ザ・ジョーカー",
                text = {
                    "{C:attention}スモールブラインド{}が選択された場合、他のすべてのジョーカーを",
                    "{C:red}破壊{}し、このジョーカーは各ジョーカーの倍率を{X:mult,C:white}X#2#{}獲得する",
                    "{C:inactive}（現在{X:mult,C:white}X#1#{}）{}",
                },
            },
            j_aij_jelly_beans = {
                name = "ジェリービーンズ",
                text = {
                    "",
                },
            },
            j_aij_jeremy_bearimy = {
                name = "ジェレミー・ベアリミー",
                text = {
                    "ブラインドが選択されるか倒されたときに発動しるすべての{C:attention}効果{}を",
                    "{C:attention}再発動{}する",
                },
            },
            j_aij_jerko = {
                name = "ジェルコ",
                text = {
                    "{C:mult}+#1#{}倍率",
                },
            },
            j_aij_jester_zombie = {
                name = "道化師ゾンビ",
                text = {
                    "このブラインドで{C:attention}トランプ{}が{C:red}破壊{}された場合、{C:attention}得点{}されたすべての",
                    "カードを再発動する",
                    "{C:inactive}#1#{}",
                },
            },
            j_aij_jesters_privelege = {
                name = "道化師の特権",
                text = {
                    "{C:legendary}レジェンダリー{}ジョーカーが{C:attention}ショップ{}に出現することがある",
                },
            },
            j_aij_jestress = {
                name = "ジェストレス",
                text = {
                    "",
                },
            },
            j_aij_jill_sprat = {
                name = "ジル・スプラット",
                text = {
                    "",
                },
            },
            j_aij_jocker = {
                name = "ジョッカー",
                text = {
                    "",
                },
            },
            j_aij_joculator = {
                name = "ジョキュレータ",
                text = {
                    "{C:attention}0{}の捨て札と{C:attention}#1#{}の手札が残っている場合、{C:blue}ハンド{}サイズの 2 倍",
                    "までドローする",
                },
            },
            j_aij_jogre = {
                name = "ジョグレ",
                text = {
                    "ラウンド終了後の支払いを常に{C:money}$#1#{}に設定する",
                },
            },
            j_aij_joka_lisa = {
                name = "ジョカ・リサ",
                text = {
                    "{X:mult,C:white}X#1#{}上記{C:attention}7{}の{C:attention}ハンド{}{C:attention}サイズ{}ごとの倍率",
                    "{C:inactive}（現在{X:mult,C:white}X#2#{}{C:inactive}倍率）{}",
                },
            },
            j_aij_joker_baby = {
                name = "ジョーカーベイビー",
                text = {
                    "ランク{C:attention}2{}の得点したカード、ランク{C:attention}3{}のカード、ランク{C:attention}4{}のカード、",
                    "およびランク{C:attention}5{}のカードは、永続的に{C:mult}+#1#{}の倍率を獲得する",
                },
            },
            j_aij_joker_png = {
                name = "ジョーカー.png",
                text = {
                    {
                        "この{C:attention}ジョーカー{}は、あなたの{C:attention}コレクション{}からランダムに発見さ",
                        "れたジョーカーの能力をコピーする",
                    },
                    {
                        "{B:1,C:white,s:0.8}アクティブ能力",
                        "{C:money}$#1#{}を支払って、コピーされたジョーカーを",
                        "リロールする。次にこのアンティを使用するには、{C:money}+$#2#{}",
                        "がかかります",
                    },
                },
            },
            j_aij_joker_sighting = {
                name = "ジョーカーの目撃情報",
                text = {
                    "",
                },
            },
            j_aij_jokey_bear = {
                name = "ジョーキーベア",
                text = {
                    {
                        "プレイしたハンドのスコアが合計ブラインド{C:attention}要件{}を超えた場合、",
                        "{X:mult,C:white}X#1#{}倍率が獲得され、{C:money}$#2#{}",
                    },
                    {
                        "スコアが{C:attention}合計{}{C:attention}ブラインド要件{}を超えなくなるまで、再発動される",
                    },
                },
            },
            j_aij_jokia = {
                name = "ジョキア",
                text = {
                    "",
                },
            },
            j_aij_jongleur = {
                name = "ジョングルール",
                text = {
                    "{C:attention}-$#1#{}{C:green}リロール{}コスト",
                },
            },
            j_aij_joqr = {
                name = "ジョクル",
                text = {
                    "",
                },
            },
            j_aij_jpeg = {
                name = ".jpeg",
                text = {
                    "ラウンドの最初の手に反復スーツが含まれていない場合、すべての",
                    "得点計算未強化カードにワイルドを適用する",
                },
            },
            j_aij_judge = {
                name = "裁判官",
                text = {
                    "",
                },
            },
            j_aij_juggle_game = {
                name = "ジャグルゲーム",
                text = {
                    "",
                },
            },
            j_aij_jumbo_joker = {
                name = "ジャンボジョーカー",
                text = {
                    "{C:attention}ジャンボ{}パックと{C:attention}メガ{}{C:attention}ブースターパック{}のみ出現可能",
                },
            },
            j_aij_jumbocarrot_credits_joker = {
                name = "Jumbocarrot",
                text = {
                    "「こんにちは、アレックス」",
                },
            },
            j_aij_kaiju = {
                name = "怪獣",
                text = {
                    "",
                },
            },
            j_aij_kaleidoscope = {
                name = "万華鏡",
                text = {
                    "",
                },
            },
            j_aij_kalyptos = {
                name = "カリプトス",
                text = {
                    {
                        "デッキ内の次の{C:attention}#1#{}カードを公開する",
                    },
                    {
                        "{B:1,C:white,s:0.8}アクティブ能力",
                        "デッキを裏返し、下にあったカードを引いて公開する",
                    },
                },
            },
            j_aij_kasperle = {
                name = "カスパール",
                text = {
                    "{X:mult,C:white}X#1#{}この{C:attention}アンティ{}で{C:attention}バウチャー{}を購入した場合の倍率",
                    "{C:inactive}#2#",
                },
            },
            j_aij_killigrew = {
                name = "キリグルー",
                text = {
                    "{X:mult,C:white}X#1#{}所有するクーポンごとの倍率",
                    "{C:inactive}（現在{X:mult,C:white}X#2#{}{C:inactive}倍率）{}",
                },
                unlock = {
                    "?????",
                },
            },
            j_aij_kilroy = {
                name = "キルロイ",
                text = {
                    "売却すると、このジョーカー{C:chips}チップ{}の価値が 2 倍になる",
                    "{C:inactive}（現在{C:chips}+#1#{}チップ）{}",
                },
            },
            j_aij_kingmaker = {
                name = "キングメーカー",
                text = {
                    "すべての得点カードには、得点後にキングに変換される{C:green}#2#分の",
                    "{C:green}#1#{}の可能性がある",
                },
            },
            j_aij_komar = {
                name = "コマール",
                text = {
                    "{C:attention}得点{}されたすべてのカードは、{C:attention}他の{}すべてのプレイしたカードの",
                    "基本{C:chips}チップ{}値と同じチップを獲得する",
                },
                unlock = {
                    "?????",
                },
            },
            j_aij_krampus = {
                name = "クランプス",
                text = {
                    {
                        "得点した{C:attention}ゴールドカード{}は{C:attention}ストーンカード{}に変わります",
                    },
                    {
                        "{C:attention}ストーンカード{}は得点すると{C:money}$#1#{}を獲得する",
                    },
                },
            },
            j_aij_kuruko = {
                name = "黒子",
                text = {
                    "得点したカードは、{C:attention}デッキ{}に残っている一致する{C:attention}ランク{}のカード",
                    "ごとに{C:mult}+#1#{}の倍率を加える",
                },
            },
            j_aij_la_commedia_e_finita = {
                name = "ラコメディアエフィニータ",
                text = {
                    "{C:attention}フェイスカード{}が{C:attention}破壊{}されたとき、このジョーカーは{C:mult}+#1#{}の倍率を",
                    "獲得する",
                    "{C:inactive}（現在{C:mult}+#2#{}{C:inactive}倍率）{}",
                },
            },
            j_aij_landlord = {
                name = "家主",
                text = {
                    "",
                },
            },
            j_aij_laurel = {
                name = "月桂樹",
                text = {
                    "フルデッキの強化カードごとに{X:mult,C:white}X#1#{}の倍率を獲得する",
                    "{C:inactive}（現在{X:mult,C:white}X#2#{}{C:inactive}倍率）{}",
                },
                unlock = {
                    "?????",
                },
            },
            j_aij_lavatch = {
                name = "ラヴァッチ",
                text = {
                    "{V:1}#3#s{}が得点すると{X:mult,C:white}X#1#{}倍率が与えられ、{V:1}#3#{}が得点されると{X:mult,C:white}X#2#{}",
                    "倍率が増える{s:0.8,C:inactive}（ラウンド終了時にスーツが変わります）{}",
                },
                unlock = {
                    "?????",
                },
            },
            j_aij_lawfirm = {
                name = "法律事務所",
                text = {
                    "{B:1,C:white,s:0.8}アクティブ能力",
                    "{C:money}$#3#{}を支払うと、{C:attention}ボスブラインド{}を無効にする",
                    "{C:green}#2#分の#1#{}のチャンスが得られる",
                },
            },
            j_aij_le_fils_de_banane = {
                name = "ル・フィス・ド・バナーヌ",
                text = {
                    "得点した{C:attention}フェイスカード{}は{C:mult}+#3#{}倍率を加えるが、{C:green}#2#分の#1#{}",
                    "自身を{C:red}破壊{}する可能性がある",
                },
            },
            j_aij_lead = {
                name = "鉛",
                text = {
                    "プレイしたハンドが{C:attention}ストレート{}の場合、すべての得点カードを",
                    "再発動する",
                },
            },
            j_aij_legerdemain = {
                name = "レジェルデマン",
                text = {
                    "{C:red}+#1#{}ブラインド中に{C:attention}ジョーカー{}が{C:money}売られた{}場合、このラウンドを",
                    "{C:red}破棄する{}",
                },
            },
            j_aij_lemarchand_cube = {
                name = "ルマルシャンキューブ",
                text = {
                    "{C:attention}#2#{}{C:tarot}タロット{}カードが使用されるたびに、ランダムな{C:spectral}スペクトル{}",
                    "カードを生成する",
                    "{C:inactive}（空きスロットが必要）{}",
                    "{C:inactive}({C:attention}#1#{C:inactive}/{C:attention}#2#{C:inactive})",
                },
            },
            j_aij_lexicon = {
                name = "辞書",
                text = {
                    "所有している他のすべての{C:attention}ジョーカー{}の能力説明のすべての桁の",
                    "合計に等しい{C:mult}倍率{}を追加する",
                    "{C:inactive}（現在{C:mult}+#1#{}{C:inactive}倍率）{}",
                },
            },
            j_aij_li_keji = {
                name = "李克治",
                text = {
                    "",
                },
            },
            j_aij_liftoff = {
                name = "リフトオフ",
                text = {
                    "",
                },
            },
            j_aij_line_in_the_sand = {
                name = "砂の中のライン",
                text = {
                    "捨てられたカードはアンティ終了まで{C:attention}デッキ{}に戻らない",
                },
            },
            j_aij_liquorice = {
                name = "甘草",
                text = {
                    {
                        "この{C:attention}ジョーカー{}は、カードが{C:attention}倍率{}に強化された場合、{X:mult,C:white}X#1#{}{C:mult}倍率{}を",
                        "獲得するが、ハンドの倍率が{C:chips}チップ{}を超えると、{X:mult,C:white}X#2#{}倍率を失う",
                        "{C:inactive}（現在{X:mult,C:white}X#3#{}{C:inactive}倍率）{}",
                    },
                    {
                        "このジョーカーを入手すると{C:tarot}女帝{}を生成する",
                        "{C:inactive}（空きスロットが必要）",
                    },
                },
            },
            j_aij_little_boy_blue = {
                name = "リトルボーイブルー",
                text = {
                    "{C:chips}+#1#{}{C:chips}チップ{}チップジョーカーのみ出現",
                },
            },
            j_aij_little_devil = {
                name = "小悪魔",
                text = {
                    "ブラインドを{C:attention}スキップ{}するときは、{C:attention}スタンダード{}、{C:tarot}チャーム{}、",
                    "{C:planet}メテオ{}、エーテル、または{C:red}バフーン{}の{C:attention}タグ{}を生成する",
                },
            },
            j_aij_little_silhouetto = {
                name = "リトルシルエット",
                text = {
                    "",
                },
            },
            j_aij_living_statue = {
                name = "生きた像",
                text = {
                    "",
                },
            },
            j_aij_lonely_night = {
                name = "ロンリーナイト",
                text = {
                    "少なくとも 1 つのジョーカースロットが{C:attention}空{}の場合、すべての",
                    "カードを{C:attention}再発動{}する",
                },
            },
            j_aij_loregg = {
                name = "ロレッグ",
                text = {
                    "",
                },
            },
            j_aij_loselose = {
                name = "負ける/負ける",
                text = {
                    "",
                },
            },
            j_aij_lost_carcosa = {
                name = "失われたカルコサ",
                text = {
                    "使用したプラネットカードの{C:chips}チップ{}と{C:mult}倍率{}を元の値{C:attention}#1#%{}から{C:attention}#2#%{}",
                    "までランダム化する",
                },
            },
            j_aij_lottery_ticket = {
                name = "宝くじ",
                text = {
                    "",
                },
            },
            j_aij_loveabjuring_band = {
                name = "愛を奪うバンド",
                text = {
                    "",
                },
            },
            j_aij_low = {
                name = "低い",
                text = {
                    "",
                },
            },
            j_aij_low_priest = {
                name = "低祭司",
                text = {
                    "{X:mult,C:white}X#1#{}倍率、{X:mult,C:white}-X#2#{}プレイしたハンドの{C:attention}レベル{}ごとの倍率",
                },
            },
            j_aij_lucignolo = {
                name = "ルチニョーロ",
                text = {
                    "いずれかのトランプが{C:attention}破壊{}されると{C:money}$#1#{}を獲得する",
                },
            },
            j_aij_lucina = {
                name = "歓喜の道化師",
                text = {
                    "ブラインドを選択した場合、{C:attention}左{}側のジョーカーを{C:red}破壊{}し、{C:attention}右{}側の",
                    "ジョーカーにランダムな{C:dark_edition}エディション{}を適用する",
                },
            },
            j_aij_lucky_carder = {
                name = "ラッキーカーダー",
                text = {
                    "",
                },
            },
            j_aij_lucky_horseshoe = {
                name = "ラッキーホースシュー",
                text = {
                    "手札のラッキー カードには、{C:green}#3#分の#1#{}で{C:money}$#5#{}を獲得する",
                    "チャンスと、{C:green}#4#分の#1#{}で{X:mult,C:white}X#6#{}の倍率を獲得する可能性がある",
                },
            },
            j_aij_lucky_pierre = {
                name = "ラッキー・ピエール",
                text = {
                    "",
                },
            },
            j_aij_lucky_seven = {
                name = "ラッキーセブン",
                text = {
                    "強化されていない{C:attention}7{}が得点すると",
                    "{C:attention}ラッキーカード{}になる",
                },
            },
            j_aij_machine_intelligence = {
                name = "マシンインテリジェンス",
                text = {
                    "",
                },
            },
            j_aij_mad_hatter = {
                name = "マッドハッター",
                text = {
                    "",
                },
            },
            j_aij_mad_scientist = {
                name = "マッドサイエンティスト",
                text = {
                    "カードが{C:attention}強化{}されると、別の{C:attention}ランダム{}な強化がそのカードに融合",
                    "される",
                },
            },
            j_aij_magazine_ad = {
                name = "雑誌広告",
                text = {
                    "{C:attention}ボスブラインド{}を倒すと、{C:attention}デッキ全体{}のランダムなカードに",
                    "レッドシールを適用する",
                },
            },
            j_aij_magic_hat = {
                name = "魔法の帽子",
                text = {
                    "{C:attention}+#1#{}{C:attention}ブースターパック{}を開いたときの{C:attention}手のサイズ{}",
                },
            },
            j_aij_magic_mirror = {
                name = "マジックミラー",
                text = {
                    "この{C:attention}アンティ{}で最初に得点した{C:attention}フェイスカード{}に{C:dark_edition}ネガティブ{}を",
                    "適用する",
                    "{C:inactive}#1#",
                },
            },
            j_aij_magick_joker = {
                name = "マジックジョーカー",
                text = {
                    "プレイした{V:1}#1#{}は、代わりに{C:chips}+チップ{}を{C:mult}+倍率{}として加える",
                    "{C:inactive,s:0.8}（ラウンド終了時にスーツが変わります）{}",
                },
            },
            j_aij_maguelonne = {
                name = "マグロンヌ",
                text = {
                    "ブラインドが倒されたとき、デッキに残っているランダムな",
                    "{C:attention}フェイスカード{}を{C:red}破壊{}し、{X:mult,C:white}X#1#{}倍率を獲得する",
                    "{C:inactive}（現在{X:mult,C:white}X#2#{}{C:inactive}倍率）{}",
                },
            },
            j_aij_mahoney = {
                name = "マホニー",
                text = {
                    "ブラインドがスキップされたときにランダムな{C:attention}バウチャー{}を",
                    "引き換える",
                },
            },
            j_aij_majordomo = {
                name = "マジョドモ",
                text = {
                    {
                        "{C:money}ショップ{}内の{C:money}$#1#{}以上の{C:attention}ジョーカー{}全員が{C:money}レンタル{}ステッカーを",
                        "獲得する",
                    },
                    {
                        "{C:attention}レンタル{}減額{C:money}$2{}が減ります",
                    },
                },
            },
            j_aij_mammon = {
                name = "マモン",
                text = {
                    "この{C:attention}ラウンド{}で得点したゴールドカードごとに、ゴールドカードの",
                    "配当を{C:money}$#1#{}{C:attention}増加{}させます",
                    "{C:inactive}（現在{C:money}+$#2#{}）{}",
                },
            },
            j_aij_mandrake = {
                name = "マンドレイク",
                text = {
                    "{C:attention}#2#{}ラウンド後、このジョーカーを売って{C:attention}手札{}のカードをすべて",
                    "{C:red}破壊{}する",
                    "（現在{C:attention}#1#{}/{C:inactive}#2#{}）",
                },
            },
            j_aij_mannequin = {
                name = "マネキン",
                text = {
                    "",
                },
            },
            j_aij_marceau = {
                name = "マルソー",
                text = {
                    "全て捨てて{C:attention}手札{}に保持した場合に再発動{C:attention}#1#{}追加回数",
                },
            },
            j_aij_marcy_credits_joker = {
                name = "Marcy",
                text = {
                    "「スキッビー・ディー」",
                },
            },
            j_aij_mariachi = {
                name = "マリアッチ",
                text = {
                    "{C:mult}+#1#{}{C:attention}デッキ全体{}の固有{C:attention}強化{}ごとの倍率",
                    "{C:inactive}（現在{C:mult}+#2#{}{C:inactive}倍率）{}",
                },
            },
            j_aij_martellino = {
                name = "マルテッリーノ",
                text = {
                    "{C:attention}#2#{}ラウンド後、このジョーカーを売って{C:attention}コレクション{}から",
                    "ジョーカーを生成する",
                    "（現在{C:attention}#1#{}/{C:inactive}#2#{}）",
                },
                unlock = {
                    "?????",
                },
            },
            j_aij_martial_joker = {
                name = "マーシャルジョーカー",
                text = {
                    "",
                },
            },
            j_aij_maschera = {
                name = "マスケラ",
                text = {
                    "",
                },
            },
            j_aij_mask_merchant = {
                name = "マスク商人",
                text = {
                    "",
                },
            },
            j_aij_masquerade = {
                name = "マスカレード",
                text = {
                    "",
                },
            },
            j_aij_master_of_pegs = {
                name = "ペグの達人",
                text = {
                    "フルデッキの強化カードごとに{X:mult,C:white}X#1#{}倍率を獲得する。{C:attention}残りの",
                    "{C:attention}デッキ{}に強化カードが存在しない場合にのみ発動しる",
                    "{C:inactive}（現在{X:mult,C:white}X#2#{}{C:inactive}倍率）{}",
                    "{C:inactive}#3#",
                },
            },
            j_aij_matchbox = {
                name = "マッチ箱",
                text = {
                    "",
                },
            },
            j_aij_mathurine = {
                name = "マチュリン",
                text = {
                    "",
                },
                unlock = {
                    "?????",
                },
            },
            j_aij_mean_green = {
                name = "ミーン・グリーン",
                text = {
                    "",
                },
            },
            j_aij_meaty_joker = {
                name = "ミーティジョーカー",
                text = {
                    "{C:attention}デッキ全体{}の{C:attention}#2#{}カードごとに{X:mult,C:white}X#1#{}倍率",
                    "{C:inactive}（現在{X:mult,C:white}X#3#{}{C:inactive}倍率）{}",
                    "{C:inactive}（最小{X:mult,C:white}X1{}{C:inactive}倍率）{}",
                },
            },
            j_aij_melancholic_joker = {
                name = "メランコリックジョーカー",
                text = {
                    "{C:spades}スペード{}のスーツを使用してプレイしたカードは、得点した",
                    "ときにランダムな{C:spectral}スペクトル{}カードを生成する{C:green}#2#分の#1#{}の可能",
                    "性がある",
                    "{C:inactive}（空きスロットが必要）{}",
                },
            },
            j_aij_melpomene = {
                name = "メルポメネ",
                text = {
                    "得点した{C:attention}フェイスカード{}は、プレイされたポーカーハンドの",
                    "{C:attention}基本統計{}に等しい{C:chips}チップ{}と{C:mult}倍率{}を加える",
                },
                unlock = {
                    "?????",
                },
            },
            j_aij_memory_card = {
                name = "メモリーカード",
                text = {
                    "ラウンド最初のハンドがちょうど{C:attention}1{}枚なら",
                    "以降のブラインドでそのカードを{C:attention}最初{}に引く",
                    "{C:inactive}（記憶できるのは1枚まで）",
                    "{C:inactive}（一番左にあるときのみ発動）",
                },
            },
            j_aij_metrollen = {
                name = "メトロレン",
                text = {
                    "",
                },
            },
            j_aij_metrollen_credits_joker = {
                name = "Metrollen",
                text = {
                    "「スキッビー・ディー」",
                },
            },
            j_aij_mike_check = {
                name = "マイク・チェック",
                text = {
                    "{C:attention}#1#{}ジョーカーが販売されるごとに、ランダムな{C:uncommon}アンコモン{}",
                    "ジョーカーを生成する",
                    "{C:inactive}({C:attention}#2#{}{C:inactive}/#1#)",
                },
            },
            j_aij_minibit_credits_joker = {
                name = "Mini Bit",
                text = {
                    "「スキッビー・ディー」",
                },
            },
            j_aij_minimalist = {
                name = "ミニマリスト",
                text = {
                    "",
                },
            },
            j_aij_minus_world = {
                name = "マイナスワールド",
                text = {
                    "{C:attention}-#1#{}勝つためのアンティ{C:attention}-#2#{}売却時のアンティ",
                },
            },
            j_aij_missing_poster = {
                name = "ポスターがありません",
                text = {
                    "",
                },
            },
            j_aij_mistake = {
                name = "間違い",
                text = {
                    "{C:attention}エターナル{}ジョーカーは売れます",
                },
            },
            j_aij_mister_police = {
                name = "ミスターポリス",
                text = {
                    "",
                },
            },
            j_aij_mistigri = {
                name = "ミスティグリ",
                text = {
                    "手札にある{C:attention}J{}2枚につきハンドサイズ{C:attention}+1{}",
                },
            },
            j_aij_mixel_perfect = {
                name = "ミクセルパーフェクト",
                text = {
                    "{C:mult}+#1#{}{C:attention}得点したハンド{}に{C:attention}奇数{}のカードが含まれている場合の倍率",
                },
            },
            j_aij_mocap = {
                name = "モーションキャプチャ",
                text = {
                    {
                        "レジェンド、{C:rare}レア{}、または{C:uncommon}アンコモン{}のジョーカーが販売されると、",
                        "次に低いレア度の{C:attention}ランダム{}なジョーカーを生成する",
                    },
                    {
                        "レジェンド -> {C:rare}レア{}{C:rare}レア{} -> {C:uncommon}アンコモン{}{C:uncommon}アンコモン{} -> {C:common}コモン{}",
                    },
                },
            },
            j_aij_moldy_joker = {
                name = "カビの生えたジョーカー",
                text = {
                    "",
                },
            },
            j_aij_monarchic_joker = {
                name = "君主制ジョーカー",
                text = {
                    "{C:paperback_crowns}クラウン{}スーツを使用してプレイしたカードは、得点したときに",
                    "{C:green}#2#分の#1#{}の確率でランダムな小{C:paperback_minor_arcana}アルカナ{}カードを生成する",
                    "{C:inactive}（空きスロットが必要）{}",
                },
            },
            j_aij_monarcho = {
                name = "モナルチョ",
                text = {
                    "",
                },
                unlock = {
                    "?????",
                },
            },
            j_aij_mondrian_joker = {
                name = "モンドリアン・ジョーカー",
                text = {
                    "フルデッキの{C:attention}4{}ごとに{C:mult}+#1#{}の倍率",
                    "{C:inactive}（現在{C:mult}+#2#{}{C:inactive}倍率）{}",
                },
            },
            j_aij_monster = {
                name = "モンスター",
                text = {
                    "",
                },
            },
            j_aij_moon_man = {
                name = "ムーンマン",
                text = {
                    "",
                },
            },
            j_aij_moon_museum = {
                name = "ムーンミュージアム",
                text = {
                    "",
                },
            },
            j_aij_morio = {
                name = "モリオ",
                text = {
                    "{C:attention}ボスブラインド{}を倒すと",
                    "好きな{C:tarot}タロット{}カードを選んで生成する",
                    "{C:inactive}（空きスロットが必要）",
                },
            },
            j_aij_moros = {
                name = "モロス",
                text = {
                    "",
                },
            },
            j_aij_mountie = {
                name = "騎馬隊員",
                text = {
                    "",
                },
            },
            j_aij_mp_blind_drawn = {
                name = "ブラインドドロー",
                text = {
                    "{X:mult,C:white}X#1#{}倍率 {C:attention}PvP ブラインド{}中は、{X:purple,C:white}対戦相手{}のスコアや残りの",
                    "ハンドを確認できません",
                },
            },
            j_aij_mp_fall_of_count_chaligny = {
                name = "シャリニー伯爵の没落",
                text = {
                    "すべての{C:attention}ブラインド{}の必要なスコアを{C:attention}1X{}Base に設定する",
                    "{C:inactive}（PvP ブラインドには影響しません）{}",
                },
            },
            j_aij_mr_catfish = {
                name = "ナマズさん",
                text = {
                    "{C:attention}#2#{}[{C:inactive}#3#{}] 枚のカードが捨てられるごとに{C:money}$#1#{}を獲得する",
                },
            },
            j_aij_mr_lonely = {
                name = "ミスター・ロンリー",
                text = {
                    "このジョーカーは{C:attention}ラウンド{}終了時に空のジョーカースロット",
                    "ごとに{C:chips}+#1#{}{C:chips}チップ{}を獲得する",
                    "{C:inactive}（現在{C:chips}+#2#{}チップ）{}",
                },
            },
            j_aij_muckle = {
                name = "マックル",
                text = {
                    "",
                },
            },
            j_aij_mummer = {
                name = "ママー",
                text = {
                    "得点したハンドの{C:attention}スチールカード{}ごとに 1 回、すべての",
                    "{C:attention}スチールカード{}を再発動する",
                },
            },
            j_aij_mummy = {
                name = "ミイラ",
                text = {
                    "",
                },
            },
            j_aij_mushroom_cloud = {
                name = "キノコ雲",
                text = {
                    "{B:1,C:white,s:0.8}アクティブ能力",
                    "持っている{C:attention}ジョーカー{}をすべて{C:red}破壊{}し、{C:money}$#1#{}を",
                    "獲得",
                },
            },
            j_aij_mustachio = {
                name = "口ひげ",
                text = {
                    "",
                },
            },
            j_aij_mute_joker = {
                name = "ミュートジョーカー",
                text = {
                    "このラウンドでは、最初にプレイされた{C:attention}#1#{}が得点したカードを",
                    "すべて{C:red}破壊する{}",
                    "{C:inactive}（ポーカーハンドはラウンド終了時に変わります）{}",
                },
            },
            j_aij_mysterious_horizon = {
                name = "ミステリアスホライゾン",
                text = {
                    "",
                },
            },
            j_aij_mystic = {
                name = "ミスティック",
                text = {
                    "",
                },
            },
            j_aij_mythie = {
                name = "ミシー",
                text = {
                    "「ベッドでトーストを食べるのは私の能力です」",
                },
            },
            j_aij_mythie_credits_joker = {
                name = "Mythie",
                text = {
                    "「スキッビー・ディー」",
                },
            },
            j_aij_naiteh = {
                name = "ナイテ",
                text = {
                    "{C:attention}ボスブラインド{}を倒すとハンドサイズが{C:attention}+#2#{}増える",
                    "{C:inactive}（現在{C:attention}+#1#{}の{C:inactive}手のサイズ）{}",
                },
                unlock = {
                    "?????",
                },
            },
            j_aij_napkin = {
                name = "ナプキン",
                text = {
                    "このジョーカーは、{C:attention}2{}ブラインドが連続してスキップされると、",
                    "{X:mult,C:white}X#1#{}の倍率を獲得する",
                    "{C:inactive}（現在{X:mult,C:white}X#2#{}{C:inactive}倍率）{}",
                },
            },
            j_aij_nature_tapes = {
                name = "自然テープ",
                text = {
                    "{C:mult}倍率{}タイプのプラネットカードが使用された場合、この",
                    "ジョーカーは{X:mult,C:white}X#1#{}の倍率を獲得する",
                    "{C:inactive}（現在{X:mult,C:white}X#2#{}{C:inactive}倍率）{}",
                },
            },
            j_aij_necromancer = {
                name = "ネクロマンサー",
                text = {
                    "",
                },
            },
            j_aij_nedda = {
                name = "ネッダ",
                text = {
                    "手に持った{C:attention}クイーンズ{}は{X:mult,C:white}X#1#{}倍率を加える",
                },
                unlock = {
                    "?????",
                },
            },
            j_aij_negative_nancy = {
                name = "ネガティブなナンシー",
                text = {
                    "{C:attention}ショップ{}に{C:dark_edition}ネガティブ{}のジョーカーが",
                    "{C:attention}#1#倍{}出現しやすくなる",
                },
            },
            j_aij_negative_space = {
                name = "ネガティブスペース",
                text = {
                    "{C:attention}+#1#{}{C:dark_edition}ネガティブ{}ジョーカーを保持するたびにハンドのサイズ",
                    "{C:inactive}（現在{C:attention}+#2#{}手のサイズ）{}",
                    "{C:inactive}（最大{C:attention}+#3#{}）{}",
                },
            },
            j_aij_neighborhood_watch = {
                name = "近所の監視員",
                text = {
                    "",
                },
            },
            j_aij_neon_sign = {
                name = "ネオンサイン",
                text = {
                    "{X:mult,C:white}X#1#{}プレイしたハンドに{C:attention}フルハウス{}が含まれており、前のハンドに",
                    "フルハウスが含まれていなかった場合の倍率",
                    "{C:inactive}(#2#)",
                },
            },
            j_aij_neptunium = {
                name = "ネプツニウム",
                text = {
                    "プレイしたハンドが{C:attention}ストレートフラッシュ{}の場合、すべての得点",
                    "カードを{C:attention}#1#{}回再発動する",
                },
            },
            j_aij_nervous_joker = {
                name = "神経質なジョーカー",
                text = {
                    "",
                },
            },
            j_aij_neutronium = {
                name = "ニュートロニウム",
                text = {
                    "プレイしたハンドがフラッシュ 5 の場合、すべての得点カードを",
                    "再発動する",
                },
            },
            j_aij_nevernamed_credits_joker = {
                name = "Nevernamed",
                text = {
                    "「このスペースは意図的に空白にしてあります」",
                },
            },
            j_aij_ngmp = {
                name = "ングムプ",
                text = {
                    "",
                },
            },
            j_aij_nichola = {
                name = "ニコラ",
                text = {
                    "ラウンドの開始時に、ランダムなエンハンスメント、",
                    "{C:dark_edition}エディション{}、{C:attention}シール{}を備えたランダムなクイーン 1 人を手札に",
                    "追加する",
                },
                unlock = {
                    "?????",
                },
            },
            j_aij_nihilartikel = {
                name = "ニヒラルティケル",
                text = {
                    "{C:dark_edition}+#1#{}ジョーカースロット、ラウンド終了時{C:red}-$#2#{}",
                },
            },
            j_aij_ninja = {
                name = "忍者",
                text = {
                    "{C:attention}最後{}の得点カードが得点するたびに、{C:attention}最初{}の得点カードを再得点する",
                },
            },
            j_aij_no_arms_no_legs = {
                name = "武器はありない。脚がありない。",
                text = {
                    "",
                },
            },
            j_aij_no_i_am_not_a_joker = {
                name = "いいえ、私はジョーカーではありません",
                text = {
                    "",
                },
            },
            j_aij_no_junk_mail = {
                name = "迷惑メールはありません",
                text = {
                    "ショップの標準パックは{C:money}無料{}です",
                },
            },
            j_aij_nobody = {
                name = "誰でもない",
                text = {
                    "何もない…？",
                },
            },
            j_aij_nosferatu = {
                name = "ノスフェラトゥ",
                text = {
                    "",
                },
            },
            j_aij_notsoai_credits_joker = {
                name = "NotSoAI",
                text = {
                    "「スキッビー・ディー」",
                },
            },
            j_aij_null_joker = {
                name = "ヌルジョーカー",
                text = {
                    "すべての{C:green}確率{}を{C:attention}ゼロ{}に設定する",
                    "{C:inactive,s:0.8}（元：{}{C:green,s:0.8}3分の1{}{C:inactive,s:0.8}->{}{C:green,s:0.8}3分の0{}{C:inactive,s:0.8}）{}",
                },
            },
            j_aij_number_eight_wire = {
                name = "番号 8 ワイヤー",
                text = {
                    "",
                },
            },
            j_aij_numbertaker = {
                name = "ナンバーテイカー",
                text = {
                    {
                        "得点した数字のカードの{C:attention}ランク{}を削除する",
                    },
                    {
                        "この{C:attention}ジョーカー{}は削除されたランクに等しい{C:mult}倍率{}を獲得する",
                        "{C:inactive}（現在{C:mult}+#1#{}{C:inactive}倍率）{}",
                    },
                },
            },
            j_aij_nutcracker = {
                name = "くるみ割り人形",
                text = {
                    "",
                },
            },
            j_aij_nybbas = {
                name = "ニッバス",
                text = {
                    "",
                },
                unlock = {
                    "?????",
                },
            },
            j_aij_obsessive_objective = {
                name = "強迫的な目的",
                text = {
                    "",
                },
            },
            j_aij_octopus = {
                name = "タコ",
                text = {
                    "ランク{C:attention}7{}の得点カードとランク{C:attention}9{}のカードはランク{C:attention}8{}のカードになる",
                },
            },
            j_aij_odd_rod = {
                name = "オッドロッド",
                text = {
                    "{C:attention}奇数{}ランクのプレイ済みカードをすべて{C:attention}再発動{}する",
                },
            },
            j_aij_office_assistant = {
                name = "オフィスアシスタント",
                text = {
                    "{B:1,C:white,s:0.8}アクティブ能力",
                    "{C:attention}右隣{}のジョーカーのペリシャブルを回復するか",
                    "{C:attention}レンタル{}を払い切る",
                },
            },
            j_aij_oil_and_water = {
                name = "油と水",
                text = {
                    "",
                },
            },
            j_aij_oklo_reactor = {
                name = "オクロ・リアクター",
                text = {
                    "プレイされたすべてのゴールドカードを 2 回{C:attention}再発動{}する",
                },
            },
            j_aij_old_joker = {
                name = "老ジョーカー",
                text = {
                    "{C:attention}ボスブラインド{}を倒すたびに",
                    "このジョーカーのチップ{C:chips}+#2#{}、倍率{C:mult}+#4#{}",
                    "{C:inactive,s:0.8}（現在 チップ{C:chips,s:0.8}+#1#{}{C:inactive,s:0.8}、倍率{C:mult,s:0.8}+#3#{C:inactive,s:0.8}）",
                    "{C:inactive,s:0.8}（常にエターナル）",
                },
            },
            j_aij_omelette = {
                name = "オムレツ",
                text = {
                    "",
                },
            },
            j_aij_omlette = {
                name = "オムレツ",
                text = {
                    "{C:blue}手{}札または捨て札を使用した場合、売却額の{C:money}$#1#{}を獲得",
                },
            },
            j_aij_on_your_sleeve = {
                name = "オン・ユア・スリーブ",
                text = {
                    "",
                },
            },
            j_aij_one_bit_joker = {
                name = "1-ビットジョーカー",
                text = {
                    "",
                },
            },
            j_aij_one_little_duck = {
                name = "小さなアヒルが 1 匹",
                text = {
                    "このジョーカーは、プレイされたものの{C:attention}得点{}されなかった{C:attention}2{}ごとに",
                    "{C:mult}+#2#{}の倍率を獲得する",
                    "{C:inactive}（現在{C:mult}+#1#{}{C:inactive}倍率）{}",
                },
            },
            j_aij_onearmed_bandit = {
                name = "片腕の盗賊",
                text = {
                    "",
                },
            },
            j_aij_onifuda = {
                name = "鬼札",
                text = {
                    "",
                },
            },
            j_aij_open_mind = {
                name = "オープンマインド",
                text = {
                    "{C:attention}+#1#{}追加の{C:attention}ブースターパック{}が{C:attention}ショップ{}で購入可能",
                },
            },
            j_aij_opening_move = {
                name = "オープニングムーブ",
                text = {
                    {
                        "ラウンドの最初の手で{C:attention}得点{}したカードごとに、そのラウンドの",
                        "倍率が{X:mult,C:white}X#1#{}増える",
                        "{C:inactive}（現在{X:mult,C:white}X#2#{}{C:inactive}倍率）{}",
                    },
                    {
                        "各ラウンドの最初のハンドはスコアに追加されません",
                    },
                },
            },
            j_aij_origami_joker = {
                name = "折り紙ジョーカー",
                text = {
                    "",
                },
            },
            j_aij_orphic_joker = {
                name = "オルフィジョーカー",
                text = {
                    "ブラインドがスキップされた場合、{C:attention}#1#{}ランダムな{C:rare}レア{}",
                    "{C:attention}ジョーカー{}を生成する",
                    "{C:inactive}（空きスロットが必要）{}",
                },
            },
            j_aij_outlet = {
                name = "出口",
                text = {
                    "ブラインドを選択した場合、ランダムなチャージ{C:attention}カード{}を手札に",
                    "加える",
                },
            },
            j_aij_outside_in_joker = {
                name = "アウトサイド・イン・ジョーカー",
                text = {
                    "",
                },
            },
            j_aij_over_the_counter = {
                name = "店頭",
                text = {
                    "{C:attention}ブースター{}{C:attention}パック{}を開封する際、{C:attention}デッキ{}から{C:attention}#1#{}のカードを選んで",
                    "ドローする",
                },
            },
            j_aij_overdesigned_joker = {
                name = "過剰にデザインされたジョーカー",
                text = {
                    {
                        "得点{V:1}#1#{}#3# {B:3,V:2}#4##2#{}#5#",
                    },
                    {
                        "カードが{C:attention}得点{}されるとスーツと効果が切り替わります",
                        "（{V:4}ハート{}->{V:5}クラブ{}->{V:6}ダイヤ{}->{V:7}スペード{}）",
                    },
                },
            },
            j_aij_pablillos = {
                name = "パブリヨス",
                text = {
                    "すべてのスキップタグは同等のゴールドに置き換わる",
                },
                unlock = {
                    "?????",
                },
            },
            j_aij_pace = {
                name = "ペース",
                text = {
                    {
                        "すべてのジョーカー {C:red}レア度{}が{C:money}ショップ{}に出現する確率は",
                        "同じです",
                        "{C:inactive}（レジェンドを除く）{}",
                    },
                    {
                        "すべてのジョーカーのコストは{C:money}$#1#{}",
                    },
                },
                unlock = {
                    "?????",
                },
            },
            j_aij_pain_joker = {
                name = "ペインジョーカー",
                text = {
                    "",
                },
            },
            j_aij_panasco = {
                name = "パナスコ",
                text = {
                    "",
                },
            },
            j_aij_pangram = {
                name = "パングラム",
                text = {
                    "手札のユニークランクごとに{X:mult,C:white}X#1#{}の倍率を与える",
                    "{C:inactive}（現在{X:mult,C:white}X#2#{}{C:inactive}倍率）{}",
                },
            },
            j_aij_pantomimus = {
                name = "パントミムス",
                text = {
                    "このジョーカーは、{C:attention}ラウンド{}の終了時に{C:attention}保持{}{C:attention}ハンド{}ごとに{C:chips}",
                    "{C:chips}+#2#{}チップを獲得する。",
                    "{C:inactive}(現在{}{C:chips}+#1#{}{C:inactive}チップ){}",
                },
            },
            j_aij_paper_bag = {
                name = "紙袋",
                text = {
                    "このジョーカーは、捨てられた各ポーカーハンドの{C:attention}レベル{}ごとに",
                    "{C:chips}+#1#{}チップを獲得する",
                    "{C:inactive}（現在{C:chips}+#2#{}チップ）{}",
                },
            },
            j_aij_papermoon_credits_joker = {
                name = "Papermoon",
                text = {
                    "「私たちは生涯にわたるパーティーに招待されています。",
                    "オーバーステイは失礼。」",
                },
            },
            j_aij_paracosm = {
                name = "パラコズム",
                text = {
                    "ブラインドがスキップされた場合、最もプレイされている",
                    "ポーカーハンドを{C:attention}#1#{}レベルアップグレードする",
                    "（現在{C:inactive}#2#{}）",
                },
            },
            j_aij_parfait = {
                name = "パフェ",
                text = {
                    {
                        "ラウンド終了時、{C:green}#2#分の#1#{}の確率で",
                        "{C:attention}右隣{}のジョーカーの倍率の乗数が",
                        "{C:attention}永続的{}に{X:mult,C:white}X#3#{}分増える",
                    },
                    {
                        "発動すると{C:red}自壊{}する",
                    },
                },
            },
            j_aij_parking_space = {
                name = "駐車スペース",
                text = {
                    "{X:mult,C:white}X#1#{}このジョーカーがジョーカースロットにある場合の倍率{C:attention}#2#{}",
                    "{C:inactive,s:0.8}（スロットはラウンド終了時に変更される）{}",
                },
            },
            j_aij_party_streamers = {
                name = "パーティーストリーマー",
                text = {
                    "ラウンドの{C:attention}最初のハンド{}がシールのないカード{C:attention}1{}枚なら",
                    "そのカードに{C:red}レッド{}、{C:blue}ブルー{}、{C:money}ゴールド{}の",
                    "いずれかの{C:attention}シール{}を付ける",
                },
            },
            j_aij_party_time = {
                name = "パーティータイム！",
                text = {
                    "ブラインドを倒すと、すべての{C:attention}ジョーカー{}は永続的に{C:chips}+#1#{}",
                    "チップを獲得する",
                },
            },
            j_aij_peanut_brittle = {
                name = "ピーナッツブリトル",
                text = {
                    {
                        "この{C:attention}ジョーカー{}は、カードが{C:attention}ガラス{}に強化されると{X:mult,C:white}X#1#{}倍率を",
                        "獲得するが、ガラスカードが壊れると{X:mult,C:white}X#2#{}倍率を失う",
                        "{C:inactive}（現在{X:mult,C:white}X#3#{}{C:inactive}倍率）{}",
                    },
                    {
                        "このジョーカーを入手すると{C:tarot}正義{}を生成する",
                        "{C:inactive}（空きスロットが必要）",
                    },
                },
            },
            j_aij_pedestrian = {
                name = "歩行者",
                text = {
                    "得点したカードの{C:attention}ランク{}が{C:attention}前の{}得点したカードよりも低い場合、",
                    "得点したカードを{C:attention}再発動{}する",
                },
            },
            j_aij_pedrolino = {
                name = "ペドリーノ",
                text = {
                    "このカードを売ると、現在のブラインドの{C:attention}スコア要件{}が{C:attention}#1#%{}減る",
                },
            },
            j_aij_peeping_tom = {
                name = "ピーピング・トム",
                text = {
                    "デッキ内の次の{C:attention}#1#{}カードを公開する",
                },
            },
            j_aij_pell_mel = {
                name = "ペル・メル",
                text = {
                    "プレイしたハンドの固有のスーツごとに{X:mult,C:white}X#1#{}の倍率を加える",
                },
            },
            j_aij_pellesini = {
                name = "ペッレシーニ",
                text = {
                    {
                        "ジョーカーが{C:red}破壊{}された場合、正確なコピーを生成する",
                        "{C:inactive}（空きスロットが必要）{}",
                    },
                    {
                        "ブラインドを選択したときに右端のジョーカーを{C:red}破壊{}し、セール",
                        "価格を獲得する",
                    },
                },
                unlock = {
                    "?????",
                },
            },
            j_aij_pellucid_joker = {
                name = "透明なジョーカー",
                text = {
                    "{C:dark_edition}エディション{}の{C:attention}ジョーカー{}が売却または{C:red}破壊{}された場合、同じ",
                    "{C:dark_edition}エディション{}のランダムなトランプをデッキに追加する",
                },
            },
            j_aij_pencil_drawing = {
                name = {
                    "鉛筆画",
                },
                text = {
                    "{B:1,C:white,s:0.8}アクティブ能力",
                    "{C:money}$#1#{}を支払うと、{V:2}#4#{}の #2# {C:attention}#3#{}が手札に追加さ",
                    "れる",
                    "{C:inactive}（カードは使用後とハンドごとに変わります）{}",
                },
            },
            j_aij_pengelding = {
                name = "ペンゲルディング",
                text = {
                    "手札にあるカードは{X:mult,C:white}X#3#{}の倍率を与え、所有しているすべての",
                    "ジョーカーの{C:money}売却額{}{C:money}$#2#{}ごとに{X:mult,C:white}X#1#{}ずつ増える",
                },
            },
            j_aij_penny = {
                name = "ペニー",
                text = {
                    "{C:money}ゴールドシール{}のあるカードは{C:green}#2#分の#1#{}の確率で{C:attention}再発動{}する",
                },
            },
            j_aij_penny_dreadful = {
                name = "ペニー・ドレッドフル",
                text = {
                    "",
                },
            },
            j_aij_per_aspera_ad_astra = {
                name = "ペル・アスペラ・アド・アストラ",
                text = {
                    "",
                },
            },
            j_aij_personalized_joker = {
                name = "パーソナライズされたジョーカー",
                text = {
                    "",
                },
            },
            j_aij_petrushka = {
                name = "ペトルーシュカ",
                text = {
                    "得点した全カードの{C:attention}ランク{}の合計を{C:mult}倍率{}に加える",
                    "{C:inactive,s:0.8}（A=14、K=13、Q=12、J=11）",
                },
            },
            j_aij_phantom_of_truth = {
                name = "真実のファントム",
                text = {
                    "",
                },
            },
            j_aij_phlegmatic_joker = {
                name = "痰ジョーカー",
                text = {
                    "{C:clubs}クラブ{}スーツを使用してプレイしたカードには、得点したときに",
                    "プレイしたハンドの{C:planet}惑星{}カードを生成する{C:green}#2#分の#1#{}の可能性が",
                    "ある",
                    "{C:inactive}（空きスロットが必要）{}",
                },
            },
            j_aij_phoney_baloney = {
                name = "偽りのバロニー",
                text = {
                    "各{C:attention}アンティ{}の開始時に{C:attention}#2#{}の無料{C:green}リロール{}を与え、{C:attention}0{}{C:green}リロール{}",
                    "に達すると消費される {C:inactive}（{C:attention}#1#{}残り）{}",
                },
            },
            j_aij_picasso = {
                name = "ピカソ",
                text = {
                    "",
                },
            },
            j_aij_piece_of_mind = {
                name = "心のかけら",
                text = {
                    "",
                },
            },
            j_aij_pierrette = {
                name = "ピエレット",
                text = {
                    "全ての{C:attention}カード{}が捨てられた効果を再度発動する",
                },
            },
            j_aij_pierrot = {
                name = "ピエロ",
                text = {
                    "手札の{C:attention}数字札{}がそれぞれの{C:chips}チップ{}を加える",
                },
            },
            j_aij_pigpen = {
                name = "豚小屋",
                text = {
                    "ポーカーハンドがプレイされた回数にその{C:attention}レベル{}を掛けたものに",
                    "等しい{C:chips}チップ{}を加える",
                },
            },
            j_aij_pinhead = {
                name = "ピンヘッド",
                text = {
                    "シングルハンドでブラインドを倒した場合、{C:money}$#1#{}を獲得",
                },
            },
            j_aij_pink_slip = {
                name = "ピンクのスリップ",
                text = {
                    "{C:attention}+#1#{}破棄の{C:attention}選択制限{}",
                },
            },
            j_aij_pinup_poster = {
                name = "ピンナップポスター",
                text = {
                    {
                        "このジョーカーは常にジョーカーの{C:attention}左{}側に固定される",
                    },
                    {
                        "{C:attention}残りのデッキ{}の{C:red}ハート{}のスーツカードごとに{X:mult,C:white}X#1#{}の倍率を獲得する",
                        "{C:inactive}（現在{X:mult,C:white}X#2#{}{C:inactive}倍率）{}",
                    },
                },
            },
            j_aij_pipine = {
                name = "ピピン",
                text = {
                    "{C:red}+#1#{}ラウンドごとの破棄数",
                },
                unlock = {
                    "?????",
                },
            },
            j_aij_piss_take = {
                name = "小便を取る",
                text = {
                    "",
                },
            },
            j_aij_plain_jane = {
                name = "プレーン・ジェーン",
                text = {
                    "スコアを獲得した未強化カードは{C:mult}+#1#{}の倍率を加える",
                },
            },
            j_aij_plain_packaging = {
                name = "無地包装",
                text = {
                    "倍率{C:mult}+#1#{}",
                    "{C:attention}ジョーカー{}を{C:money}売却{}または{C:red}破壊{}すると倍率{C:mult}-#2#{}",
                },
            },
            j_aij_planetarium = {
                name = "プラネタリウム",
                text = {
                    {
                        "{C:attention}消耗カード{}エリアにある{C:chips}チップ{}タイプのプラネットカードは、",
                        "指定されたポーカーハンドに対して{C:chips}+#1#{}チップを加える",
                    },
                    {
                        "{C:mult}倍率{}タイプ{C:attention}消耗カード{}エリアにある{C:planet}惑星{}カードは、指定された",
                        "ポーカーハンドの倍率を{C:mult}+#2#{}に加える",
                    },
                },
            },
            j_aij_plastic_surgery = {
                name = "形成外科",
                text = {
                    "",
                },
            },
            j_aij_platinum_chip = {
                name = "プラチナチップ",
                text = {
                    "",
                },
            },
            j_aij_playjoy = {
                name = "プレイジョイ",
                text = {
                    "",
                },
            },
            j_aij_plum_pudding = {
                name = "プラムプリン",
                text = {
                    "",
                },
            },
            j_aij_plutonium = {
                name = "プルトニウム",
                text = {
                    "プレイしたハンドが{C:attention}ハイカード{}の場合、すべての得点カードを",
                    "{C:attention}#1#{}回再発動する",
                },
            },
            j_aij_pog = {
                name = "ポグ",
                text = {
                    "各{C:attention}ブースターパック{}には、パックを{C:attention}スキップ{}することで取得",
                    "できる{C:attention}タグ{}も含まれています",
                },
            },
            j_aij_poison_apple = {
                name = "ポイズンアップル",
                text = {
                    "",
                },
            },
            j_aij_poker_face = {
                name = "ポーカーフェース",
                text = {
                    "{X:mult,C:white}X#1#{}ブラインドの必要なスコアの{C:attention}合計{}を超え{C:attention}ない{}連続",
                    "ハンドプレイごとの倍率",
                    "{C:inactive}（現在{X:mult,C:white}X#2#{}{C:inactive}倍率）{}",
                },
            },
            j_aij_police_sketch = {
                name = "警察のスケッチ",
                text = {
                    "{C:attention}フォーカード{}をプレイしたとき",
                    "得点しなかったカードを{C:attention}キャンバスカード{}に変える",
                },
            },
            j_aij_polybius = {
                name = "ポリュビウス",
                text = {
                    "プレイしたハンドに含まれるすべてのハンドタイプの{C:mult}倍率{}と",
                    "{C:chips}チップ{}を示する",
                },
            },
            j_aij_polymorphic_joker = {
                name = "多態性ジョーカー",
                text = {
                    "",
                },
            },
            j_aij_polyphemus = {
                name = "ポリュフェムス",
                text = {
                    "",
                },
            },
            j_aij_pompey = {
                name = "ポンペイウス",
                text = {
                    "{X:mult,C:white}X#1#{}{C:attention}右{}の{C:attention}ジョーカー{}ごとの倍率、ポンペイウスを含む",
                    "{C:inactive}（現在{X:mult,C:white}X#2#{}{C:inactive}倍率）{}",
                },
                unlock = {
                    "?????",
                },
            },
            j_aij_pope = {
                name = "法王",
                text = {
                    "",
                },
            },
            j_aij_poppins = {
                name = "ポピンズ",
                text = {
                    "プレイしたハンドに含まれる固有のポーカーハンドごとに{C:money}$#1#{}を",
                    "獲得する",
                },
            },
            j_aij_pops = {
                name = "ポップ！",
                text = {
                    "",
                },
            },
            j_aij_postcard_from_perdition_trail = {
                name = "パーディション・トレイルからのポストカード",
                text = {
                    "{C:attention}シール{}付きの得点したカードはシールが剥がされ、永久的に{X:mult,C:white}X#1#{}",
                    "倍率を獲得する",
                },
            },
            j_aij_pour_one_out = {
                name = "ワンアウトを注ぐ",
                text = {
                    "{C:attention}#1#{}[{C:inactive}#2#{}] 枚の捨てられたカードごとにランダムな{C:attention}消耗カード{}を",
                    "生成する",
                },
            },
            j_aij_pput_together = {
                name = "まとめる",
                text = {
                    "",
                },
            },
            j_aij_prank_caller = {
                name = "いたずら電話者",
                text = {
                    "",
                },
            },
            j_aij_pretzel_sticks = {
                name = "プレッツェルスティック",
                text = {
                    {
                        "この{C:attention}ジョーカー{}は、カードが木に強化されると{X:mult,C:white}X#1#{}倍率を獲得するが、",
                        "{C:attention}手札{}にある効果が発動すると{X:mult,C:white}X#2#{}倍率を失う",
                        "{C:inactive}（現在{X:mult,C:white}X#3#{}{C:inactive}倍率）{}",
                    },
                    {
                        "このジョーカーを入手すると{C:tarot}聖域の門{}を生成する",
                        "{C:inactive}（空きスロットが必要）",
                    },
                },
            },
            j_aij_prisoners_cinema = {
                name = "囚人の映画館",
                text = {
                    "{C:attention}#1#{}各ショップのランダム{C:attention}ブースターパック{}は{C:attention}無料{}です",
                },
            },
            j_aij_privelege_fabled = {
                name = "道化師の特権",
                text = {
                    "{C:legendary}レジェンダリー{}ジョーカーがより出現しやすくなる",
                },
            },
            j_aij_profile = {
                name = "プロフィール",
                text = {
                    "{C:attention}フェイスカード{}に{C:attention}隣接{}する得点カードは{C:mult}+#1#{}倍率を加える",
                },
            },
            j_aij_propaganda = {
                name = "宣伝",
                text = {
                    "{C:attention}デッキ{}内で最も一般的なスートのカードが得点されると、{C:mult}+#2#{}の",
                    "倍率が得られる",
                    "{C:inactive}（現在{C:attention}#1#{}）{}",
                },
            },
            j_aij_protophanes = {
                name = "プロトファネス",
                text = {
                    "自分の{C:attention}デッキ{}の最後の{C:attention}カード{}を公開する同じ{C:attention}ランク{}のカードには",
                    "{X:mult,C:white}X#1#{}の倍率が与えられます",
                },
            },
            j_aij_prototype = {
                name = "プロトタイプ",
                text = {
                    "「笑、自分の中に名言があるかどうかはわかりません」",
                },
            },
            j_aij_prototype_credits_joker = {
                name = "Prototype",
                text = {
                    "「スキッビー・ディー」",
                },
            },
            j_aij_psalmanazar = {
                name = "詩篇",
                text = {
                    "",
                },
            },
            j_aij_psycho = {
                name = "サイコ",
                text = {
                    "{B:1,C:white,s:0.8}アクティブ能力",
                    "ブラインドにいるときに使用すると、{C:attention}左{}側の",
                    "ジョーカーを{C:red}破壊{}し、{C:money}売却額{}の{C:money}$1{}ごとに{X:mult,C:white}X#1#{}の倍率を獲得する",
                    "{C:inactive}（現在{X:mult,C:white}X#2#{}{C:inactive}倍率）{}",
                },
            },
            j_aij_public_bathroom = {
                name = "公衆トイレ",
                text = {
                    "このジョーカーは{C:attention}フラッシュ{}で得点した{C:attention}2{}ごとに{C:mult}+#1#{}の倍率を",
                    "獲得する",
                    "{C:inactive}（現在{C:mult}+#2#{}{C:inactive}倍率）{}",
                },
            },
            j_aij_pulcinella = {
                name = "プルチネッラ",
                text = {
                    "",
                },
            },
            j_aij_punch_and_judy = {
                name = "パンチとジュディ",
                text = {
                    {
                        "{C:attention}K{}と{C:attention}Q{}は必ず得点する",
                    },
                    {
                        "キングとクイーンは必ず得点する",
                    },
                },
            },
            j_aij_punk_joker = {
                name = "パンクジョーカー",
                text = {
                    "ハンドが{C:attention}ワイルドカード{}を獲得した場合、ランダムな未強化の",
                    "得点したカードを{C:attention}ワイルドカード{}に変える",
                },
            },
            j_aij_pure_baseball_card = {
                name = "ピュアベースボールカード",
                text = {
                    "ブラインドを倒すと、{C:rare}レア{}{C:attention}ジョーカー{}は永続的に{X:mult,C:white}X#1#{}倍率を",
                    "獲得する",
                },
            },
            j_aij_pygmalion = {
                name = "ピグマリオン",
                text = {
                    "すべてのストーンカードはクイーンとみなされる",
                },
            },
            j_aij_quadrangled_joker = {
                name = "四角いジョーカー",
                text = {
                    "プレイしたハンドに正確に{C:attention}4{}のカードがある場合、{C:chips}チップ{}と",
                    "フォー オブカインドの{C:mult}倍率{}を追加する",
                    "{C:inactive,s:0.8}（現在{}{C:chips,s:0.8}+#1#{}{C:inactive,s:0.8}チップス、{}{C:mult,s:0.8}+#2#{}{C:inactive,s:0.8}倍率）{}",
                },
            },
            j_aij_quantum_computing = {
                name = "量子コンピューティング",
                text = {
                    "",
                },
            },
            j_aij_quantum_foam = {
                name = "量子フォーム",
                text = {
                    "{C:attention}未強化{}のカードは{C:green}#2#分の#1#{}の確率で再度発動する",
                },
            },
            j_aij_quark = {
                name = "クォーク",
                text = {
                    "得点したハンドが同じランクで異なるスートのカードが 3 枚",
                    "ある場合、スリー オブカインドをレベルアップする",
                },
            },
            j_aij_queen_bee = {
                name = "女王蜂",
                text = {
                    "得点計算クイーンは、手札の{C:attention}6{}ごとに{X:mult,C:white}X#1#{}の倍率を加える",
                    "{C:inactive}（{X:mult,C:white}X#2#{}倍率が与えられます）{}",
                },
            },
            j_aij_quicklime_heart = {
                name = "生石灰の心臓",
                text = {
                    "",
                },
            },
            j_aij_quicksilver = {
                name = "クイックシルバー",
                text = {
                    "プレイしたハンドが{C:attention}ペア{}の場合、すべての得点カードを再発動する",
                },
            },
            j_aij_rag_joker = {
                name = "ラグジョーカー",
                text = {
                    "",
                },
            },
            j_aij_rahere = {
                name = "ラヒレ",
                text = {
                    "",
                },
                unlock = {
                    "?????",
                },
            },
            j_aij_rat_maze = {
                name = "ネズミの迷路",
                text = {
                    "",
                },
            },
            j_aij_rattling_snow_credits_joker = {
                name = "RattlingSnow353",
                text = {
                    "「何でも屋で、何も得意ではないが、多くの場合、1 つの分野の",
                    "達人よりも優れています。」",
                },
            },
            j_aij_read_em_and_weep = {
                name = "読んで泣いてください",
                text = {
                    "ハンドに{C:attention}ストレート{}が含まれている場合、得点する前に、プレイ",
                    "されたすべてのカードを同じランダムな{C:attention}スート{}に変換する",
                },
            },
            j_aij_realty_sign = {
                name = "不動産の看板",
                text = {
                    "{C:attention}フルハウス{}をプレイすると、このジョーカーの{C:money}売却額{}が{C:money}$#1#{}",
                    "増える",
                },
            },
            j_aij_red_joker = {
                name = "レッドジョーカー",
                text = {
                    "得点したカードごとに{C:mult}+#2#{}の倍率が増加する。以前に得点した",
                    "カードをプレイするとリセットされる",
                    "{C:inactive}（カード履歴はリセット時に消去される）{}",
                    "{C:inactive}（現在{C:mult}+#1#{}{C:inactive}倍率）{}",
                },
            },
            j_aij_red_sky = {
                name = "レッドスカイ",
                text = {
                    "各ラウンドの{C:attention}最初{}と{C:attention}最後のハンド{}では",
                    "得点するカードの{C:chips}チップ{}を{C:mult}加算倍率{}として加える",
                },
            },
            j_aij_red_wine = {
                name = "赤ワイン",
                text = {
                    "各{C:attention}ハンド{}の{C:attention}最初{}の得点カードは{C:hearts}ハート{}のスーツに変換される",
                },
            },
            j_aij_remina = {
                name = "レミナ",
                text = {
                    "{C:attention}スモールブラインド{}または{C:attention}ビッグブラインド{}が選択された場合、",
                    "このジョーカーは{C:attention}消耗カード{}エリアにあるすべての",
                    "{C:planet}プラネットカード{}を破壊し、{C:chips}チップ{}と{C:mult}倍率{}を獲得する",
                    "{C:inactive,s:0.8}（現在{}{C:chips,s:0.8}+#2#{}{C:inactive,s:0.8}チップス、{}{C:mult,s:0.8}+#1#{}{C:inactive,s:0.8}倍率）{}",
                },
            },
            j_aij_requiem = {
                name = "レクイエム",
                text = {
                    "すべての{C:attention}ジョーカー{}と{C:attention}バフーン{}{C:attention}パック{}は{C:money}無料{}です",
                },
            },
            j_aij_revolving_jubilation = {
                name = "回転する歓喜",
                text = {
                    "",
                },
            },
            j_aij_richie_rich = {
                name = "リッチー・リッチ",
                text = {
                    "ラウンド終了時のあなたの{C:money}お金{}への{X:money,C:white}X#1#{}",
                },
            },
            j_aij_right_angle = {
                name = "直角",
                text = {
                    "{C:attention}9{}が得点したときに、手札にあるランク{C:attention}10{}のカードをすべて",
                    "得点する",
                },
            },
            j_aij_rising_sun = {
                name = "ライジングサン",
                text = {
                    "ラウンドの{C:attention}最初{}と{C:attention}最後{}のハンドで{C:attention}最初{}と最後に得点したカードを",
                    "再発動する",
                },
            },
            j_aij_robin = {
                name = "ロビン",
                text = {
                    "",
                },
            },
            j_aij_rock_candy = {
                name = "ロックキャンディ",
                text = {
                    "",
                },
            },
            j_aij_rock_n_roll_clown = {
                name = "ロックンロールピエロ",
                text = {
                    "得点したカードは、すべてのポーカーハンドを合わせた{C:attention}レベル{}",
                    "ごとに{C:chips}+#1#{}チップを加える",
                    "{C:inactive}（現在{C:chips}+#2#{}チップ）{}",
                },
            },
            j_aij_rodeo_clown = {
                name = "ロデオピエロ",
                text = {
                    "ラウンドの最後のハンドでブラインドが負けた場合、この",
                    "ジョーカーは{C:mult}+#1#{}の倍率を獲得する",
                    "{C:inactive}（現在{C:mult}+#2#{}{C:inactive}倍率）{}",
                },
            },
            j_aij_rodeo_star = {
                name = "ロデオスター",
                text = {
                    "",
                },
            },
            j_aij_roland = {
                name = "ローランド",
                text = {
                    "",
                },
                unlock = {
                    "?????",
                },
            },
            j_aij_rounding_error = {
                name = "丸め誤差",
                text = {
                    "",
                },
            },
            j_aij_rubberhose = {
                name = "ゴムホース",
                text = {
                    "{C:mult}+#1#{}プレイしたハンドに{C:spades}ダークスーツ{}のみまたは{C:hearts}ライトスーツ{}",
                    "のみが含まれている場合の倍率",
                },
            },
            j_aij_rudolph = {
                name = "ルドルフ",
                text = {
                    "最初に得点するカードに{C:attention}レッドシール{}が付いていれば",
                    "他のカードを{C:attention}すべて{}再発動する",
                },
            },
            j_aij_rue_barre = {
                name = "バリー通り",
                text = {
                    "",
                },
            },
            j_aij_rummikub = {
                name = "ラミィキューブ",
                text = {
                    "{C:attention}ボスブラインド{}を{C:red}倒す{}たびに",
                    "{C:attention}ランク{}、{C:attention}スート{}、{C:attention}強化{}を指定した",
                    "カードを1枚生成してデッキに加える",
                },
            },
            j_aij_run = {
                name = ">走る",
                text = {
                    "この{C:attention}ジョーカー{}トリガーの{C:attention}左{}側にある{C:attention}ジョーカー{}は、ハンドが",
                    "得点される前ではなく、得点される{C:attention}前に{}発動しる",
                    "{C:inactive}（該当する場合）{}",
                },
            },
            j_aij_sack_joker = {
                name = "サックジョーカー",
                text = {
                    "",
                },
            },
            j_aij_saltimbanco = {
                name = "サルティンバンコ",
                text = {
                    "得点計算中、成功{C:green}確率{}は{X:mult,C:white}倍率の乗数{}に{X:mult,C:white}X1{}に{C:red}失敗{}確率を加えたものと",
                    "等しくなる",
                    "{C:inactive}（例: {C:green}4分の1{}-> {X:mult,C:white}X1.75{}）{}",
                },
            },
            j_aij_saluto = {
                name = "サルート",
                text = {
                    "各ショップで無料の{C:rare}レアパック{}を生成する",
                },
            },
            j_aij_sam_mcgee = {
                name = "サム・マギー",
                text = {
                    "プレイしたハンドの{C:attention}#1#{}を過ぎたカードごとに{X:mult,C:white}X#2#{}の倍率を",
                    "加える",
                },
            },
            j_aij_sandman = {
                name = "サンドマン",
                text = {
                    "",
                },
            },
            j_aij_sanguine_joker = {
                name = "サングインジョーカー",
                text = {
                    "ハートのスーツが付いているカードをプレイすると、得点時に",
                    "{C:green}#2#分の#1#{}の確率でランダムな{C:attention}タグ{}が生成される",
                },
            },
            j_aij_sannio = {
                name = "サンニオ",
                text = {
                    "",
                },
            },
            j_aij_santimariyambu = {
                name = "サンティマリヤンブ",
                text = {
                    "",
                },
            },
            j_aij_sapphic_joker = {
                name = "サフィック・ジョーカー",
                text = {
                    "得点計算クイーンは、フルデッキのクイーンごとに{C:chips}+#2#{}チップと",
                    "{C:mult}+#1#{}倍率を加える",
                    "{C:inactive,s:0.8}（現在{}{C:chips,s:0.8}+#4#{}{C:inactive,s:0.8}チップス、{}{C:mult,s:0.8}+#3#{}{C:inactive,s:0.8}倍率）{}",
                },
            },
            j_aij_sator_square = {
                name = "サトールスクエア",
                text = {
                    "",
                },
            },
            j_aij_saucy_jacky = {
                name = "生意気なジャッキー",
                text = {
                    {
                        "得点したクイーンをすべて{C:red}破壊{}する",
                    },
                    {
                        "スコアを獲得した{C:attention}ジャック{}は、この方法で{C:red}破壊{}されたクイーン",
                        "ごとに{C:mult}+#2#{}の倍率を加える",
                        "{C:inactive}（現在{C:mult}+#1#{}{C:inactive}倍率）{}",
                    },
                },
            },
            j_aij_saveloy = {
                name = "セーブロイ",
                text = {
                    "{C:mult}+#1#{}倍率、{C:mult}-#2#{}{C:money}ショップ{}での{C:green}リロール{}ごとの倍率",
                },
            },
            j_aij_scanlines = {
                name = "走査線",
                text = {
                    "",
                },
            },
            j_aij_scapino = {
                name = "スカピーノ",
                text = {
                    "{C:money}ショップ{}でのリロールには{C:money}+$#1#{}の費用がかかりますが、",
                    "{C:attention}ブースターパック{}も補充される",
                },
            },
            j_aij_scarab = {
                name = "スカラベ",
                text = {
                    "所持している間、クリアに必要なアンティ{C:attention}-#1#{}",
                    "{C:inactive}（クリア条件のアンティ中は売却・破壊できない）",
                },
            },
            j_aij_scaramouche = {
                name = "スカラムーシュ",
                text = {
                    "プレイしたハンドが{C:attention}#1#{}の場合、得点したすべてのカードを{C:attention}再",
                    "{C:attention}発動{}する",
                    "{C:inactive}（ラウンド終了時に手札が変わります）{}",
                },
            },
            j_aij_scarecrow = {
                name = "かかし",
                text = {
                    "",
                },
            },
            j_aij_scary_story = {
                name = "怖い話",
                text = {
                    "{C:attention}スタンダードパック{}の基本エディションのトランプは、{C:green}#2#分の",
                    "{C:green}#1#{}の確率でネガティブになる",
                },
            },
            j_aij_scopaesthesia = {
                name = "スコパシージア",
                text = {
                    "あなたの{C:attention}デッキ{}の次の{C:attention}カード{}を公開する。同じ{C:attention}ランク{}のカードには、",
                    "{X:mult,C:white}X#1#{}の倍率が与えられます",
                },
            },
            j_aij_scorecard = {
                name = "スコアカード",
                text = {
                    "ブラインドを選択した場合、{C:attention}ランダム{}なポーカーハンドを{C:attention}#1#{}",
                    "レベルアップする",
                },
            },
            j_aij_scott_free = {
                name = "スコット・フリー",
                text = {
                    "ラウンド終了時に手札にある{C:attention}未強化の{}カードは{C:money}$#1#{}を獲得する",
                },
            },
            j_aij_screamer = {
                name = "スクリーマー",
                text = {
                    "",
                },
            },
            j_aij_screaming_joker = {
                name = "スクリーミングジョーカー",
                text = {
                    "",
                },
            },
            j_aij_scroggin = {
                name = "スクロギン",
                text = {
                    {
                        "この{C:attention}ジョーカー{}は、カードがワイルドに強化されると{X:mult,C:white}X#1#{}倍率を",
                        "獲得するが、手札に{C:attention}フラッシュ{}が含まれる場合は{X:mult,C:white}X#2#{}倍率を失う",
                        "{C:inactive}（現在{X:mult,C:white}X#3#{}{C:inactive}倍率）{}",
                    },
                    {
                        "このジョーカーを入手すると{C:tarot}恋人{}を生成する",
                        "{C:inactive}（空きスロットが必要）",
                    },
                },
            },
            j_aij_scrunched_joker = {
                name = "縮こまったジョーカー",
                text = {
                    {
                        "ラウンドの{C:attention}最初{}と{C:attention}最後{}のハンドの{C:chips}+#1#{}チップと{C:mult}+#2#{}倍率",
                    },
                    {
                        "それ以外の場合は、{C:chips}+#3#{}チップと{C:mult}+#4#{}倍率",
                    },
                },
            },
            j_aij_sculptor = {
                name = "彫刻家",
                text = {
                    "",
                },
            },
            j_aij_scurra = {
                name = "スキュラ",
                text = {
                    "レッドシール{C:attention}#1#{}の追加時間を持つすべてのプレイ済みカードを",
                    "再発動する",
                },
            },
            j_aij_sd_card = {
                name = "SDカード",
                text = {
                    "",
                },
            },
            j_aij_second_tier_meme = {
                name = "第二層ミーム",
                text = {
                    "ハンドがあなたの{C:attention}2 番目{}{C:attention}最も多くプレイされた{}のポー",
                    "カー ハンドである場合、{C:attention}再度アクティブ化{}すべての{C:attention}得",
                    "{C:attention}点{}カード",
                    "{C:inactive}(現在{}{C:attention}#1#{}{C:inactive}){}",
                },
            },
            j_aij_selene = {
                name = "セレーネ",
                text = {
                    "",
                },
            },
            j_aij_semaphore = {
                name = "セマフォ",
                text = {
                    "得点したカードは、残りの捨て札ごとに{C:mult}+#1#{}の倍率を加える",
                },
            },
            j_aij_sensational_news = {
                name = "センセーショナルなニュース",
                text = {
                    "",
                },
            },
            j_aij_senseless_joker = {
                name = "センスレスジョーカー",
                text = {
                    "",
                },
            },
            j_aij_servillus = {
                name = "セルヴィリウス",
                text = {
                    "{C:attention}ボスブラインド{}を倒すとに規格外のタグを生成する",
                },
            },
            j_aij_sexton = {
                name = "セクストン",
                text = {
                    "",
                },
                unlock = {
                    "?????",
                },
            },
            j_aij_shapes = {
                name = "形状",
                text = {
                    "",
                },
            },
            j_aij_sharp_joker = {
                name = "シャープジョーカー",
                text = {
                    "",
                },
            },
            j_aij_sherrif = {
                name = "シェリフ",
                text = {
                    "各ハンドで最初に得点した{C:attention}ワイルドカード{}が{C:money}$#1#{}を獲得する",
                },
            },
            j_aij_shir_ei = {
                name = "シリエイ",
                text = {
                    "",
                },
                unlock = {
                    "?????",
                },
            },
            j_aij_shock_collar = {
                name = "ショックカラー",
                text = {
                    "",
                },
            },
            j_aij_shock_content = {
                name = "衝撃内容",
                text = {
                    "",
                },
            },
            j_aij_shock_humor = {
                name = "ショックユーモア",
                text = {
                    "",
                },
            },
            j_aij_shogi_koma = {
                name = "将棋駒",
                text = {
                    "",
                },
            },
            j_aij_shredded_joker = {
                name = "シュレッドジョーカー",
                text = {
                    "{C:mult}+#1#{}この{C:attention}ラウンド{}で捨てられたカードごとの倍率",
                    "{C:inactive}（現在{C:mult}+#2#{}{C:inactive}倍率）{}",
                },
            },
            j_aij_shrinkflation = {
                name = "シュリンクフレーション",
                text = {
                    "",
                },
            },
            j_aij_silent_sam = {
                name = "サイレントサム",
                text = {
                    "手札にある{C:attention}カード{}ごとに{X:mult,C:white}X#1#{}の倍率が与えられます",
                },
            },
            j_aij_silly_billy = {
                name = "愚かなビリー",
                text = {
                    "{C:mult}+#1#{}プレイしたハンドの各{C:attention}強化{}、{C:attention}シール{}、{C:attention}エディション{}の倍率",
                },
            },
            j_aij_silly_sausage = {
                name = "愚かなソーセージ",
                text = {
                    "{C:green}リロール{}コスト{C:money}$#1#{}が減りますショップを出ると{C:money}$#2#{}{C:attention}減る{}",
                },
            },
            j_aij_silver = {
                name = "シルバー",
                text = {
                    "プレイしたハンドが{C:attention}フルハウス{}の場合、すべての得点カードを",
                    "再発動する",
                },
            },
            j_aij_silver_screen = {
                name = "シルバースクリーン",
                text = {
                    "{C:attention}表{}のカードが{C:red}破壊{}になったとき、{C:attention}手札{}のランダムなカ",
                    "ードに{C:aij_silver}シルバー{}を加える",
                },
            },
            j_aij_silvio = {
                name = "シルビオ",
                text = {
                    "手に持ったクイーンごとにすべてのキングを再発動する",
                },
                unlock = {
                    "?????",
                },
            },
            j_aij_simnell = {
                name = "シムネル",
                text = {
                    "",
                },
            },
            j_aij_simple_simon = {
                name = "シンプル・サイモン",
                text = {
                    "{C:chips}+#1#{}チップ",
                },
            },
            j_aij_single_cell = {
                name = "単一細胞",
                text = {
                    "各ハンドで最初に得点した数字のカードには{C:chips}+#1#{}チップが与え",
                    "られます",
                },
            },
            j_aij_sitcom = {
                name = "シットコム",
                text = {
                    "",
                },
            },
            j_aij_skald = {
                name = "スカルド",
                text = {
                    "",
                },
            },
            j_aij_skeeter = {
                name = "スキーター",
                text = {
                    "",
                },
            },
            j_aij_skilotar_credits_joker = {
                name = "Skilotar",
                text = {
                    "「スキッビー・ディー」",
                },
            },
            j_aij_skinsuit = {
                name = "スキンスーツ",
                text = {
                    "ラウンドの最初の手札がちょうど 1 枚の場合、それを{C:red}破壊{}し、",
                    "その{C:attention}スート{}を手札にあるランダムなカードにパッチする",
                },
            },
            j_aij_skomorokh = {
                name = "スコモロフ",
                text = {
                    "フルデッキ内の各エディションカードに{X:mult,C:white}X#1#{}の倍率を加える",
                    "{C:inactive}（現在{X:mult,C:white}X#2#{}{C:inactive}倍率）{}",
                },
            },
            j_aij_sky_trees = {
                name = "スカイツリー",
                text = {
                    "{C:attention}ブルーシール{}は、基本タイプの{C:planet}惑星{}カードの代わりに、{C:mult}倍率{}と",
                    "{C:chips}チップ{}タイプの{C:planet}惑星{}カードの両方を加える",
                },
            },
            j_aij_skytower = {
                name = "スカイタワー",
                text = {
                    "最もプレイしたハンド以外のハンドには、{C:attention}#1#{}の追加レベルが",
                    "付く",
                },
            },
            j_aij_skywriting = {
                name = "スカイライティング",
                text = {
                    "",
                },
            },
            j_aij_sleazy_joker = {
                name = "卑劣なジョーカー",
                text = {
                    "",
                },
            },
            j_aij_sleepy_joker = {
                name = "眠たいジョーカー",
                text = {
                    "プレイしたハンドが{C:spades}スペード{}と{C:clubs}クラブ{}だけなら",
                    "倍率{X:mult,C:white}X#1#{}",
                },
            },
            j_aij_slim_joker = {
                name = "スリムジョーカー",
                text = {
                    "{C:mult}+#1#{}倍率{C:mult}-#2#{}プレイしたハンドのカードごとの倍率",
                },
            },
            j_aij_slippery_when_wet = {
                name = "濡れると滑りやすい",
                text = {
                    "得点カードは、{C:attention}隣接{}するカードの合計{C:attention}ランク{}に等しい{C:chips}チップ{}を",
                    "加える",
                },
            },
            j_aij_slubberdegullion = {
                name = "スラバーデガリオン",
                text = {
                    "{C:red}+#1#{}プレイされた手に少なくとも{C:attention}3{}スコアを付けないカードが",
                    "含まれている場合、このラウンドを{C:red}破棄{}する",
                },
            },
            j_aij_smide = {
                name = "スミデ",
                text = {
                    "{C:chips}+#1#{}フルデッキの{C:attention}フェイスカード{}ごとのチップ",
                    "{C:inactive}（現在{C:chips}+#2#{}チップ）{}",
                },
            },
            j_aij_sneaky_pete = {
                name = "卑劣なピート",
                text = {
                    "ラウンド終了時に{C:attention}デッキ全体{}の{C:money}ゴールドシール{}ごとに{C:money}$#2#{}を獲得",
                    "{C:inactive}（現在{C:money}$#1#{}）{}",
                },
            },
            j_aij_snow_cone = {
                name = "スノーコーン",
                text = {
                    "",
                },
            },
            j_aij_so_retro = {
                name = "とてもレトロ",
                text = {
                    "",
                },
            },
            j_aij_soft_serve = {
                name = "ソフトクリーム",
                text = {
                    "改造された{C:attention}ジョーカー{}、{C:tarot}タロット{}、{C:planet}惑星{}は{C:money}ショップ{}に表示されず、",
                    "{C:attention}#1#{}の購入後に消費される",
                },
            },
            j_aij_sommers = {
                name = "サマーズ",
                text = {
                    "プレイされたすべてのハンドを{C:attention}レベルアップ{}する",
                },
                unlock = {
                    "?????",
                },
            },
            j_aij_soothsayer = {
                name = "占い師",
                text = {
                    "",
                },
            },
            j_aij_sophe_credits_joker = {
                name = "Sophe",
                text = {
                    "「スキッビー・ディー」",
                },
            },
            j_aij_sorbet = {
                name = "シャーベット",
                text = {
                    "",
                },
            },
            j_aij_sot = {
                name = "ソット",
                text = {
                    {
                        "保持している{C:attention}タグ{}ごとに{X:mult,C:white}X#1#{}倍率が与えられます",
                        "{C:inactive}（現在{X:mult,C:white}X#2#{}{C:inactive}倍率）{}",
                    },
                    {
                        "このジョーカーを保持している間はタグは発動しません",
                    },
                },
            },
            j_aij_soviet = {
                name = "ソビエト",
                text = {
                    "{C:mult}+#1#{}プレイしたハンドにキングまたはクイーンが含まれていない",
                    "場合の倍率",
                },
            },
            j_aij_sparky = {
                name = "スパーキー",
                text = {
                    {
                        "手札にある{C:attention}チャージされたカード{}は、プレイされた手札のカードにも",
                        "影響する",
                    },
                    {
                        "プレイされた{C:attention}手札{}にある{C:attention}チャージされたカード{}は、手札にある",
                        "カードにも影響する",
                    },
                },
            },
            j_aij_spectre = {
                name = "スペクター",
                text = {
                    "{C:attention}ボスブラインド{}を倒すと、保持しているすべての{C:attention}消耗カード{}を",
                    "ランダムな{C:spectral}スペクトル{}カードと交換する",
                },
            },
            j_aij_spider = {
                name = "スパイダー",
                text = {
                    "",
                },
            },
            j_aij_spiders_georg = {
                name = "スパイダース・ゲオルグ",
                text = {
                    "{C:mult}倍率{}に{X:mult,C:white}X#2#{}と、このランでハンドごとに{C:attention}得点{}されたランク{C:attention}8{}の",
                    "カードの{C:attention}平均{}枚数を乗算する",
                    "{C:inactive}（現在{X:mult,C:white}X#1#{}{C:inactive}倍率）{}",
                },
            },
            j_aij_spiral_gestalt = {
                name = "スパイラルゲシュタルト",
                text = {
                    "死亡時、またはこのジョーカーが売却された場合、アンティ{S:1.1,C:red,E:2}自壊する{}の",
                    "先頭に{C:red}リセット{}される",
                },
            },
            j_aij_spirit_mask = {
                name = "精霊の仮面",
                text = {
                    "",
                },
            },
            j_aij_splat = {
                name = "スプラット！",
                text = {
                    "{C:green}#2#分の#1#{}各{C:attention}得点{}カードが溶解{C:attention}シール{}を獲得するチャンス",
                },
            },
            j_aij_spoofy = {
                name = "スプーフィー",
                text = {
                    "「ブラプトロをプレイしたほうがいいよ」",
                },
            },
            j_aij_spoofy_credits_joker = {
                name = "Spoofy",
                text = {
                    "「スキッビー・ディー」",
                },
            },
            j_aij_springy_joker = {
                name = "弾力のあるジョーカー",
                text = {
                    "",
                },
            },
            j_aij_square_eyes = {
                name = "四角い目",
                text = {
                    "ランク{C:attention}4{}の得点したカードは、プレイしたハンドの{C:attention}4{}ごとに{C:mult}+#1#{}の",
                    "倍率を加える",
                },
            },
            j_aij_squeezy_pete = {
                name = "スクイージー・ピート",
                text = {
                    "{C:attention}フルハウス{}を含む連続プレイハンドごとに{X:mult,C:white}X#1#{}倍率を獲得する",
                    "{C:inactive}（現在{X:mult,C:white}X#2#{}{C:inactive}倍率）{}",
                },
            },
            j_aij_stage_production = {
                name = "舞台制作",
                text = {
                    "{B:1,C:white,s:0.8}アクティブ能力",
                    "ラウンドごとに 1 回、次のブラインドが選択さ",
                    "れるまで{C:attention}一時的に{}ジョーカーを右に{C:attention}リロール{}する",
                    "{C:inactive}#1#",
                },
            },
            j_aij_stagehand = {
                name = "舞台係",
                text = {
                    "保持している{C:attention}ジョーカー{}ごとに{X:mult,C:white}X#1#{}の倍率が与えられます",
                    "{C:inactive}（現在{X:mult,C:white}X#2#{}{C:inactive}倍率）{}",
                },
            },
            j_aij_stained_glass_joker = {
                name = "ステンドグラスのジョーカー",
                text = {
                    "{C:attention}ガラスカード{}をすべての{C:attention}スート{}として扱う",
                },
            },
            j_aij_stargazer = {
                name = "スターゲイザー",
                text = {
                    "",
                },
            },
            j_aij_stargazy_pie = {
                name = "スターゲイジー・パイ",
                text = {
                    "次に使う{C:attention}#1#{}枚の{C:planet}惑星{}カードを再発動する",
                },
            },
            j_aij_stave = {
                name = "ステーブ",
                text = {
                    "{C:dark_edition}エディション{}付きのジョーカーが販売されると、その",
                    "{C:dark_edition}エディション{}をエディションのないランダムなジョーカーに適用する",
                    "（もし可能なら）",
                    "{C:inactive}（ネガティブを除く）{}",
                },
            },
            j_aij_stereoscopic_joker = {
                name = "立体ジョーカー",
                text = {
                    "",
                },
            },
            j_aij_steven = {
                name = "スティーブン",
                text = {
                    "",
                },
            },
            j_aij_stick_figure = {
                name = "スティックフィギュア",
                text = {
                    "",
                },
            },
            j_aij_sticker = {
                name = "ステッカー",
                text = {
                    "{C:mult}+#1#{}{C:attention}ジョーカー{}の各{C:attention}ステッカー{}の倍率",
                    "{C:inactive}（現在{C:mult}+#2#{}{C:inactive}倍率）{}",
                },
            },
            j_aij_sticker_exclude_stake_stickers = {
                name = "ステッカー",
                text = {
                    "{C:mult}+#1#{}{C:attention}ジョーカー{}の各{C:attention}ステッカー{}の倍率",
                    "{C:inactive}（ステークステッカーを除く）{}",
                    "{C:inactive}（現在{C:mult}+#2#{}{C:inactive}倍率）{}",
                },
            },
            j_aij_sticker_sheet_needs_renamed = {
                name = "ステッカーシート (名前変更が必要)",
                text = {
                    "",
                },
            },
            j_aij_stock_broker = {
                name = "証券ブローカー",
                text = {
                    "{C:attention}X#1#{}から{C:attention}X#2#{}までのランダムな金額を利息に乗算する",
                },
            },
            j_aij_stock_photo = {
                name = "ストックフォト",
                text = {
                    {
                        "{C:attention}ショップ{}に入ると{C:attention}メガスタンダードパック{}が開きます",
                    },
                    {
                        "{C:green}#2#分の#1#{}スキップすると{C:red}自壊する{}チャンス",
                    },
                },
            },
            j_aij_stone = {
                name = "石",
                text = {
                    "",
                },
            },
            j_aij_stracciatella = {
                name = "ストラッチャテッラ",
                text = {
                    {
                        "各ハンドの後、{C:attention}得点{}されたときに各得点カードが{C:attention}永続的{}に{C:money}$#3#{}を",
                        "獲得するチャンスが{C:green}#2#分の#1#{}",
                    },
                    {
                        "発動後に{C:red}自壊する{}",
                    },
                },
            },
            j_aij_straight_to_hell = {
                name = "地獄へ直行",
                text = {
                    "捨て札に{C:attention}ストレート{}が含まれている場合、この{C:attention}ジョーカー{}は{X:mult,C:white}X#1#{}の",
                    "倍率を獲得する",
                    "{C:inactive}（現在{X:mult,C:white}X#2#{}{C:inactive}倍率）{}",
                },
            },
            j_aij_string_theory = {
                name = "弦理論",
                text = {
                    "{C:blue}ハンド{}は常に{C:attention}ストレート{}を含むものとしてカウントされる",
                },
            },
            j_aij_stultor = {
                name = "シュタルター",
                text = {
                    "{C:attention}ボスブラインド{}をアンティごとに{C:attention}#1#{}回無料でリロールする",
                },
            },
            j_aij_stupid_sauce = {
                name = "バカソース",
                text = {
                    "",
                },
            },
            j_aij_sudoku = {
                name = "数独",
                text = {
                    "このジョーカーは、{C:attention}ストレート{}を含む連続プレイハンドごとに",
                    "{X:mult,C:white}X#1#{}の倍率を獲得する",
                    "{C:inactive}（現在{X:mult,C:white}X#2#{}{C:inactive}倍率）{}",
                },
            },
            j_aij_suibhne = {
                name = "スブネ",
                text = {
                    "このジョーカーは、手に{C:paperback_stars}スター{}{C:attention}キングス{}のみが含まれ",
                    "ている場合、{C:attention}プレイしたハンド{}のカードごとに{X:chips,C:white}X#1#{}チ",
                    "ップを獲得する。",
                    "{C:inactive}(現在{}{X:chips,C:white}X#2#{}{C:inactive}チップ){}",
                },
            },
            j_aij_summer_tan = {
                name = "サマータン",
                text = {
                    "",
                },
            },
            j_aij_sundae_1 = {
                name = "サンデー",
                text = {
                    {
                        "{C:chips}+#1#{}チップ",
                    },
                    {
                        "{C:attention}#2#{}ラウンド後に消費",
                    },
                },
            },
            j_aij_sundae_2 = {
                name = "サンデー",
                text = {
                    {
                        "{C:mult}+#1#{}倍率",
                    },
                    {
                        "{C:attention}#2#{}ラウンド後に消費",
                    },
                },
            },
            j_aij_sundae_3 = {
                name = "サンデー",
                text = {
                    {
                        "{C:attention}ラウンド{}終了時に{C:money}$#1#{}を獲得",
                    },
                    {
                        "{C:attention}#2#{}ラウンド後に消費",
                    },
                },
            },
            j_aij_sunny_joker = {
                name = "サニージョーカー",
                text = {
                    "プレイしたハンドに{C:attention}ロイヤルフラッシュ{}が含まれている場合、",
                    "すべての得点カードは{X:mult,C:white}X#1#{}の倍率を獲得する",
                },
            },
            j_aij_sunny_side = {
                name = "サニーサイド",
                text = {
                    "{C:money}お金{}を稼ぐと、この{C:attention}ジョーカー{}はその{C:money}お金{}の 2 倍を売却額",
                    "として獲得し、稼いだ{C:money}お金{}を差し引きます",
                },
            },
            j_aij_super_meat_joker = {
                name = "スーパーミートジョーカー",
                text = {
                    "",
                },
            },
            j_aij_surgeon = {
                name = "外科医",
                text = {
                    "",
                },
            },
            j_aij_survivalaren_credits_joker = {
                name = "Survivalaren",
                text = {
                    "「それを卑劣に受け取ってください」",
                },
            },
            j_aij_suspend = {
                name = "つるす",
                text = {
                    "",
                },
            },
            j_aij_tabula_rasa = {
                name = "タブラ・ラサ",
                text = {
                    "ブラインドを選択すると、このジョーカー{C:dark_edition}エディション{}は削除",
                    "され、その効果は固有になる",
                },
            },
            j_aij_taggart = {
                name = "タガート",
                text = {
                    "獲得する{C:attention}タグ{}ごとにコピーを{C:attention}#1#{}個作る",
                    "{C:inactive}（ダブルタグを除く）",
                },
            },
            j_aij_taikomochi = {
                name = "太鼓餅",
                text = {
                    "{C:attention}ジャック{}を手に持つと{C:chips}+#1#{}チップが与えられます",
                },
            },
            j_aij_taillefer = {
                name = "タイユフェール",
                text = {
                    "このジョーカーはプレイされるハンドごとに{X:mult,C:white}X#2#{}倍率を獲得し、",
                    "{C:attention}#3#{}{C:attention}ボスブラインド{}を倒した後に{C:red}自壊する{}",
                    "{C:inactive}（現在{X:mult,C:white}X#1#{}倍率、{C:attention}#4#{}/{C:attention}#3#{}）{}",
                },
                unlock = {
                    "?????",
                },
            },
            j_aij_talhak = {
                name = "タルハク",
                text = {
                    "{C:attention}ボスブラインド{}が倒されたとき、生成する非シークレット",
                    "{C:spectral}スペクトル{}カードを選ぶ",
                    "{C:inactive}（空きスロットが必要）{}",
                },
                unlock = {
                    "?????",
                },
            },
            j_aij_tangled_joker = {
                name = "もつれたジョーカー",
                text = {
                    "{C:chips}+#1#{}保持している各{C:attention}ジョーカー{}のチップ{C:mult}+#2#{}空のジョーカー",
                    "スロットごとの倍率",
                    "{C:inactive,s:0.8}（現在{}{C:chips,s:0.8}+#3#{}{C:inactive,s:0.8}チップス、{}{C:mult,s:0.8}+#4#{}{C:inactive,s:0.8}倍率）{}",
                },
            },
            j_aij_tar_joker = {
                name = "タールジョーカー",
                text = {
                    "",
                },
            },
            j_aij_tarlton = {
                name = "タールトン",
                text = {
                    "このラウンドで以前にプレイした{C:attention}ハンド{}の{C:attention}合計{}{C:chips}チップ{}に等しい",
                    "+ チップを加える",
                    "{C:inactive}（現在{C:chips}+#1#{}チップ）{}",
                },
                unlock = {
                    "?????",
                },
            },
            j_aij_tax_collector = {
                name = "徴税人",
                text = {
                    "",
                },
            },
            j_aij_tax_return = {
                name = "納税申告書",
                text = {
                    "",
                },
            },
            j_aij_taylor_credits_joker = {
                name = "Taylor",
                text = {
                    "「スキッビー・ディー」",
                },
            },
            j_aij_te_aroha = {
                name = "テ・アロハ",
                text = {
                    "",
                },
            },
            j_aij_teeny_joker = {
                name = "ティーニージョーカー",
                text = {
                    "{C:chips}+#1#{}プレイしたハンドにランク{C:attention}2{}のカードのみが含まれている",
                    "場合のチップ",
                },
            },
            j_aij_tellurian_joker = {
                name = "テルリアンジョーカー",
                text = {
                    "",
                },
            },
            j_aij_ten_sharp = {
                name = "テンシャープ",
                text = {
                    "ランク{C:attention}10{}のカードに{C:attention}隣接{}するすべての得点済みカードを再発動する",
                },
            },
            j_aij_test_card = {
                name = "テストカード",
                text = {
                    "手に持った{C:attention}エディション{}が効果を発動する",
                },
            },
            j_aij_tetraphobia = {
                name = "四面恐怖症",
                text = {
                    "このジョーカーは、{C:attention}4{}が破棄されるごとに{C:mult}+#2#{}の倍率を獲得し、{C:attention}4{}が",
                    "得点されるとリセットされる",
                    "{C:inactive}（現在{C:mult}+#1#{}{C:inactive}倍率）{}",
                },
            },
            j_aij_tetrominoker = {
                name = "テトロミノカー",
                text = {
                    "ランク{C:attention}4{}の得点したカードには、自分の{C:attention}コピー{}を生成する可能性が",
                    "ある{C:green}#2#分の#1#{}",
                },
            },
            j_aij_thalia = {
                name = "タリア",
                text = {
                    "ラウンドの最初の捨て札に正確に{C:attention}1{}カードが含まれている場合、",
                    "そのカードは永続的に{C:attention}+#1#{}トリガーを再度獲得する",
                },
                unlock = {
                    "?????",
                },
            },
            j_aij_the_artist = {
                name = "アーティスト",
                text = {
                    "{C:attention}+#1#{}{C:tarot}タロット{}カードの選択制限について",
                },
            },
            j_aij_the_bell = {
                name = "ザ・ベル",
                text = {
                    "{B:1,C:white,s:0.8}アクティブ能力",
                    "{C:money}$#1#{}を支払ってクーポンをリロールしてください",
                },
            },
            j_aij_the_black_spot = {
                name = "ブラックスポット",
                text = {
                    "",
                },
            },
            j_aij_the_clown_show = {
                name = "道化師のショー",
                text = {
                    "このランで購入した{C:attention}ジョーカー{}1枚につき",
                    "チップ{C:chips}+#1#{}",
                    "{C:inactive}（現在のチップ {C:chips}+#2#{C:inactive}）",
                },
            },
            j_aij_the_dud = {
                name = "不発弾",
                text = {
                    "",
                },
            },
            j_aij_the_far_lands = {
                name = "遠い国",
                text = {
                    "{C:attention}#1#{}は{C:attention}同じランク{}としてカウントされる",
                },
            },
            j_aij_the_freezer = {
                name = "冷凍庫",
                text = {
                    "",
                },
            },
            j_aij_the_green_room = {
                name = "グリーンルーム",
                text = {
                    "",
                },
            },
            j_aij_the_grim_joker = {
                name = "グリムジョーカー",
                text = {
                    "{C:planet}ブルー{}または{C:tarot}パープル{}シールで生成した",
                    "{C:attention}消耗カード{}は{C:green}#2#分の#1#{}の確率で{C:dark_edition}ネガティブ{}になる",
                },
            },
            j_aij_the_hare = {
                name = "ウサギ",
                text = {
                    "ハンドごとに合計スコアに{C:aij_plasma}#1#{}が追加される",
                },
            },
            j_aij_the_herald = {
                name = "ヘラルド",
                text = {
                    "{C:blue}ハンド{}は常に最もプレイしたハンドを含むものとしてカウントさ",
                    "れる",
                    "{C:inactive}（現在{C:attention}#1#{}）{}",
                },
            },
            j_aij_the_house_that_jack_built = {
                name = "ジャックが建てた家",
                text = {
                    "スコアを獲得した{C:attention}ジャック{}は{C:chips}チップ{}を与え、{C:attention}フルハウス{}の{C:attention}レベル{}",
                    "と同じ{C:mult}倍率{}を加える",
                },
            },
            j_aij_the_jester = {
                name = "道化師",
                text = {
                    "各ラウンドで最初に{C:attention}ジョーカー{}を売却すると",
                    "{C:tarot}愚者{}を生成する",
                    "{C:inactive}#1#{}",
                },
            },
            j_aij_the_jolly = {
                name = "ザ・ジョリー",
                text = {
                    "プレイしたハンドに{C:attention}ストレートフラッシュ{}が含まれている場合、",
                    "{C:attention}フラッシュ{}と{C:attention}ストレート{}の合計レベルに等しい追加レベルで",
                    "スコアが獲得される",
                },
            },
            j_aij_the_judge = {
                name = "裁判官",
                text = {
                    "",
                },
            },
            j_aij_the_last_man = {
                name = "最後の男",
                text = {
                    "",
                },
            },
            j_aij_the_living_god = {
                name = "生ける神",
                text = {
                    "",
                },
            },
            j_aij_the_ludovico_technique = {
                name = "ルドヴィコ・テクニック",
                text = {
                    "ラウンドの{C:attention}最後のハンド{}をプレイすると",
                    "このラウンドの{C:attention}最初にプレイした役{}のレベルを上げる",
                    "{C:inactive}（現在 {C:attention}#1#{C:inactive}）",
                },
            },
            j_aij_the_mark = {
                name = "ザ・マーク",
                text = {
                    "",
                },
            },
            j_aij_the_mermaid = {
                name = "人魚",
                text = {
                    "{C:attention}ブースターパック{}中に1回捨てられる",
                },
            },
            j_aij_the_mycologists = {
                name = "菌学者",
                text = {
                    "プレイしたハンドがちょうど{C:attention}#1#{}の場合、右のカードを{C:red}破壊{}し、",
                    "その{C:chips}チップ{}、エンハンスメント、{C:dark_edition}エディション{}を左のカードに",
                    "加える",
                },
            },
            j_aij_the_slab = {
                name = "スラブ",
                text = {
                    "",
                },
            },
            j_aij_the_tape = {
                name = "テープ",
                text = {
                    "",
                },
            },
            j_aij_the_treachery_of_jokers = {
                name = "ジョーカーたちの裏切り",
                text = {
                    "{X:mult,C:white}X#1#{}倍率、{C:attention}消耗カード{}スロットに入る",
                },
            },
            j_aij_theyre_laughing_at_you = {
                name = "彼らはあなたを笑っています...",
                text = {
                    "{C:attention}ボスブラインド{}が倒されたとき、ランダムな{C:common}コモン{}ジョーカーに",
                    "{C:dark_edition}ネガティブ{}を適用する",
                },
            },
            j_aij_third_degree = {
                name = "第三学位",
                text = {
                    "",
                },
            },
            j_aij_thomazina = {
                name = "トマジナ",
                text = {
                    "得点した数字のカードは{C:chips}+#1#{}チップを加える。数字のカードが",
                    "得点されると、{C:chips}+#2#{}チップが増える",
                },
                unlock = {
                    "?????",
                },
            },
            j_aij_tilty_joker = {
                name = "ティルティ・ジョーカー",
                text = {
                    "{C:attention}得点{}カードは{C:attention}X#1#{}に基本{C:chips}チップ{}を加える",
                },
            },
            j_aij_tin = {
                name = "錫",
                text = {
                    "プレイしたハンドが{C:attention}フラッシュ{}の場合、すべての得点カードを",
                    "再発動する",
                },
            },
            j_aij_tin_man = {
                name = "ブリキ男",
                text = {
                    "ラウンド終了時に{C:attention}手{}札にある未強化のハートスーツカードすべてに",
                    "スチールを付与",
                },
            },
            j_aij_tipples_the_clown = {
                name = "ティップルズ・ザ・ピエロ",
                text = {
                    "",
                },
            },
            j_aij_tipteerer = {
                name = "チップティーラー",
                text = {
                    "{C:attention}ラウンド{}終了時に他の{C:attention}ジョーカー{}の{C:money}売却額{}の{C:attention}#2#%{}（切り上げ）を",
                    "獲得",
                    "{C:inactive}（現在{C:money}$#1#{}）{}",
                },
            },
            j_aij_toe_tag = {
                name = "トゥータグ",
                text = {
                    "",
                },
            },
            j_aij_tom_thumb = {
                name = "親指トム",
                text = {
                    "",
                },
            },
            j_aij_tomato_sauce = {
                name = "トマトソース",
                text = {
                    "",
                },
            },
            j_aij_tonpraten = {
                name = "トンプラテン",
                text = {
                    "{C:mult}+#1#{}倍率、常に最後に発動しる",
                },
            },
            j_aij_tool = {
                name = "道具",
                text = {
                    "{C:attention}スート{}を変更するカードには、古いスートのスートパッチが適用",
                    "される",
                },
            },
            j_aij_toothy_joker = {
                name = "トゥーシージョーカー",
                text = {
                    "{C:chips}+#1#{}この{C:attention}アンティ{}を使用した各{C:tarot}タロット{}カードのチップ",
                    "{C:inactive}（現在{C:chips}+#2#{}チップ）{}",
                },
            },
            j_aij_topsy_the_clown = {
                name = "ピエロのトプシー",
                text = {
                    "{C:chips}チップ{}と{C:mult}倍率{}を次に近い{C:attention}回文{}に四捨五入する",
                },
            },
            j_aij_tornado = {
                name = "竜巻",
                text = {
                    {
                        "このジョーカーは、すべての{C:attention}ランク{}が少なくとも 1 回得点され",
                        "た後、{X:mult,C:white}X#1#{}の倍率を獲得する",
                        "{C:inactive}（現在{X:mult,C:white}X#2#{}{C:inactive}倍率）{}",
                    },
                    {
                        "（残り: {C:inactive}#3#{}{C:inactive}#4#{}",
                    },
                },
            },
            j_aij_tortilla_chips = {
                name = "トルティーヤチップス",
                text = {
                    {
                        "この{C:attention}ジョーカー{}は、カードが{C:attention}ボーナス{}に強化されると{X:mult,C:white}X#1#{}{C:mult}倍率{}を",
                        "獲得するが、ハンド{C:chips}チップ{}が倍率を超えると{X:mult,C:white}X#2#{}倍率を失う",
                        "{C:inactive}（現在{X:mult,C:white}X#3#{}{C:inactive}倍率）{}",
                    },
                    {
                        "このジョーカーを入手すると{C:tarot}教皇{}を生成する",
                        "{C:inactive}（空きスロットが必要）",
                    },
                },
            },
            j_aij_totally_nuts = {
                name = "完全にナッツ",
                text = {
                    "{C:attention}+#1#{}{C:attention}消耗カード{}スロット、消耗カードが販売されると消費される",
                },
            },
            j_aij_totem_pole = {
                name = "トーテムポール",
                text = {
                    "{X:mult,C:white}X#1#{}倍率、スコアを付ける前にジョーカーを{C:attention}シャッフル{}する",
                },
            },
            j_aij_toto = {
                name = "トト",
                text = {
                    "獲得する{C:attention}タグ{}ごとにコピーを{C:attention}#1#{}個作る",
                    "{C:inactive}（ダブルタグを除く）",
                },
                unlock = {
                    "?????",
                },
            },
            j_aij_touchstone = {
                name = "試金石",
                text = {
                    "ハンドサイズ{C:attention}+#1#{}",
                    "デッキの上から{C:attention}#2#{}枚が見える",
                },
                unlock = {
                    "?????",
                },
            },
            j_aij_toynbee_joker = {
                name = "トインビー・ジョーカー",
                text = {
                    "ブラインドが{C:attention}負けた{}ときに、ラウンドの最初にプレイされた",
                    "ポーカーハンドの{C:planet}惑星{}カードを生成する",
                    "{C:inactive}（現在{C:attention}#1#{}）{}",
                    "{C:inactive}（空きスロットが必要）{}",
                },
            },
            j_aij_toyrapple = {
                name = "トイラップル",
                text = {
                    "",
                },
            },
            j_aij_toyrapple_credits_joker = {
                name = "Toyrapple",
                text = {
                    "「スキッビー・ディー」",
                },
            },
            j_aij_tract = {
                name = "トラクト",
                text = {
                    "{C:chips}+#1#{}所有する{C:attention}バウチャー{}ごとのチップ",
                    "{C:inactive}（現在{C:chips}+#2#{}チップ）{}",
                },
            },
            j_aij_train_conductor = {
                name = "電車の車掌",
                text = {
                    {
                        "{C:mult}加算倍率{}のジョーカーが、元の値の{C:attention}#1#%{}に",
                        "相当する{C:mult}乗算倍率{}を代わりに与える",
                        "{C:inactive}（最低 {X:mult,C:white}X1.2{C:inactive}）",
                    },
                    {
                        "{C:mult}乗算倍率{}のジョーカーが、元の値の{C:attention}#2#%{}に",
                        "相当する{C:mult}加算倍率{}を代わりに与える",
                    },
                },
            },
            j_aij_treasure_map = {
                name = "宝の地図",
                text = {
                    "{C:attention}#1#{}-{C:attention}#2#{}ブラインドをスキップした後、{C:attention}立体タグ{}を生成する",
                },
            },
            j_aij_triple_gooberberry_sunrise = {
                name = "トリプルグーバーベリーサンライズ",
                text = {
                    "{C:green}+#1#{}リストされたすべての{C:green}確率{}、{C:attention}#2#{}アンテの後に消費される",
                },
            },
            j_aij_triple_sundae = {
                name = "トリプルサンデー",
                text = {
                    {
                        "{C:chips}+#1#{}チップ、{C:mult}+#2#{}倍率、{C:attention}ラウンド{}終了時に{C:money}$#3#{}を獲得",
                    },
                    {
                        "{C:attention}#4#{}ラウンド後に一部消費される",
                    },
                },
            },
            j_aij_trophy_kill = {
                name = "トロフィーキル",
                text = {
                    "{C:attention}#3#{}{C:attention}の{}{C:attention}#2#{}が{C:red}破壊{}された後の{X:mult,C:white}X#1#{}倍率",
                    "{C:inactive}#4#",
                },
            },
            j_aij_truhan = {
                name = "トルハン",
                text = {
                    "いずれかのジョーカーが売却または{C:red}破壊{}されると、この",
                    "ジョーカーはジョーカーが保持されていた{C:attention}ラウンド{}ごとに{X:mult,C:white}X#2#{}の",
                    "倍率を獲得する",
                    "{C:inactive}（現在{X:mult,C:white}X#1#{}{C:inactive}倍率）{}",
                },
            },
            j_aij_trypophobia = {
                name = "集合体恐怖",
                text = {
                    "得点したカードが{C:attention}8{}だけなら倍率{C:mult}+#1#{}",
                },
            },
            j_aij_tumbler = {
                name = "タンブラー",
                text = {
                    "{X:mult,C:white}X#1#{}倍率、ブラインド中にカードが選択されると{X:mult,C:white}X#2#{}倍率を失う",
                },
            },
            j_aij_turrn = {
                name = "トゥロン",
                text = {
                    "{C:attention}+#1#{}ショップスロット{C:red}-#2#{}ラウンド終了時のショップスロット",
                },
            },
            j_aij_tussaud = {
                name = "タッソー蝋人形館",
                text = {
                    "フルデッキ内のユニークな{C:attention}シール{}ごとに{X:mult,C:white}X#1#{}の倍率が与えられ",
                    "ます",
                    "{C:inactive}（現在{X:mult,C:white}X#2#{}{C:inactive}倍率）{}",
                },
            },
            j_aij_twisted_pair = {
                name = "ツイストペア",
                text = {
                    "ハンドが{C:attention}ペア{}の場合、各カードは{C:attention}他のカード{}のスーツに対応する",
                    "スーツパッチを取得する",
                },
            },
            j_aij_two_fifty_six = {
                name = "256",
                text = {
                    "",
                },
            },
            j_aij_two_spooky_four_me = {
                name = "2不気味な4私",
                text = {
                    "",
                },
            },
            j_aij_ultrasound = {
                name = "超音波",
                text = {
                    "{C:attention}ブースターパック{}を選ぶと、中身が1枚見える",
                },
            },
            j_aij_undead_joker = {
                name = "アンデッドジョーカー",
                text = {
                    "",
                },
            },
            j_aij_unicursal_joker = {
                name = "一筆書きのジョーカー",
                text = {
                    "",
                },
            },
            j_aij_unobtanium = {
                name = "アンオブタニウム",
                text = {
                    "プレイしたハンドがファイブオブカインドの場合、すべての得点",
                    "カードを再発動する",
                },
            },
            j_aij_unpardonable_sin = {
                name = "許されない罪",
                text = {
                    "",
                },
            },
            j_aij_uranium = {
                name = "ウラン",
                text = {
                    "プレイしたハンドが{C:attention}ツーペア{}の場合、すべての得点カードを再発",
                    "動する",
                },
            },
            j_aij_urchin = {
                name = "ウニ",
                text = {
                    "このランをスキップしたブラインドごとに、ラウンド終了時に",
                    "{C:money}$#2#{}を獲得する",
                    "{C:inactive}（現在{C:money}$#1#{}）{}",
                },
            },
            j_aij_valentine = {
                name = "バレンタイン",
                text = {
                    "{X:mult,C:white}X#1#{}{C:attention}得点したハンド{}の一意のペアごとの倍率",
                },
            },
            j_aij_value_drift = {
                name = "値のドリフト",
                text = {
                    "",
                },
            },
            j_aij_vanha_erkki = {
                name = "ヴァンハ・エルキ",
                text = {
                    "{X:mult,C:white}X#1#{}倍率、得点計算中のランダムなポイントでトリガー",
                },
            },
            j_aij_vecchio_dolore = {
                name = "ヴェッキオ・ドロレ",
                text = {
                    {
                        "次回の{C:green}リロール{}時に、リロール前に{C:money}ショップ{}で提供されている",
                        "すべてのアイテムの{C:dark_edition}ネガティブ{}コピーを生成する",
                    },
                    {
                        "{C:green}リロール{}時の自己{C:red}デバフ{}",
                    },
                },
            },
            j_aij_veggie_joker = {
                name = "ベジジョーカー",
                text = {
                    "いずれかの番号のカードが{C:red}破壊{}されると、このジョーカーは",
                    "{C:chips}チップ{}としてのランクを 3 倍獲得する",
                    "{C:inactive}（現在{C:chips}+#1#{}チップ）{}",
                },
            },
            j_aij_vesti_la_guibba = {
                name = "ヴェスティ・ラ・ジュッバ",
                text = {
                    "プレイしたハンドに{C:attention}ストレート{}が含まれている場合、ランダムな",
                    "{C:common}コモン{}または{C:uncommon}アンコモン{}ジョーカーを生成する",
                    "{C:inactive}（空きスロットが必要）{}",
                },
            },
            j_aij_vexed = {
                name = "イライラする",
                text = {
                    "売却されたジョーカーは、一定の{C:attention}#1#%{}確率で{C:attention}すぐに{}再登場する",
                },
            },
            j_aij_vintage_joker = {
                name = "ヴィンテージジョーカー",
                text = {
                    "",
                },
            },
            j_aij_visage = {
                name = "顔立ち",
                text = {
                    "ハンドがプレイされるとき、最後に{C:red}破壊{}された{C:attention}フェイスカード{}の",
                    "一時的なコピーを得点したハンドに追加する",
                    "{C:inactive}（手のタイプは変わりません）{}",
                },
            },
            j_aij_vitellary_credits_joker = {
                name = "Vitellary",
                text = {
                    "「常にすべてを学ぶ」",
                },
            },
            j_aij_vitruvian_joker = {
                name = "ウィトルウィウスの道化師",
                text = {
                    "{X:mult,C:white}X#1#{}正確に{C:attention}5{}ジョーカーが所有されている場合の倍率",
                },
            },
            j_aij_void = {
                name = "空所",
                text = {
                    "{X:mult,C:white}X#1#{}この{C:attention}アンティ{}で{C:planet}惑星{}カードが使用されていない場合の倍率",
                    "{C:inactive}#2#",
                },
            },
            j_aij_volcano = {
                name = "火山",
                text = {
                    "",
                },
            },
            j_aij_volleyball = {
                name = "バレーボール",
                text = {
                    "",
                },
            },
            j_aij_voynich_joker = {
                name = "ヴォイニッチジョーカー",
                text = {
                    "",
                },
            },
            j_aij_wamba = {
                name = "ワンバ",
                text = {
                    {
                        "{C:money}ショップ{}に追加のスロットを追加する。そこには常に{C:attention}#1#{}",
                        "ジョーカーが含まれます",
                        "{C:inactive,s:0.8}（ジョーカーのレア度は無視される。{}{C:inactive,s:0.8}レジェンダリーを除く）{}",
                    },
                    {
                        "{B:1,C:white,s:0.8}アクティブ能力",
                        "どの{C:attention}タイプ{}のジョーカーが提供されるかを",
                        "サイクルする",
                    },
                },
            },
            j_aij_war_mask = {
                name = "ウォーマスク",
                text = {
                    "",
                },
            },
            j_aij_warhol = {
                name = "ウォーホル",
                text = {
                    "{C:attention}シール{}は{C:blue}青{}、{C:money}金{}、{C:purple}紫{}のシールの効果を{C:attention}同時に{}持つ",
                },
            },
            j_aij_warning_notice = {
                name = "警告通知",
                text = {
                    "",
                },
            },
            j_aij_wax_joker = {
                name = "ワックスジョーカー",
                text = {
                    "ハンドが{C:attention}得点{}された後、プレイしたハンドのすべての{C:attention}シール{}は",
                    "{C:jest_melted}溶けた{}{C:attention}シール{}になる",
                },
            },
            j_aij_weatherman = {
                name = "天気予報士",
                text = {},
            },
            j_aij_welded_joker = {
                name = "溶接ジョーカー",
                text = {
                    "",
                },
            },
            j_aij_whats_left = {
                name = "残っているもの",
                text = {
                    "直近に{C:money}売却{}した{C:attention}ジョーカー{}",
                    "{C:attention}#1#{}枚の能力をコピーする",
                    "{C:inactive}（このジョーカー自体を除く）",
                },
            },
            j_aij_whatsisname = {
                name = "ホワシスネーム",
                text = {
                    "{C:attention}ジョーカー当て{}パックの出現率が上がる",
                },
            },
            j_aij_whiskey_shot = {
                name = "ウィスキーショット",
                text = {
                    "",
                },
            },
            j_aij_whiteface_grotesque = {
                name = "白塗りの道化師",
                text = {
                    "ハンドをプレイするたび、{C:attention}手札{}の",
                    "{C:attention}フェイスカード{}1枚につき、このジョーカーのチップ{C:chips}+#1#{}",
                    "{C:inactive}（現在のチップ {C:chips}+#2#{C:inactive}）",
                },
            },
            j_aij_wild_man = {
                name = "ワイルドマン",
                text = {
                    "",
                },
            },
            j_aij_windswept_joker = {
                name = "吹きさらしのジョーカー",
                text = {
                    "プレイしたハンドに{C:attention}ストレートフラッシュ{}が含まれている場合、",
                    "{C:attention}ストレートフラッシュ{}を{C:attention}#1#{}レベルアップする",
                },
            },
            j_aij_wire_joker = {
                name = "ワイヤージョーカー",
                text = {
                    "{C:attention}クイーンズ{}は得点すると{X:mult,C:white}X#2#{}倍率と{C:money}$#1#{}を加える",
                },
            },
            j_aij_wireframe = {
                name = "ワイヤーフレーム",
                text = {
                    "各ラウンドで{C:attention}最初{}にプレイした{C:attention}ハンド{}が手札に戻ります",
                },
            },
            j_aij_witchfinder = {
                name = "魔女発見者",
                text = {
                    "{C:attention}#1#{}追加の{C:tarot}アルカナ{}{C:tarot}パック{}が{C:money}ショップ{}で入手可能",
                },
            },
            j_aij_wizard = {
                name = "ウィザード",
                text = {
                    "{C:green}#2#分の#1#{}各得点非強化カードが{C:attention}倍率カード{}{C:attention}ボーナスカード{}、",
                    "またはラッキー カードになるチャンス",
                },
            },
            j_aij_word_art = {
                name = "ワードアート",
                text = {
                    "プレイしたハンドの{C:attention}エース{}、キング、クイーン、または{C:attention}ジャック{}",
                    "ごとに{X:mult,C:white}X#1#{}の倍率を加える",
                },
            },
            j_aij_xinmo = {
                name = "新毛",
                text = {
                    "{C:dark_edition}+#1#{}ジョーカースロット、{C:red}-#2#{}ハンドサイズ",
                },
                unlock = {
                    "?????",
                },
            },
            j_aij_yakov = {
                name = "ヤコフ",
                text = {
                    "",
                },
                unlock = {
                    "?????",
                },
            },
            j_aij_yang = {
                name = "ヤン",
                text = {
                    "得点計算{C:hearts}ライトスーツ{}は、スコア付けされたハンドのユニークな",
                    "{C:hearts}ライトスーツ{}ごとに{C:mult}+#1#{}倍率を加える",
                },
            },
            j_aij_yin = {
                name = "陰",
                text = {
                    "{C:spades}ダークスーツ{}の得点計算は、スコアを獲得したハンドのユニーク",
                    "な{C:spades}ダークスーツ{}ごとに{C:mult}+#1#{}の倍率を加える",
                },
            },
            j_aij_you_are_a_joker = {
                name = "あなたはジョーカーです！",
                text = {
                    "",
                },
            },
            j_aij_you_are_susceptible = {
                name = "あなたは感受性が高いです",
                text = {
                    "",
                },
            },
            j_aij_you_broke_it = {
                name = "壊しちゃった！",
                text = {
                    "強化されていない{C:attention}#1#{}が得点すると{C:attention}#2#{}になる",
                    "{s:0.8}対象ランクと付く強化はラウンド終了時に変わる",
                },
            },
            j_aij_you_got_a = {
                name = "あなたはそれを持つ",
                text = {
                    "",
                },
            },
            j_aij_youve_got_mail = {
                name = "メールが届いています",
                text = {
                    {
                        "このジョーカーが{C:dark_edition}ネガティブ{}でない状態で",
                        "{C:attention}ブラインド{}を選ぶと、売却額{C:money}$0{}の",
                        "{C:dark_edition}ネガティブ{}{C:attention}コピー{}を生成する",
                    },
                    {
                        "{V:1}{B:3,V:2}#1##2#{}{V:1}#3#",
                    },
                },
            },
            j_aij_yu_sze = {
                name = "ユウ・ザン",
                text = {
                    "{C:dark_edition}エディション{}のないジョーカーは{X:mult,C:white}X#1#{}の倍率を獲得する",
                },
                unlock = {
                    "?????",
                },
            },
            j_aij_yule_log = {
                name = "ユールログ",
                text = {
                    "",
                },
            },
            j_aij_zalgo = {
                name = "ザルゴ",
                text = {
                    "",
                },
            },
            j_aij_zan = {
                name = "ザン",
                text = {
                    "",
                },
            },
            j_aij_zan_credits_joker = {
                name = "Zan",
                text = {
                    "「スキッビー・ディー」",
                },
            },
            j_aij_zanni = {
                name = "ザニ",
                text = {
                    "数字の付いたカードは{C:attention}得点{}されると{C:green}#2#分の#1#{}の確率で{C:tarot}タロット{}",
                    "カードを生成する",
                },
            },
            j_aij_zebra = {
                name = "ゼブラ",
                text = {
                    "",
                },
            },
            j_aij_zenzizenzizenzic = {
                name = "ゼンジゼンジゼンジック",
                text = {
                    {
                        "{C:chips}+#1#{}得点ハンドに正確に{C:attention}4{}のカードが含まれている場合はチップ",
                    },
                    {
                        "トリガーで{C:chips}+#2#{}チップを獲得し、{C:attention}+#3#{}だけ{C:attention}スケーリング{}を増える",
                    },
                },
            },
            j_aij_zerco = {
                name = "ゼルコ",
                text = {
                    "各{C:attention}ラウンド{}で{C:attention}最初{}に得点した{C:attention}カード{}にネガティブを適用する",
                    "{C:inactive}（既存のエディションがない場合）{}",
                },
                unlock = {
                    "?????",
                },
            },
        },
        Other = {
            aij_achievement_version = {
                text = {
                    "Jest {C:attention}#1#{}のバージョン中に獲得",
                },
            },
            aij_blank_playing_card = {
                text = {
                    "空白",
                },
            },
            aij_bomb = {
                name = "爆弾",
                text = {
                    "手札のプレイ後に自身と隣接するカードを{C:red}破壊する{}",
                },
            },
            aij_club = {
                name = "クラブ",
                text = {
                    "このラウンドで{C:clubs}クラブ{}がプレイされるとデバフされる",
                },
            },
            aij_demanding = {
                name = "要求の厳しい",
                text = {
                    "各ラウンドで{C:attention}#1#{}がプレイされるまでデバフされる",
                },
            },
            aij_demanding_alt = {
                name = "要求の厳しい",
                text = {
                    "各ラウンドで{C:attention}#1#{}を含むハンドがプレイされるまでデバフされる",
                },
            },
            aij_diamond = {
                name = "ダイヤモンド",
                text = {
                    "このラウンドで{C:diamonds}ダイヤ{}がプレイされるとデバフされる",
                },
            },
            aij_eye_seal = {
                name = "アイシール",
                text = {
                    "{C:attention}デッキ{}にある間も{C:attention}手札にあるとき{}の効果が発動する",
                },
            },
            aij_face = {
                name = "顔",
                text = {
                    "このラウンドで王室カードがプレイされるとデバフされる",
                },
            },
            aij_future_sight_tip = {
                name = "fs",
                text = {
                    "{C:inactive,s:0.8}（一番左がデッキの上です）{}",
                },
            },
            aij_heart = {
                name = "心臓",
                text = {
                    "このラウンドでハートがプレイされるとデバフされる",
                },
            },
            aij_indecisive = {
                name = "優柔不断",
                text = {
                    "{C:green}#2#分の#1#{}発動し{C:red}ない{}可能性",
                },
            },
            aij_introverted = {
                name = "内向的",
                text = {
                    "ジョーカースロットがフルの状態でブラインドを選択すると{C:red}自壊する{}",
                },
            },
            aij_jest_chaotic_card = {
                name = "混沌とした",
                text = {
                    "{X:mult,C:white}X#1#{}倍率{C:edition}強化{}はプレイ後にランダム化される",
                },
            },
            aij_jest_mark_of_the_spear = {
                name = "槍の刻印",
                text = {
                    "この{C:attention}カード{}はザ・スピアによって永続的に{C:red}デバフ{}されています",
                },
            },
            aij_marked = {
                name = "マークあり",
                text = {
                    "プレイしたり破棄したりすることはできません",
                },
            },
            aij_melted_seal = {
                name = "溶解シール",
                text = {
                    "{C:attention}手札{}にある間に最初に得点した",
                    "{V:1}溶解シール{}以外の{C:attention}シール{}に{C:attention}変わる{}",
                },
            },
            aij_mint_condition = {
                name = "新品同様",
                text = {
                    "追加料金{C:money}$#1#{}",
                },
            },
            aij_patches_suit = {
                name = "パッチ",
                text = {
                    "{V:1}#1#{}としてカウントされる",
                },
            },
            aij_pc_eternal = {
                name = "エターナル",
                text = {
                    "{C:red}破壊{}された場合、{C:attention}コピー{}をデッキに戻す",
                },
            },
            aij_pc_perishable = {
                name = "ペリシャブル",
                text = {
                    "{C:attention}#1#{}回得点した後にデバフされました",
                    "{C:inactive}（{C:attention}#2#{}残り）{}",
                },
            },
            aij_pc_pinned = {
                name = "固定",
                text = {
                    "この{C:attention}カード{}は{C:attention}一番左{}の位置に固定されています",
                },
            },
            aij_pc_rental = {
                name = "レンタル",
                text = {
                    "自分のデッキにある場合、ラウンド終了時に{C:money}$#1#{}を失う",
                },
            },
            aij_pc_rental_alt = {
                name = "レンタル",
                text = {
                    "デッキにある場合、ラウンド終了時に{C:green}#3#分の#2#{}負けない",
                    "チャンス{C:money}$#1#{}",
                },
            },
            aij_poly_points = {
                name = "ポイント",
                text = {
                    "#1#",
                },
            },
            aij_polychrome_sticker = {
                name = "ポリクロームステッカー",
                text = {
                    "このジョーカーを使い、{C:attention}ポリクロームステーク{}を",
                    "{C:attention}#1#{}ポイントでクリアした",
                },
            },
            aij_recherche_doubled = {
                name = "倍増",
                text = {
                    "{C:attention}X2{}効果",
                    "{C:inactive,s:0.8}（Rechercheタグにより付与）{}",
                },
            },
            aij_smiley_seal = {
                name = "スマイリーシール",
                text = {
                    "このカードが{C:red}破壊{}されると、ランダムに選んだ",
                    "{C:attention}ジョーカー{}{C:attention}#1#{}枚にエディションを付ける",
                },
            },
            aij_spade = {
                name = "スペード",
                text = {
                    "このラウンドで{C:spades}スペード{}がプレイされるとデバフされる",
                },
            },
            aij_suit_only_playing_card = {
                text = {
                    " {V:1}#1# ",
                },
            },
            aij_unusual_doubled = {
                name = "倍増",
                text = {
                    "{C:attention}X2{}効果",
                    "{C:inactive,s:0.8}（珍しいタグにより付与）{}",
                },
            },
            astral_grade_aij_omnigrade = {
                name = "全方向性",
                text = {
                    "空のアストラルスロットを持つ{C:legendary,E:1}毎{}ポーカーハンドに揃えます",
                },
            },
            astral_grade_aij_passigrade = {
                name = "パッシグラード",
                text = {
                    "{C:attention}ランダム{}なポーカーハンドに合わせます",
                },
            },
            astral_grade_aij_prograde = {
                name = "順行",
                text = {
                    "最もプレイされていないポーカーハンドの 1 つに一致する",
                },
            },
            astral_grade_aij_retrograde = {
                name = "逆行性",
                text = {
                    "最もプレイされたポーカーハンドに合わせて調整する",
                },
            },
            c_aij_astral_alignment = {
                text = {
                    "{C:attention}#1#{}を{C:attention}#2#{}に揃えます",
                },
            },
            card_extra_retriggers = {
                text = {
                    "このカード{C:attention}#1#{}を追加で再発動する",
                },
            },
            cebee_credits_info = {
                name = "Cebee",
                text = {
                    "「スキッビー・ディー」",
                },
            },
            conboi_credits_info = {
                name = "Conboi",
                text = {
                    "「スキッビー・ディー」",
                },
            },
            default_credits_info = {
                name = "Default",
                text = {
                    "「スキッビー・ディー」",
                },
            },
            gfsgfsgdsgf_credits_info = {
                name = "gfsgfsgdsgf",
                text = {
                    "「スキッビー・ディー」",
                },
            },
            guess_the_jest_hidden = {
                name = "???",
                text = {
                    "{C:inactive,E:1,s:1.5}???{}",
                },
            },
            heavenbrand_credits_info = {
                name = "情報",
                text = {
                    "{s:0.8}-All in Jest トレーラーとそのサウンドトラックを作",
                    "{s:0.8}成しました{}{s:0.8}-Silver と Aureate のサウンドを作成しま",
                    "{s:0.8}した{}{s:0.8}-たくさんの役立つプレイテストとフィードバック{}{s:0.8}",
                    "{s:0.8}-2 月に All in Jest の制作を開始しました2026{}",
                },
            },
            heisenburger_credits_info = {
                name = "Heisenburger",
                text = {
                    "「スキッビー・ディー」",
                },
            },
            j_aij_9ts_credits_info = {
                name = "9TS",
                text = {
                    "「スキッビー・ディー」",
                },
            },
            j_aij_aphi_credits_info = {
                name = "Aphi",
                text = {
                    "「スキッビー・ディー」",
                },
            },
            j_aij_bygone_credits_info = {
                name = "Bygone",
                text = {
                    "「スキッビー・ディー」",
                },
            },
            j_aij_cheddar_credits_info = {
                name = "Cheddar",
                text = {
                    "「スキッビー・ディー」",
                },
            },
            j_aij_clay_credits_info = {
                name = "Clay",
                text = {
                    "「スキッビー・ディー」",
                },
            },
            j_aij_generic_credits_info = {
                name = "Gen-Eric",
                text = {
                    "「スキッビー・ディー」",
                },
            },
            j_aij_ghoti_credits_info = {
                name = "Ghoti",
                text = {
                    "「スキッビー・ディー」",
                },
            },
            j_aij_grass_credits_info = {
                name = "Grass",
                text = {
                    "「スキッビー・ディー」",
                },
            },
            j_aij_metrollen_credits_info = {
                name = "Metrollen",
                text = {
                    "「スキッビー・ディー」",
                },
            },
            j_aij_minibit_credits_info = {
                name = "Mini Bit",
                text = {
                    "「スキッビー・ディー」",
                },
            },
            j_aij_mythie_credits_info = {
                name = "Mythie",
                text = {
                    "「スキッビー・ディー」",
                },
            },
            j_aij_skilotar_credits_info = {
                name = "Skilotar",
                text = {
                    "「スキッビー・ディー」",
                },
            },
            j_aij_sophe_credits_info = {
                name = "Sophe",
                text = {
                    "「スキッビー・ディー」",
                },
            },
            j_aij_spoofy_credits_info = {
                name = "Spoofy",
                text = {
                    "「スキッビー・ディー」",
                },
            },
            j_aij_toyrapple_credits_info = {
                name = "Toyrapple",
                text = {
                    "「スキッビー・ディー」",
                },
            },
            j_aij_zan_credits_info = {
                name = "Zan",
                text = {
                    "「スキッビー・ディー」",
                },
            },
            jamie_credits_info = {
                name = "Jamie!",
                text = {
                    "{s:0.8}-数人のジョーカーのアートを作成しました（そのほと",
                    "{s:0.8}んどは実装されていません）{}",
                    "{s:0.8}-Nevernamed の親友{}{s:0.8}-チーム Lil Guy{}{s:0.8}-6 月に正式にチ",
                    "{s:0.8}ームに追加2026{}",
                },
            },
            joker_locked_legendary = {
                name = "ロック中",
                text = {
                    "ラン中にこのジョーカーを見つける",
                },
            },
            jumbocarrot_credits_info = {
                name = "情報",
                text = {
                    "{s:0.8}-バグ修正と磨きを大量に手伝ってくれます{}{s:0.8}-本当にた",
                    "{s:0.8}くさんのバグ修正{}{s:0.8}-9 月にチームに加わりました2025{}",
                },
            },
            m_aij_dyscalcular_numbered_rank = {
                name = "番号付きランク",
                text = {
                    "{C:attention}2{}、{C:attention}3{}、{C:attention}4{}、{C:attention}5{}、{C:attention}6{}、{C:attention}7{}、{C:attention}8{}、{C:attention}9{}、{C:attention}10{}",
                },
            },
            marcy_credits_info = {
                name = "情報",
                text = {
                    "{s:0.8}-スキッビー・ディー{}",
                },
            },
            misprinted_credits_info = {
                name = "クレジット",
                text = {
                    "{s:0.8}効果音：Aphi S. Soos{}",
                },
            },
            nevernamed_credits_info = {
                name = "情報",
                text = {
                    "{s:0.8}-すべてのアートを作成{}{s:0.8}-エフェクトの半分程度を構想{}{s:0.8}",
                    "{s:0.8}-12月にバラトロアートを開始2024{}",
                },
            },
            notsoai_credits_info = {
                name = "NotSoAI",
                text = {
                    "「スキッビー・ディー」",
                },
            },
            office_assistant_perishable = {
                name = "ペリシャブル",
                text = {
                    "{C:money}$3{}のペリシャブル ジョーカーのカウンターを{C:attention}リセット{}する",
                },
            },
            office_assistant_rental = {
                name = "レンタル",
                text = {
                    "ジョーカーの{C:money}基本価格{}の{C:attention}レンタル{}{C:attention}ステッカー{}を削除する",
                },
            },
            overdesigned_club = {
                name = "クラブ",
                text = {
                    "得点した{C:clubs}クラブ{}は{C:mult}+#1#{}倍率を加える",
                },
            },
            overdesigned_diamond = {
                name = "ダイヤモンド",
                text = {
                    "スコア{C:diamonds}ダイヤ{}モンドを獲得{C:money}$#1#{}",
                },
            },
            overdesigned_heart = {
                name = "ハート",
                text = {
                    "得点した{C:hearts}ハート{}は{X:mult,C:white}X#1#{}の倍率を加える",
                },
            },
            overdesigned_spade = {
                name = "スペード",
                text = {
                    "得点した{C:spades}スペード{}は{C:chips}+#1#{}チップを加える",
                },
            },
            p_aij_common_jumbo_1 = {
                name = "ジャンボコモンパック",
                text = {
                    "最大{C:attention}#2#{}枚の{C:common}コモン{}ジョーカーから",
                    "{C:attention}#1#{}枚を選ぶ",
                },
            },
            p_aij_common_jumbo_2 = {
                name = "ジャンボコモンパック",
                text = {
                    "最大{C:attention}#2#{}枚の{C:common}コモン{}ジョーカーから",
                    "{C:attention}#1#{}枚を選ぶ",
                },
            },
            p_aij_common_mega_1 = {
                name = "メガコモンパック",
                text = {
                    "最大{C:attention}#2#{}枚の{C:common}コモン{}ジョーカーから",
                    "{C:attention}#1#{}枚を選ぶ",
                },
            },
            p_aij_common_normal_1 = {
                name = "コモンパック",
                text = {
                    "最大{C:attention}#2#{}枚の{C:common}コモン{}ジョーカーから",
                    "{C:attention}#1#{}枚を選ぶ",
                },
            },
            p_aij_common_normal_2 = {
                name = "コモンパック",
                text = {
                    "最大{C:attention}#2#{}枚の{C:common}コモン{}ジョーカーから",
                    "{C:attention}#1#{}枚を選ぶ",
                },
            },
            p_aij_common_normal_3 = {
                name = "コモンパック",
                text = {
                    "最大{C:attention}#2#{}枚の{C:common}コモン{}ジョーカーから",
                    "{C:attention}#1#{}枚を選ぶ",
                },
            },
            p_aij_guess_the_jest = {
                name = "ジョーカー当てパック",
                text = {
                    "正体の隠された{C:legendary,E:2}レジェンダリー{}ジョーカー",
                    "{C:attention}#2#{}枚の中から{C:attention}#1#{}枚を選ぶ",
                },
            },
            p_aij_rare_jumbo_1 = {
                name = "ジャンボレアパック",
                text = {
                    "最大{C:attention}#2#{}枚の{C:rare}レア{}ジョーカーから",
                    "{C:attention}#1#{}枚を選ぶ",
                },
            },
            p_aij_rare_jumbo_2 = {
                name = "ジャンボレアパック",
                text = {
                    "最大{C:attention}#2#{}枚の{C:rare}レア{}ジョーカーから",
                    "{C:attention}#1#{}枚を選ぶ",
                },
            },
            p_aij_rare_mega_1 = {
                name = "メガレアパック",
                text = {
                    "最大{C:attention}#2#{}枚の{C:rare}レア{}ジョーカーから",
                    "{C:attention}#1#{}枚を選ぶ",
                },
            },
            p_aij_rare_normal_1 = {
                name = "レアパック",
                text = {
                    "最大{C:attention}#2#{}枚の{C:rare}レア{}ジョーカーから",
                    "{C:attention}#1#{}枚を選ぶ",
                },
            },
            p_aij_rare_normal_2 = {
                name = "レアパック",
                text = {
                    "最大{C:attention}#2#{}枚の{C:rare}レア{}ジョーカーから",
                    "{C:attention}#1#{}枚を選ぶ",
                },
            },
            p_aij_rare_normal_3 = {
                name = "レアパック",
                text = {
                    "最大{C:attention}#2#{}枚の{C:rare}レア{}ジョーカーから",
                    "{C:attention}#1#{}枚を選ぶ",
                },
            },
            p_aij_sidereal = {
                name = "恒星パック",
                text = {
                    "最大{C:attention}#2#{}枚の{C:aij_astral}アストラル{}カードから",
                    "{C:attention}#1#{}枚を選んで即座に使う",
                },
            },
            p_aij_uncommon_jumbo_1 = {
                name = "ジャンボアンコモンパック",
                text = {
                    "最大{C:attention}#2#{}枚の{C:uncommon}アンコモン{}ジョーカーから",
                    "{C:attention}#1#{}枚を選ぶ",
                },
            },
            p_aij_uncommon_jumbo_2 = {
                name = "ジャンボアンコモンパック",
                text = {
                    "最大{C:attention}#2#{}枚の{C:uncommon}アンコモン{}ジョーカーから",
                    "{C:attention}#1#{}枚を選ぶ",
                },
            },
            p_aij_uncommon_mega_1 = {
                name = "メガアンコモンパック",
                text = {
                    "最大{C:attention}#2#{}枚の{C:uncommon}アンコモン{}ジョーカーから",
                    "{C:attention}#1#{}枚を選ぶ",
                },
            },
            p_aij_uncommon_normal_1 = {
                name = "アンコモンパック",
                text = {
                    "最大{C:attention}#2#{}枚の{C:uncommon}アンコモン{}ジョーカーから",
                    "{C:attention}#1#{}枚を選ぶ",
                },
            },
            p_aij_uncommon_normal_2 = {
                name = "アンコモンパック",
                text = {
                    "最大{C:attention}#2#{}枚の{C:uncommon}アンコモン{}ジョーカーから",
                    "{C:attention}#1#{}枚を選ぶ",
                },
            },
            p_aij_uncommon_normal_3 = {
                name = "アンコモンパック",
                text = {
                    "最大{C:attention}#2#{}枚の{C:uncommon}アンコモン{}ジョーカーから",
                    "{C:attention}#1#{}枚を選ぶ",
                },
            },
            palindrome = {
                name = "回文",
                text = {
                    "逆にしても{C:attention}変わらない{}複数桁の数字",
                    "元。 {C:inactive}33{}、{C:inactive}151{}、{C:inactive}3003{}",
                },
            },
            papermoon_credits_info = {
                name = "Papermoon",
                text = {
                    "「スキッビー・ディー」",
                },
            },
            pinned = {
                name = "固定",
                text = {
                    "この{C:attention}ジョーカー{}は{C:attention}一番左{}の位置に固定されています",
                },
            },
            prototype_credits_info = {
                name = "Prototype",
                text = {
                    "「スキッビー・ディー」",
                },
            },
            rattling_snow_credits_info = {
                name = "情報",
                text = {
                    "{s:0.8}-高度なもののほとんどをコーディング{}{s:0.8}-ほぼすべての",
                    "{s:0.8}UI をコーディング{}{s:0.8}-すべてのシェーダーをコーディン",
                    "{s:0.8}グ{}{s:0.8}-4 月下旬にチームに参加2025{}",
                },
            },
            reroll_joker = {
                name = "リセマラ",
                text = {
                    "ジョーカーを同じレア度のランダムなジョーカーに置き換え",
                    "ます",
                },
            },
            showdown_blind = {
                name = "ショーダウンブラインド",
                text = {
                    "{C:attention}#1#{}アンティごとに出現する{C:attention}ボスブラインド{}",
                },
            },
            survivalaren_credits_info = {
                name = "情報",
                text = {
                    "{s:0.8}-コンテンツの約半分をコード化{}{s:0.8}-エフェクトの約半分を",
                    "{s:0.8}構想{}{s:0.8}-そもそもMODを開始{}{s:0.8}-プレイテストの重要な部分{}{s:0.8}-",
                    "{s:0.8}作成4 月初旬の MOD 2025{}",
                },
            },
            taylor_credits_info = {
                name = "Taylor",
                text = {
                    "「スキッビー・ディー」",
                },
            },
            undiscovered_aij_astral = {
                name = "未知のアストラルカード",
                text = {
                    "シードされていないランでこのカードを見つけて、そのカードが",
                    "何をするかを確認してください",
                },
            },
            vitellary_credits_info = {
                name = "情報",
                text = {
                    "{s:0.8}-ポリクロームステークのほぼすべてをコーディング{}{s:0.8}-",
                    "{s:0.8}バグ修正と磨きに役立ちます{}{s:0.8}-バランスのフィードバッ",
                    "{s:0.8}クに大いに役立ちます{}{s:0.8}-ゴールドステークプレイヤー{}{s:0.8}-に",
                    "{s:0.8}追加8月のチーム2026{}",
                },
            },
        },
        Partner = {
            pnr_aij_banger = {
                name = "バンガー",
                text = {
                    "{C:green}リロール{}の費用が{C:money}$#1#{}下がる",
                    "{C:inactive}（最低 {C:money}$0{C:inactive}）",
                },
                unlock = {
                    "「{C:attention}愚かなソーセージ{}」を使って",
                    "{C:attention}ゴールドステーク{}のランをクリアする",
                },
            },
            pnr_aij_flub = {
                name = "フラブ",
                text = {
                    "{C:attention}エターナル{}のジョーカーが{C:money}#1#{}になる",
                },
                unlock = {
                    "「{C:attention}間違い{}」を使って",
                    "{C:attention}ゴールドステーク{}のランをクリアする",
                },
            },
            pnr_aij_fourwarning = {
                name = "フォーウォーニング",
                text = {
                    "ディスカードに{C:attention}4{}が含まれていればチップ{C:chips}+#1#{}",
                    "{C:inactive}（現在のチップ {C:chips}+#2#{C:inactive}）",
                },
                unlock = {
                    "「{C:attention}四面恐怖症{}」を使って",
                    "{C:attention}ゴールドステーク{}のランをクリアする",
                },
            },
            pnr_aij_nellie = {
                name = "ネリー",
                text = {
                    "{C:dark_edition}ネガティブ{}のジョーカーの出現率が{C:attention}#1#倍{}になる",
                },
                unlock = {
                    "「{C:attention}ネガティブなナンシー{}」を使って",
                    "{C:attention}ゴールドステーク{}のランをクリアする",
                },
            },
            pnr_aij_scratch = {
                name = "スクラッチ",
                text = {
                    "{C:blue}奇数{}ラウンドに、両端のジョーカーを再発動する",
                    "{C:inactive}（対象の組み合わせ {C:attention}#1#{C:inactive}）",
                },
                unlock = {
                    "「{C:attention}いたずら書き{}」を使って",
                    "{C:attention}ゴールドステーク{}のランをクリアする",
                },
            },
            pnr_aij_simply = {
                name = "シンプリー",
                text = {
                    "ラウンド終了時に倍率{C:mult}+#1#{}",
                    "{C:inactive}（現在の倍率 {C:mult}+#2#{C:inactive}）",
                },
                unlock = {
                    "「{C:attention}シンプル・サイモン{}」を使って",
                    "{C:attention}ゴールドステーク{}のランをクリアする",
                },
            },
        },
        Planet = {
            c_aij_2000_eu16 = {
                name = "2000 EU16",
                text = {
                    "{C:attention}#2#{}のレベルを上げる",
                    "{S:0.8}（現在のレベル {S:0.8,V:1}#1#{S:0.8}）{}",
                    "チップ{C:chips}+#3#{}",
                },
            },
            c_aij_2013_nd15 = {
                name = "2013 ND15",
                text = {
                    "{C:attention}#2#{}のレベルを上げる",
                    "{S:0.8}（現在のレベル {S:0.8,V:1}#1#{S:0.8}）{}",
                    "チップ{C:chips}+#3#{}",
                },
            },
            c_aij_callisto = {
                name = "カリスト",
                text = {
                    "{C:attention}#2#{}のレベルを上げる",
                    "{S:0.8}（現在のレベル {S:0.8,V:1}#1#{S:0.8}）{}",
                    "チップ{C:chips}+#3#{}",
                },
            },
            c_aij_charon = {
                name = "カロン",
                text = {
                    "{C:attention}#2#{}のレベルを上げる",
                    "{S:0.8}（現在のレベル {S:0.8,V:1}#1#{S:0.8}）{}",
                    "チップ{C:chips}+#3#{}",
                },
            },
            c_aij_dark_star = {
                name = "ダークスター",
                text = {
                    "まだプレイしていない{C:attention}すべてのポーカーハンド{}のレベルを上げる",
                },
            },
            c_aij_deimos = {
                name = "ダイモス",
                text = {
                    "{C:attention}#2#{}のレベルを上げる",
                    "{S:0.8}（現在のレベル {S:0.8,V:1}#1#{S:0.8}）{}",
                    "チップ{C:chips}+#3#{}",
                },
            },
            c_aij_dysnomia = {
                name = "ディスノミア",
                text = {
                    "{C:attention}#2#{}のレベルを上げる",
                    "{S:0.8}（現在のレベル {S:0.8,V:1}#1#{S:0.8}）{}",
                    "倍率{C:mult}+#3#{}",
                },
            },
            c_aij_europa = {
                name = "エウロパ",
                text = {
                    "{C:attention}#2#{}のレベルを上げる",
                    "{S:0.8}（現在のレベル {S:0.8,V:1}#1#{S:0.8}）{}",
                    "倍率{C:mult}+#3#{}",
                },
            },
            c_aij_ghost_moon = {
                name = "ゴーストムーン",
                text = {
                    "所持している{C:attention}消耗カード{}の説明にある",
                    "{C:attention}すべてのポーカーハンド{}を{C:attention}2{}レベル上げる",
                },
            },
            c_aij_iapetus = {
                name = "イアペトゥス",
                text = {
                    "{C:attention}#2#{}のレベルを上げる",
                    "{S:0.8}（現在のレベル {S:0.8,V:1}#1#{S:0.8}）{}",
                    "チップ{C:chips}+#3#{}",
                },
            },
            c_aij_kamooalewa = {
                name = "カモオアレワ",
                text = {
                    "{C:attention}#2#{}のレベルを上げる",
                    "{S:0.8}（現在のレベル {S:0.8,V:1}#1#{S:0.8}）{}",
                    "チップ{C:chips}+#3#{}",
                },
            },
            c_aij_kuiper = {
                name = "カイパー",
                text = {
                    "{C:attention}#2#{}のレベルを上げる",
                    "{S:0.8}（現在のレベル {S:0.8,V:1}#1#{S:0.8}）{}",
                    "チップ{C:chips}+#3#{}",
                },
            },
            c_aij_luna = {
                name = "ルナ",
                text = {
                    "{C:attention}#2#{}のレベルを上げる",
                    "{S:0.8}（現在のレベル {S:0.8,V:1}#1#{S:0.8}）{}",
                    "倍率{C:mult}+#3#{}",
                },
            },
            c_aij_nibiru = {
                name = "ニビル",
                text = {
                    "{C:attention}#2#{}のレベルを上げる",
                    "{S:0.8}（現在のレベル {S:0.8,V:1}#1#{S:0.8}）{}",
                    "チップ{C:chips}+#3#{}",
                },
            },
            c_aij_nix = {
                name = "ニクス",
                text = {
                    "{C:attention}#2#{}のレベルを上げる",
                    "{S:0.8}（現在のレベル {S:0.8,V:1}#1#{S:0.8}）{}",
                    "倍率{C:mult}+#3#{}",
                },
            },
            c_aij_oberon = {
                name = "オベロン",
                text = {
                    "{C:attention}#2#{}のレベルを上げる",
                    "{S:0.8}（現在のレベル {S:0.8,V:1}#1#{S:0.8}）{}",
                    "チップ{C:chips}+#3#{}",
                },
            },
            c_aij_pallas = {
                name = "パラス",
                text = {
                    "{C:attention}#2#{}のレベルを上げる",
                    "{S:0.8}（現在のレベル {S:0.8,V:1}#1#{S:0.8}）{}",
                    "倍率{C:mult}+#3#{}",
                },
            },
            c_aij_paper_hiiaka = {
                name = "ヒイアカ",
                text = {
                    "{C:attention}#2#{}のレベルを上げる",
                    "{S:0.8}（現在のレベル {S:0.8,V:1}#1#{S:0.8}）{}",
                    "チップ{C:chips}+#3#{}",
                },
            },
            c_aij_paper_ilmare = {
                name = "イルマレ",
                text = {
                    "{C:attention}#2#{}のレベルを上げる",
                    "{S:0.8}（現在のレベル {S:0.8,V:1}#1#{S:0.8}）{}",
                    "倍率{C:mult}+#3#{}",
                },
            },
            c_aij_paper_ixion = {
                name = "イクシオン",
                text = {
                    "{C:attention}#2#{}のレベルを上げる",
                    "{S:0.8}（現在のレベル {S:0.8,V:1}#1#{S:0.8}）{}",
                    "チップ{C:chips}+#3#{}",
                },
            },
            c_aij_paper_mk2 = {
                name = "Mk2",
                text = {
                    "{C:attention}#2#{}のレベルを上げる",
                    "{S:0.8}（現在のレベル {S:0.8,V:1}#1#{S:0.8}）{}",
                    "チップ{C:chips}+#3#{}",
                },
            },
            c_aij_paper_namaka = {
                name = "ナマカ",
                text = {
                    "{C:attention}#2#{}のレベルを上げる",
                    "{S:0.8}（現在のレベル {S:0.8,V:1}#1#{S:0.8}）{}",
                    "倍率{C:mult}+#3#{}",
                },
            },
            c_aij_paper_salacia = {
                name = "サラキア",
                text = {
                    "{C:attention}#2#{}のレベルを上げる",
                    "{S:0.8}（現在のレベル {S:0.8,V:1}#1#{S:0.8}）{}",
                    "倍率{C:mult}+#3#{}",
                },
            },
            c_aij_paper_varda = {
                name = "ヴァルダ",
                text = {
                    "{C:attention}#2#{}のレベルを上げる",
                    "{S:0.8}（現在のレベル {S:0.8,V:1}#1#{S:0.8}）{}",
                    "チップ{C:chips}+#3#{}",
                },
            },
            c_aij_paper_weywot = {
                name = "ウェイウォット",
                text = {
                    "{C:attention}#2#{}のレベルを上げる",
                    "{S:0.8}（現在のレベル {S:0.8,V:1}#1#{S:0.8}）{}",
                    "倍率{C:mult}+#3#{}",
                },
            },
            c_aij_phaethon = {
                name = "ファエトン",
                text = {
                    "{C:attention}#2#{}のレベルを上げる",
                    "{S:0.8}（現在のレベル {S:0.8,V:1}#1#{S:0.8}）{}",
                    "チップ{C:chips}+#3#{}",
                },
            },
            c_aij_phobos = {
                name = "フォボス",
                text = {
                    "{C:attention}#2#{}のレベルを上げる",
                    "{S:0.8}（現在のレベル {S:0.8,V:1}#1#{S:0.8}）{}",
                    "倍率{C:mult}+#3#{}",
                },
            },
            c_aij_planet_nine = {
                name = "第9惑星",
                text = {
                    "{C:attention}#2#{}のレベルを上げる",
                    "{S:0.8}（現在のレベル {S:0.8,V:1}#1#{S:0.8}）{}",
                    "倍率{C:mult}+#3#{}",
                },
            },
            c_aij_proteus = {
                name = "プロテウス",
                text = {
                    "{C:attention}#2#{}のレベルを上げる",
                    "{S:0.8}（現在のレベル {S:0.8,V:1}#1#{S:0.8}）{}",
                    "チップ{C:chips}+#3#{}",
                },
            },
            c_aij_rogue = {
                name = "自由浮遊惑星",
                text = {
                    "所持している{C:attention}ジョーカー{}の説明にある",
                    "{C:attention}すべてのポーカーハンド{}のレベルを上げる",
                },
            },
            c_aij_sol = {
                name = "太陽",
                text = {
                    "{C:attention}#2#{}のレベルを上げる",
                    "{S:0.8}（現在のレベル {S:0.8,V:1}#1#{S:0.8}）{}",
                    "チップ{C:chips}+#3#{}、倍率{C:mult}+#4#{}",
                },
            },
            c_aij_titan = {
                name = "タイタン",
                text = {
                    "{C:attention}#2#{}のレベルを上げる",
                    "{S:0.8}（現在のレベル {S:0.8,V:1}#1#{S:0.8}）{}",
                    "倍率{C:mult}+#3#{}",
                },
            },
            c_aij_triton = {
                name = "トリトン",
                text = {
                    "{C:attention}#2#{}のレベルを上げる",
                    "{S:0.8}（現在のレベル {S:0.8,V:1}#1#{S:0.8}）{}",
                    "倍率{C:mult}+#3#{}",
                },
            },
            c_aij_umbriel = {
                name = "ウンブリエル",
                text = {
                    "{C:attention}#2#{}のレベルを上げる",
                    "{S:0.8}（現在のレベル {S:0.8,V:1}#1#{S:0.8}）{}",
                    "倍率{C:mult}+#3#{}",
                },
            },
            c_aij_vulcanoid = {
                name = "バルカノイド",
                text = {
                    "{C:attention}#2#{}のレベルを上げる",
                    "{S:0.8}（現在のレベル {S:0.8,V:1}#1#{S:0.8}）{}",
                    "倍率{C:mult}+#3#{}",
                },
            },
            c_aij_zoozve = {
                name = "ズーズヴェ",
                text = {
                    "{C:attention}#2#{}のレベルを上げる",
                    "{S:0.8}（現在のレベル {S:0.8,V:1}#1#{S:0.8}）{}",
                    "倍率{C:mult}+#3#{}",
                },
            },
        },
        PolyStakeChips = {
            aij_blindness = {
                name = "目隠し",
                text = {
                    "{C:attention}ボスブラインド{}の正体と効果は選ぶまで見えない",
                },
            },
            aij_broken_foot = {
                name = "足の骨折",
                text = {
                    "各ラウンドのディスカード{C:red}-1{}",
                },
            },
            aij_broken_hand = {
                name = "手の骨折",
                text = {
                    "各ラウンドのハンド{C:red}-1{}",
                },
            },
            aij_chump_change = {
                name = "はした金",
                text = {
                    "{C:attention}ハイカード{}と{C:attention}ペア{}のレベルアップ時に",
                    "増える{C:chips}チップ{}が{C:attention}5{}少なくなる",
                },
            },
            aij_deadwood = {
                name = "枯れ木",
                text = {
                    "デッキに{C:attention}ブランクカード{}を{C:attention}6{}枚追加して開始",
                },
            },
            aij_double_threat = {
                name = "二重の脅威",
                text = {
                    "{C:attention}ビッグブラインド{}が{C:attention}ボスブラインド{}に置き換わる",
                },
            },
            aij_envy = {
                name = "嫉妬",
                text = {
                    "ショップやブースターパックのジョーカーに",
                    "{C:attention}30%{}の確率で{C:attention}内気{}が付く",
                    "{C:inactive,s:0.8}（ジョーカースロットが満杯の状態で",
                    "{C:inactive,s:0.8}ブラインドを選ぶと自壊する）",
                },
            },
            aij_gladiator = {
                name = "剣闘士",
                text = {
                    "{C:attention}ボスブラインド{}の効果が強化される",
                },
            },
            aij_gluttony = {
                name = "暴食",
                text = {
                    "ショップやブースターパックのジョーカーに",
                    "{C:attention}30%{}の確率で{C:attention}ペリシャブル{}が付く",
                    "{C:inactive,s:0.8}（5ラウンド後にデバフを受ける）",
                },
            },
            aij_greed = {
                name = "強欲",
                text = {
                    "ショップやブースターパックのジョーカーに",
                    "{C:attention}30%{}の確率で{C:attention}レンタル{}が付く",
                    "{C:inactive,s:0.8}（ラウンドごとに{C:money,s:0.8}$3{C:inactive,s:0.8}かかる）",
                },
            },
            aij_in_the_dark = {
                name = "暗闇の中",
                text = {
                    "各ラウンドの{C:attention}最初の手札{}のうち",
                    "ランダムな{C:attention}1{}枚を{C:attention}裏向き{}で引く",
                },
            },
            aij_journey = {
                name = "長旅",
                text = {
                    "勝利に必要なアンティ{C:attention}+1{}",
                },
            },
            aij_lust = {
                name = "色欲",
                text = {
                    "ショップやブースターパックのジョーカーに",
                    "{C:attention}30%{}の確率で{C:attention}注文付き{}が付く",
                    "{C:inactive,s:0.8}（各ラウンドで指定された役を",
                    "{C:inactive,s:0.8}プレイするまでデバフを受ける）",
                },
            },
            aij_pricey_packs = {
                name = "高価なパック",
                text = {
                    "{C:attention}アンティ{}ごとにブースターパックの価格が{C:money}$1{}上がる",
                },
            },
            aij_pride = {
                name = "傲慢",
                text = {
                    "{C:attention}ショップ{}のジョーカーに",
                    "{C:attention}10%{}の確率で{C:attention}新品同様{}が付く",
                    "{C:inactive,s:0.8}（価格が{C:money,s:0.8}$10{C:inactive,s:0.8}高くなる）",
                },
            },
            aij_red_challenge = {
                name = "赤の試練",
                text = {
                    "{C:attention}スモールブラインド{}から報酬を得られない",
                },
            },
            aij_sloth = {
                name = "怠惰",
                text = {
                    "ショップやブースターパックのジョーカーに",
                    "{C:attention}30%{}の確率で{C:attention}エターナル{}が付く",
                    "{C:inactive,s:0.8}（売却・破壊できない）",
                },
            },
            aij_the_pit = {
                name = "闘技場",
                text = {
                    "アンティ{C:attention}4{}または{C:attention}5{}の{C:attention}ボスブラインド{}が",
                    "特殊な{C:attention}ピットブラインド{}に置き換わる",
                },
            },
            aij_up_the_ante = {
                name = "高まる賭け金",
                text = {
                    "{C:attention}アンティ{}ごとの必要スコアの上昇幅が大きくなる",
                },
            },
            aij_vainglory = {
                name = "虚栄",
                text = {
                    "ショップやブースターパックのジョーカーに",
                    "{C:attention}30%{}の確率で{C:attention}スート{}か{C:attention}フェイス{}が付く",
                    "{C:inactive,s:0.8}（対応するスートやフェイスカードを",
                    "{C:inactive,s:0.8}そのラウンドにプレイするとデバフを受ける）",
                },
            },
            aij_wrath = {
                name = "憤怒",
                text = {
                    "ショップやブースターパックの{C:attention}得点に関わる{}ジョーカーに",
                    "{C:attention}30%{}の確率で{C:attention}気まぐれ{}が付く",
                    "{C:inactive,s:0.8}（{C:green,s:0.8}4分の1{C:inactive,s:0.8}の確率で得点に加わらない）",
                },
            },
            locked = {
                name = "ロック中",
                text = {
                    "{C:attention}#1#{}ポイント以上でランに勝利するとアンロック",
                },
            },
        },
        Sleeve = {
            sleeve_aij_branching = {
                name = "分岐のスリーブ",
                text = {
                    "ブラインドをスキップするとき、{C:attention}3{}つのタグから選べる",
                },
            },
            sleeve_aij_branching_alt = {
                name = "分岐のスリーブ",
                text = {
                    "スキップ時に選べるタグの候補が{C:attention}2{}つ増える",
                },
            },
            sleeve_aij_fabled = {
                name = "伝説のスリーブ",
                text = {
                    "{C:legendary,E:1}レジェンダリー{}ジョーカーが{C:attention}ショップ{}に出現することがある",
                    "ジョーカースロット{C:attention}-1{}",
                },
            },
            sleeve_aij_fabled_alt = {
                name = "伝説のスリーブ",
                text = {
                    "{C:legendary,E:1}レジェンダリー{}ジョーカーがより出現しやすくなる",
                },
            },
            sleeve_aij_melded = {
                name = "融合スリーブ",
                text = {
                    "各プレイングカードに{C:attention}2{}種類の強化を付けられる",
                },
            },
            sleeve_aij_melded_alt = {
                name = "融合スリーブ",
                text = {
                    "{C:spectral,T:c_aij_palmistry}#1#{}を1枚持ってランを開始",
                },
            },
            sleeve_aij_patchwork = {
                name = "パッチワークスリーブ",
                text = {
                    "全プレイングカードにランダムなスートパッチが付いて見える",
                },
            },
            sleeve_aij_patchwork_alt = {
                name = "パッチワークスリーブ",
                text = {
                    "全プレイングカードにランダムなスートパッチが{C:attention}2{}つ付いて見える",
                },
            },
        },
        Spectral = {
            c_aij_barathrum = {
                name = "深淵",
                text = {
                    "選んだ{C:tarot}タロット{}カード{C:attention}#1#{}種を",
                    "{C:attention}出現候補{}から永久に{C:red}除外{}する",
                },
            },
            c_aij_gegenschein = {
                name = "対日照",
                text = {
                    "プレイしたことのある{C:dark_edition}隠しハンド{}の",
                    "レベルをそれぞれの{C:attention}プレイ回数{}と同じにする",
                },
            },
            c_aij_gravastar = {
                name = "グラバスター",
                text = {
                    "すべての{C:legendary,E:1}ポーカーハンド{}の{C:chips}チップ{}をレベルアップする",
                },
            },
            c_aij_ketu = {
                name = "ケートゥ",
                text = {
                    {
                        "{C:attention}#1#{}に{C:legendary,E:1}ケートゥ{}を対応させる",
                    },
                    {
                        "{C:legendary,E:1}ケートゥ{}の効果",
                        "一番左の{C:attention}ジョーカー{}を再発動する",
                    },
                },
            },
            c_aij_lacuna = {
                name = "空白",
                text = {
                    "選んだカード{C:attention}#1#{}枚を{C:money}売却{}して{C:money}$#2#{}を獲得",
                    "カードの{C:attention}強化{}、{C:attention}シール{}、",
                    "{C:dark_edition}エディション{}1つにつき、さらに{C:money}$#3#{}",
                },
            },
            c_aij_maw = {
                name = "大口",
                text = {
                    "ランダムな{C:attention}ジョーカー{}1枚と",
                    "{C:attention}手札のすべてのカード{}を{C:red}破壊{}する",
                },
            },
            c_aij_mirth = {
                name = "歓喜",
                text = {
                    "手札から選んだ{C:attention}#1#{}枚に{V:1}#2#{}を付ける",
                },
            },
            c_aij_palmistry = {
                name = "手相占い",
                text = {
                    "{C:attention}手札{}の各カードにランダムな{C:attention}強化{}を付ける",
                },
            },
            c_aij_possession = {
                name = "憑依",
                text = {
                    "選んだカード{C:attention}#1#{}枚から",
                    "{C:dark_edition}エディション{}と{C:attention}強化{}を取り除き、",
                    "その効果をカードの{C:jest_inherent}固有効果{}にする",
                },
            },
            c_aij_providence = {
                name = "天の導き",
                text = {
                    "{C:attention}占星術タグ{}を獲得",
                },
            },
            c_aij_pulsar = {
                name = "パルサー",
                text = {
                    "すべての{C:legendary,E:1}ポーカーハンド{}の{C:mult}倍率{}をレベルアップする",
                },
            },
            c_aij_rahu = {
                name = "ラーフ",
                text = {
                    {
                        "{C:attention}#1#{}に{C:legendary,E:1}ラーフ{}を対応させる",
                    },
                    {
                        "{C:legendary,E:1}ラーフ{}の効果",
                        "{C:attention}プレイしたカード{}をすべて再発動する",
                    },
                },
            },
            c_aij_reshape = {
                name = "再形成",
                text = {
                    "右から{C:attention}50%{}のジョーカー{C:inactive}（端数切り上げ）{}を",
                    "その中の1枚の{C:attention}コピー{}に変える",
                    "{C:inactive,s:0.8}（元のステッカーとエディションは保持）",
                },
            },
            c_aij_scopophobia = {
                name = "視線恐怖",
                text = {
                    "手札から選んだ{C:attention}#1#{}枚に{V:1}#2#{}を付ける",
                },
            },
            c_aij_shade = {
                name = "シェイド",
                text = {
                    "手札のランダムな{C:attention}#1#{}枚に{C:dark_edition}ネガティブ{}を付ける",
                },
            },
            c_aij_tallow = {
                name = "獣脂",
                text = {
                    "手札から選んだ{C:attention}#1#{}枚に{V:1}#2#{}を付ける",
                },
            },
            c_aij_tetragrammaton = {
                name = "テトラグラマトン",
                text = {
                    {
                        "{C:attention}ランク{}、{C:attention}スート{}、{C:attention}強化{}を",
                        "指定してカードを1枚生成する",
                    },
                    {
                        "{C:attention}ランダム{}なカードを4枚生成してデッキに加える",
                    },
                },
            },
            c_aij_trefle = {
                name = "トレフル",
                text = {
                    "選んだ{C:attention}ジョーカー{}1枚を{C:attention}リロール{}する",
                    "{C:inactive}（エターナルは対象外）",
                },
            },
            c_aij_trefle_controller = {
                name = "トレフル",
                text = {
                    "{C:attention}一番右{}のジョーカーを{C:attention}リロール{}する",
                    "{C:inactive}（エターナルは対象外）",
                },
            },
            c_aura = {
                name = "オーラ",
                text = {
                    "手札から選んだ{C:attention}#1#{}枚に",
                    "{C:dark_edition}フォイル{}、{C:dark_edition}ホログラム{}、",
                    "{C:dark_edition}ポリクローム{}のいずれかを付ける",
                },
            },
            c_deja_vu = {
                name = "デジャヴ",
                text = {
                    "手札から選んだ{C:attention}#1#{}枚に{C:red}レッドシール{}を付ける",
                },
            },
            c_medium = {
                name = "ミディアム",
                text = {
                    "手札から選んだ{C:attention}#1#{}枚に{C:purple}パープルシール{}を付ける",
                },
            },
            c_talisman = {
                name = "タリスマン",
                text = {
                    "手札から選んだ{C:attention}#1#{}枚に{C:attention}ゴールドシール{}を付ける",
                },
            },
            c_trance = {
                name = "トランス",
                text = {
                    "手札から選んだ{C:attention}#1#{}枚に{C:blue}ブルーシール{}を付ける",
                },
            },
        },
        Stake = {
            stake_aij_polychrome = {
                name = "ポリクロームステーク",
                text = {
                    "難易度を{C:dark_edition}カスタマイズ{}できる",
                },
            },
            stake_blue = {
                name = "ブルーステーク",
                text = {
                    "アンティ{C:attention}4{}または{C:attention}5{}の",
                    "ボスブラインドがピットブラインドになる",
                    "{s:0.8}これより下位のステークの効果も適用",
                },
            },
        },
        Tag = {
            tag_aij_anarchy = {
                name = "アナーキータグ",
                text = {
                    "{C:red}ランダム{}な効果が発動する{C:red}！！！",
                },
            },
            tag_aij_asteroid = {
                name = "小惑星タグ",
                text = {
                    "{C:dark_edition}ブラックホール{}、{C:dark_edition}パルサー{}、{C:dark_edition}グラバスター{}入りの",
                    "{C:planet}セレスティアルパック{}を無料で獲得",
                },
            },
            tag_aij_astrology = {
                name = "占星術タグ",
                text = {
                    "次に使う{C:planet}惑星{}カードを{C:attention}2～4{}回{C:attention}再発動{}する",
                },
            },
            tag_aij_aureate = {
                name = "オーレートタグ",
                text = {
                    "ショップで次に並ぶエディションなしのジョーカーが",
                    "無料になり、{C:money}オーレート{}が付く",
                },
            },
            tag_aij_auspicious = {
                name = "縁起の良いタグ",
                text = {
                    "好きな{C:tarot}タロット{}カードを選び、",
                    "その{C:dark_edition}ネガティブ{}コピーを{C:attention}3{}枚生成する",
                },
            },
            tag_aij_bierstiefel = {
                name = "ビアシュティーフェルタグ",
                text = {
                    "空いている{C:attention}ジョーカースロット{}を",
                    "ランダムな{C:common}コモン{}か{C:uncommon}アンコモン{}のジョーカーで埋める",
                },
            },
            tag_aij_capital = {
                name = "キャピタルタグ",
                text = {
                    "ボスブラインドを倒すと{C:money}$#1#{}を獲得",
                },
            },
            tag_aij_chaos = {
                name = "カオスタグ",
                text = {
                    "{C:red}ランダム{}な効果が発動する",
                },
            },
            tag_aij_cinema = {
                name = "シネマタグ",
                text = {
                    "{C:attention}一番左{}のジョーカーに{C:aij_silver}シルバー{}を付ける",
                    "{C:inactive}（既存のエディションを上書き）",
                },
            },
            tag_aij_circumplanetary = {
                name = "周惑星タグ",
                text = {
                    "{C:attention}最も多くプレイした役{}を{C:attention}#1#{}レベル上げる",
                    "{C:inactive}（現在 #2#）",
                },
            },
            tag_aij_cosmic = {
                name = "宇宙タグ",
                text = {
                    "{C:aij_astral}ジャンボ恒星パック{}を無料で獲得",
                },
            },
            tag_aij_crystal = {
                name = "クリスタルタグ",
                text = {
                    "エディションなしのジョーカー1枚と、デッキ内の",
                    "エディションなしのカード{C:attention}#1#{}枚をランダムに選び、",
                    "{C:dark_edition}フォイル{}を付ける",
                },
            },
            tag_aij_dark_matter = {
                name = "ダークマタータグ",
                text = {
                    "エディションなしの{C:attention}ランダム{}なジョーカーに",
                    "{C:dark_edition}ネガティブ{}を付ける",
                },
            },
            tag_aij_dominus = {
                name = "ドミナスタグ",
                text = {
                    "今のボスブラインドを、好きな{C:attention}ボスブラインド{}に置き換える",
                },
            },
            tag_aij_err_tag_undefined = {
                name = "ERR_TAG_UNDEFINED",
                text = {
                    "次のショップのジョーカーがすべて",
                    "{E:aij_misprinted_red}ミスプリント{}になる",
                },
            },
            tag_aij_fortunate = {
                name = "幸運のタッグ",
                text = {
                    "好きな{C:tarot}タロット{}カードを選んで生成する",
                    "{C:inactive}（空きスロットが必要）",
                },
            },
            tag_aij_frugal = {
                name = "倹約タグ",
                text = {
                    "次のショップの{C:attention}すべて{}のカードと",
                    "ブースターパックが無料になる",
                },
            },
            tag_aij_galloping_domino = {
                name = "ギャロッピングドミノタグ",
                text = {
                    "次の{C:money}ショップ{}で無料リロール{C:attention}+#1#{}",
                },
            },
            tag_aij_gioco = {
                name = "ジオコタグ",
                text = {
                    "次のラウンドのハンドサイズが{C:attention}2倍{}になる",
                },
            },
            tag_aij_glamour = {
                name = "グラマータグ",
                text = {
                    "エディションなしの{C:attention}ランダム{}なジョーカー{C:attention}2{}枚に{C:aij_plasma}グリマー{}を付ける",
                },
            },
            tag_aij_glimmer = {
                name = "グリマータグ",
                text = {
                    "ショップで次に並ぶエディションなしのジョーカーが",
                    "無料になり、{C:aij_plasma}グリマー{}が付く",
                },
            },
            tag_aij_gold_dust = {
                name = "ゴールドダストタグ",
                text = {
                    "デッキのエディションなしのカード{C:attention}#1#{}枚に{C:money}オーレート{}を付ける",
                },
            },
            tag_aij_grand_astrologer = {
                name = "グランド占星術師タグ",
                text = {
                    "次に使う{C:planet}惑星{}カードで",
                    "すべての役が{C:attention}2～4{}レベル上がる",
                },
            },
            tag_aij_hermetic = {
                name = "ハーメチックタグ",
                text = {
                    "隠しカード以外の{C:spectral}スペクトル{}カードを選んで生成する",
                    "{C:inactive}（空きスロットが必要）",
                },
            },
            tag_aij_ignoramus = {
                name = "イグノラムスタグ",
                text = {
                    "好きな{C:common}コモン{}か{C:uncommon}アンコモン{}のジョーカーを選んで生成する",
                    "{C:inactive}（空きスロットが必要）",
                },
            },
            tag_aij_iridescent = {
                name = "虹色のタグ",
                text = {
                    "エディションなしのジョーカー1枚と、デッキ内の",
                    "エディションなしのカード{C:attention}#1#{}枚をランダムに選び、",
                    "{C:dark_edition}ホログラム{}を付ける",
                },
            },
            tag_aij_lacteal = {
                name = "乳汁タグ",
                text = {
                    "{C:legendary,E:1}オムニグレード{}の{C:aij_astral}アストラル{}カードを選んで生成する",
                    "{C:inactive}（空きスロットが必要）",
                },
            },
            tag_aij_landfill = {
                name = "埋め立てタグ",
                text = {
                    "このランで{C:red}ディスカード{}したカード1枚につき{C:money}$1{}を獲得",
                    "{C:inactive}（獲得予定額 {C:money}$#1#{C:inactive}）",
                },
            },
            tag_aij_misprinted = {
                name = "ミスプリントタグ",
                text = {
                    "ショップで次に並ぶエディションなしのジョーカーが",
                    "無料になり、{E:aij_misprinted_red}ミスプリント{}が付く",
                },
            },
            tag_aij_nonstandard = {
                name = "非標準タグ",
                text = {
                    "{C:attention}カスタムプレイングカード{}を作り",
                    "そのコピーを2枚デッキに加える",
                },
            },
            tag_aij_occult = {
                name = "オカルトタグ",
                text = {
                    "{C:tarot}タロット{}カード{C:attention}3{}枚と",
                    "{C:spectral}スペクトル{}カード{C:attention}2{}枚を生成する",
                    "{s:0.8}すべて{s:0.8,C:dark_edition}ネガティブ{}",
                },
            },
            tag_aij_omnichrome = {
                name = "オムニクロムタグ",
                text = {
                    "{C:attention}一番右{}のジョーカーに{C:dark_edition}ポリクローム{}を付ける",
                    "{C:inactive}（既存のエディションを上書き）",
                },
            },
            tag_aij_overstuffed = {
                name = "詰め込みすぎたタグ",
                text = {
                    "次に開ける{C:attention}ブースターパック{}で",
                    "候補の数と選べる枚数が{C:attention}2倍{}になる",
                },
            },
            tag_aij_polydactyly = {
                name = "多指症タグ",
                text = {
                    "このランで使わずに残した{C:blue}ハンド{}1回につき",
                    "次のラウンドのハンド数{C:blue}+1{}",
                    "{C:inactive}（追加予定 {C:blue}+#1#{C:inactive}ハンド）",
                    "{C:inactive}（最大 {C:blue}+40{C:inactive}ハンド）",
                },
            },
            tag_aij_recherche = {
                name = "ルシェルシェタグ",
                text = {
                    "能力の数値が{C:attention}2倍{}になった{C:rare}レアジョーカー{}が",
                    "無料でショップに並ぶ",
                },
            },
            tag_aij_silver = {
                name = "シルバータグ",
                text = {
                    "ショップで次に並ぶエディションなしのジョーカーが",
                    "無料になり、{C:aij_silver}シルバー{}が付く",
                },
            },
            tag_aij_soulbound = {
                name = "ソウルバウンドタグ",
                text = {
                    "{C:attention}ペリシャブル{}付きの{C:legendary}レジェンダリー{}ジョーカーを",
                    "ランダムに1枚生成する",
                    "{C:inactive}（空きスロットが必要）",
                },
            },
            tag_aij_stellar = {
                name = "ステラータグ",
                text = {
                    "ショップで次に並ぶエディションなしのジョーカーが",
                    "無料になり、{C:aij_stellar}ステラー{}が付く",
                },
            },
            tag_aij_stereoscopic = {
                name = "立体視タグ",
                text = {
                    "次に選んだ{C:attention}タグ{}の{C:money}ゴールド{}版コピーを獲得",
                    "{s:0.8,C:attention}ダブルタグ{s:0.8}は対象外",
                },
            },
            tag_aij_superlunary = {
                name = "超月のタッグ",
                text = {
                    "エディションなしのジョーカー1枚と、デッキ内の",
                    "エディションなしのカード{C:attention}#1#{}枚をランダムに選び、",
                    "{C:aij_stellar}ステラー{}を付ける",
                },
            },
            tag_aij_ticket = {
                name = "チケットタグ",
                text = {
                    "ランダムなバウチャーと、その{C:attention}アップグレード{}版を引き換える",
                },
            },
            tag_aij_timelost = {
                name = "タイムロストタグ",
                text = {
                    "{C:purple}ジョーカー当てパック{}を無料で獲得",
                    "候補はすべてペリシャブル付きで{C:attention}5{}枚入っている",
                },
            },
            tag_aij_unusual = {
                name = "珍しいタグ",
                text = {
                    "能力の数値が{C:attention}2倍{}になった{C:uncommon}アンコモン{}ジョーカーが",
                    "無料でショップに並ぶ",
                },
            },
            tag_aij_velocity = {
                name = "速度タグ",
                text = {
                    "{C:money}$#1#{}を獲得する。この額は経過した{C:attention}ラウンド{}",
                    "1回につき{C:money}$#2#{}ずつ減る",
                    "{C:inactive}（獲得予定額 {C:money}$#3#{C:inactive}）",
                },
            },
            tag_aij_ventripotent = {
                name = "ベントリポテントタグ",
                text = {
                    "次に開ける{C:attention}ブースターパック{}の候補が{C:attention}2倍{}になり",
                    "選べる枚数が{C:attention}無制限{}になる",
                },
            },
            tag_aij_windfall = {
                name = "棚ぼたタグ",
                text = {
                    "所持金が{C:money}3倍{}になる",
                    "{C:inactive}（最大 {C:money}$300{C:inactive}）",
                },
            },
        },
        Tarot = {
            c_aij_balance_and_blade = {
                name = "天秤と刃",
                text = {
                    "選んだ{C:attention}#1#{}枚にランダムなスートの{C:attention}パッチ{}を付ける",
                },
            },
            c_aij_beheaded = {
                name = "首なき者",
                text = {
                    "選んだカード{C:attention}#1#{}枚に{C:attention}爆弾ステッカー{}を付ける",
                },
            },
            c_aij_broken_fate = {
                name = "砕かれた運命",
                text = {
                    "{C:attention}一番左の消耗カード{}の数値が",
                    "{C:attention}初期値{}の{C:attention}0.75倍{}～{C:attention}2.5倍{}の間でランダムに変わる",
                },
            },
            c_aij_cubic_stone = {
                name = "立方の石",
                text = {
                    "選んだカード{C:attention}#1#{}枚を{C:attention}#2#{}に強化する",
                },
            },
            c_aij_golem = {
                name = "ゴーレム",
                text = {
                    "選んだ{C:attention}ストーンカード{}最大{C:attention}#1#{}枚に",
                    "ランダムな強化を{C:attention}追加{}する",
                },
            },
            c_aij_isis_urania = {
                name = "イシス・ウラニア",
                text = {
                    "選んだカード{C:attention}#1#{}枚を{C:attention}#2#{}に強化する",
                },
            },
            c_aij_magus = {
                name = "魔術師",
                text = {
                    "選んだカード{C:attention}#1#{}枚を{C:attention}#2#{}に強化する",
                },
            },
            c_aij_master_arcanes = {
                name = "秘術の達人",
                text = {
                    "{C:green}#2#分の#1#{}の確率でランダムな",
                    "{C:spectral}スペクトル{}カードを1枚生成する",
                    "{C:inactive}（空きスロットが必要）",
                },
            },
            c_aij_osiris = {
                name = "オシリス",
                text = {
                    "選んだジョーカー{C:attention}1{}枚を{C:red}破壊{}し、",
                    "その{C:money}売却額{}の3倍を獲得する",
                    "{C:inactive}（獲得予定額 {C:money}$#1#{C:inactive}）",
                    "{C:inactive}（最大 {C:money}$#2#{C:inactive}）",
                },
            },
            c_aij_osiris_controller = {
                name = "オシリス",
                text = {
                    "{C:attention}一番右{}のジョーカーを{C:red}破壊{}し、",
                    "その{C:money}売却額{}の3倍を獲得する",
                    "{C:inactive}（獲得予定額 {C:money}$#1#{C:inactive}）",
                },
            },
            c_aij_reaper = {
                name = "死神",
                text = {
                    "カードを{C:attention}#1#{}枚選ぶ",
                    "{C:attention}ランダム{}に選ばれた1枚の{C:attention}コピー{}に",
                    "選んだ{C:attention}#1#{}枚すべてを変える",
                },
            },
            c_aij_rising_dead = {
                name = "死者の目覚め",
                text = {
                    "カードを{C:attention}#1#{}枚選ぶ",
                    "{C:attention}右{}のカードの{C:attention}強化{}と{C:attention}シール{}を",
                    "{C:attention}左{}のカードに付ける",
                },
            },
            c_aij_sacrifice = {
                name = "生け贄",
                text = {
                    "選んだカード{C:attention}#1#{}枚を{C:red}破壊{}し、",
                    "{C:attention}スート{}・{C:attention}ランク{}・{C:attention}強化{}が",
                    "ランダムなカードを1枚生成する",
                },
            },
            c_aij_sanctuary_gate = {
                name = "聖域の門",
                text = {
                    "選んだカード{C:attention}#1#{}枚を{C:attention}#2#{}に強化する",
                },
            },
            c_aij_sphinx = {
                name = "スフィンクス",
                text = {
                    "選んだカード{C:attention}#1#{}枚を{C:attention}#2#{}に強化する",
                },
            },
            c_aij_star_magi = {
                name = "賢者の星",
                text = {
                    "パッシグレードの{C:aij_astral}アストラル{}カードを",
                    "ランダムに1枚{C:attention}生成{}する",
                },
            },
            c_aij_tamed_lion = {
                name = "飼いならされた獅子",
                text = {
                    "選んだカード{C:attention}#1#{}枚を{C:attention}#2#{}に強化する",
                },
            },
            c_aij_twilight = {
                name = "黄昏",
                text = {
                    "最も多くプレイした役のレベル1につき{C:money}$#1#{}を獲得",
                    "{C:inactive}（最大 {C:money}$#2#{C:inactive}）",
                    "{C:inactive}（獲得予定額 {C:money}$#3#{C:inactive}・#4#）",
                },
            },
            c_aij_two_ways = {
                name = "二つの道",
                text = {
                    "選んだ{C:attention}#1#{}枚を、元の{C:attention}ランク{}が{C:attention}半分{}の",
                    "カード{C:attention}2{}枚に分割する",
                    "{C:inactive}（奇数はできるだけ均等に分ける）",
                    "{C:inactive}（A=14、K=13、Q=12、J=11）",
                },
            },
            c_aij_typhon = {
                name = "テュポーン",
                text = {
                    "選んだカード{C:attention}#1#{}枚を{C:attention}#2#{}に強化する",
                },
            },
            c_aij_urns = {
                name = "骨壺",
                text = {
                    "選んだ{C:attention}強化{}カード{C:attention}#1#{}枚を{C:red}破壊{}し、",
                    "その{C:attention}強化{}を手札のランダムな{C:attention}#2#{}枚に付ける",
                },
            },
            c_aij_veiled_lamp = {
                name = "覆われたランプ",
                text = {
                    "選んだカード{C:attention}#1#{}枚を{C:attention}#2#{}に強化する",
                },
            },
        },
        Voucher = {
            v_aij_common_caste = {
                name = "庶民階級",
                text = {
                    "{C:money}ショップ{}にランダムな{C:common}コモンパック{}が",
                    "毎回1つ追加される",
                },
            },
            v_aij_embraced_arcane = {
                name = "秘術の受容",
                text = {
                    "{C:tarot}アルカナパック{}で選べる枚数{C:attention}+#1#{}",
                },
            },
            v_aij_fairy_dust = {
                name = "妖精の粉",
                text = {
                    "{C:dark_edition}グリマー{}、{C:dark_edition}オーレート{}、{C:dark_edition}ステラー{}の",
                    "カードの出現率が{C:attention}#1#倍{}",
                },
            },
            v_aij_gold_medal = {
                name = "金メダル",
                text = {
                    "{C:money}ゴールドタグ{}の出現率が{C:attention}#1#倍{}",
                },
            },
            v_aij_live_pixie = {
                name = "生きたピクシー",
                text = {
                    "{C:dark_edition}グリマー{}、{C:dark_edition}オーレート{}、{C:dark_edition}ステラー{}の",
                    "カードの出現率が{C:attention}#1#倍{}",
                },
            },
            v_aij_polkadot = {
                name = "水玉模様",
                text = {
                    "{C:red}不利な{}ステッカーの効果を{C:attention}弱める{}",
                },
            },
            v_aij_raw_mult = {
                name = "未加工の倍率",
                text = {
                    "倍率{C:mult}+#1#{}",
                },
            },
            v_aij_recursion = {
                name = "再帰",
                text = {
                    "販売バウチャーの数{C:attention}+#1#{}",
                },
            },
            v_aij_recursion_2 = {
                name = "再帰",
                text = {
                    "販売バウチャーの数{C:attention}+#1#{}",
                    "バウチャーの価格が{C:money}$#2#{}下がる",
                },
            },
            v_aij_refined_mult = {
                name = "精製された倍率",
                text = {
                    "倍率{X:mult,C:white}X#1#{}",
                },
            },
            v_aij_seal_of_the_realm = {
                name = "王国の印章",
                text = {
                    "{C:attention}シール自体{}に{C:dark_edition}エディション{}が付いた",
                    "プレイングカードが出現することがある",
                },
            },
            v_aij_sticker_sheet = {
                name = "ステッカーシート",
                text = {
                    "{C:red}不利な{}ステッカーの効果を{C:attention}弱める{}",
                },
            },
            v_aij_thaumaturgy = {
                name = "奇跡術",
                text = {
                    "{C:money}ショップ{}にランダムな{C:tarot}アルカナパック{}が",
                    "毎回1つ追加される",
                },
            },
            v_aij_trophy = {
                name = "トロフィー",
                text = {
                    "{C:attention}ビッグブラインド{}のスキップタグが",
                    "{C:green}#2#分の#1#{}の確率で{C:money}ゴールドタグ{}になる",
                },
            },
            v_aij_upper_class = {
                name = "上流階級",
                text = {
                    "{C:money}ショップ{}にランダムな{C:uncommon}アンコモンパック{}が",
                    "毎回1つ追加される",
                },
            },
            v_aij_wax_stamp = {
                name = "封ろう印",
                text = {
                    "{C:attention}スタンダードパック{}のカードに",
                    "{C:attention}シール{}が付く確率が{C:attention}2倍{}になる",
                },
            },
        },
        aij_astral = {
            c_aij_alcyone = {
                name = "アルキオネ",
                text = {
                    {
                        "{C:attention}#1#{}に{C:attention}アルキオネ{}を対応させる",
                    },
                    {
                        "ハンドをプレイした後",
                        "カードを追加で{C:attention}#2#{}枚引く",
                    },
                },
            },
            c_aij_alcyone_pin = {
                name = "アルキオネ",
                text = {
                    "ハンドをプレイした後",
                    "カードを追加で{C:attention}#2#{}枚引く",
                },
            },
            c_aij_aldebaran = {
                name = "アルデバラン",
                text = {
                    {
                        "{C:attention}#1#{}に{C:attention}アルデバラン{}を対応させる",
                    },
                    {
                        "{C:attention}ポーカーハンド{}の基本{C:chips}チップ{}と{C:mult}倍率{}の差を",
                        "{C:attention}#2#%{}{C:aij_plasma}縮める{}",
                    },
                },
            },
            c_aij_aldebaran_pin = {
                name = "アルデバラン",
                text = {
                    "{C:attention}ポーカーハンド{}の基本{C:chips}チップ{}と{C:mult}倍率{}の差を",
                    "{C:attention}#2#%{}{C:aij_plasma}縮める{}",
                },
            },
            c_aij_algol = {
                name = "アルゴル",
                text = {
                    {
                        "{C:attention}#1#{}に{C:attention}アルゴル{}を対応させる",
                    },
                    {
                        "ハンドをプレイした後に{C:money}$#2#{}を獲得",
                    },
                },
            },
            c_aij_algol_pin = {
                name = "アルゴル",
                text = {
                    "ハンドをプレイした後に{C:money}$#2#{}を獲得",
                },
            },
            c_aij_algorab = {
                name = "アルゴラブ",
                text = {
                    {
                        "{C:attention}#1#{}に{C:attention}アルゴラブ{}を対応させる",
                    },
                    {
                        "{C:green}#3#分の#2#{}の確率で",
                        "ランダムな{C:tarot}タロット{}カードを生成する",
                    },
                },
            },
            c_aij_algorab_pin = {
                name = "アルゴラブ",
                text = {
                    "{C:green}#3#分の#2#{}の確率で",
                    "ランダムな{C:tarot}タロット{}カードを生成する",
                },
            },
            c_aij_alkaid = {
                name = "アルカイド",
                text = {
                    {
                        "{C:attention}#1#{}に{C:attention}アルカイド{}を対応させる",
                    },
                    {
                        "役に含まれる未強化のカードから",
                        "ランダムに{C:attention}#2#{}枚を強化する",
                    },
                },
            },
            c_aij_alkaid_pin = {
                name = "アルカイド",
                text = {
                    "役に含まれる未強化のカードから",
                    "ランダムに{C:attention}#2#{}枚を強化する",
                },
            },
            c_aij_alphecca = {
                name = "アルフェッカ",
                text = {
                    {
                        "{C:attention}#1#{}に{C:attention}アルフェッカ{}を対応させる",
                    },
                    {
                        "得点したカードのチップが{C:attention}永続的{}に{C:chips}+#2#{}",
                    },
                },
            },
            c_aij_alphecca_pin = {
                name = "アルフェッカ",
                text = {
                    "得点したカードのチップが{C:attention}永続的{}に{C:chips}+#2#{}",
                },
            },
            c_aij_antares = {
                name = "アンタレス",
                text = {
                    {
                        "{C:attention}#1#{}に{C:attention}アンタレス{}を対応させる",
                    },
                    {
                        "{C:attention}手札{}のランダムなカード1枚を{C:red}破壊{}する",
                    },
                },
            },
            c_aij_antares_pin = {
                name = "アンタレス",
                text = {
                    "{C:attention}手札{}のランダムなカード1枚を{C:red}破壊{}する",
                },
            },
            c_aij_arcturus = {
                name = "アークトゥルス",
                text = {
                    {
                        "{C:attention}#1#{}に{C:attention}アークトゥルス{}を対応させる",
                    },
                    {
                        "{C:red}ディスカード{}{C:attention}+#2#{}",
                    },
                },
            },
            c_aij_arcturus_pin = {
                name = "アークトゥルス",
                text = {
                    "{C:red}ディスカード{}{C:attention}+#2#{}",
                },
            },
            c_aij_capella = {
                name = "カペラ",
                text = {
                    {
                        "{C:attention}#1#{}に{C:attention}カペラ{}を対応させる",
                    },
                    {
                        "{C:green}#3#分の#2#{}の確率で",
                        "ランダムな{C:planet}惑星{}カードを生成する",
                    },
                },
            },
            c_aij_capella_pin = {
                name = "カペラ",
                text = {
                    "{C:green}#3#分の#2#{}の確率で",
                    "ランダムな{C:planet}惑星{}カードを生成する",
                },
            },
            c_aij_deneb_algedi = {
                name = "デネブ・アルゲディ",
                text = {
                    {
                        "{C:attention}#1#{}に{C:attention}デネブ・アルゲディ{}を対応させる",
                    },
                    {
                        "各ラウンドでこの役を{C:attention}初めて{}プレイすると",
                        "残りハンド数{C:blue}+#2#{}",
                    },
                },
            },
            c_aij_deneb_algedi_pin = {
                name = "デネブ・アルゲディ",
                text = {
                    "各ラウンドでこの役を{C:attention}初めて{}プレイすると",
                    "残りハンド数{C:blue}+#2#{}",
                    "{C:inactive}#3#{}",
                },
            },
            c_aij_ketu_pin = {
                name = "ケートゥ",
                text = {
                    "一番左の{C:attention}ジョーカー{}を再発動する",
                },
            },
            c_aij_procyon = {
                name = "プロキオン",
                text = {
                    {
                        "{C:attention}#1#{}に{C:attention}プロキオン{}を対応させる",
                    },
                    {
                        "ランダムな{C:attention}ジョーカー{}1枚の売却額が{C:money}$#2#{}上がる",
                    },
                },
            },
            c_aij_procyon_pin = {
                name = "プロキオン",
                text = {
                    "ランダムな{C:attention}ジョーカー{}1枚の売却額が{C:money}$#2#{}上がる",
                },
            },
            c_aij_rahu_pin = {
                name = "ラーフ",
                text = {
                    "{C:attention}プレイしたカード{}をすべて再発動する",
                },
            },
            c_aij_regulus = {
                name = "レグルス",
                text = {
                    {
                        "{C:attention}#1#{}に{C:attention}レグルス{}を対応させる",
                    },
                    {
                        "{C:green}#3#分の#2#{}の確率で",
                        "{C:attention}プレイした役{}のレベルが上がる",
                    },
                },
            },
            c_aij_regulus_pin = {
                name = "レグルス",
                text = {
                    "{C:green}#3#分の#2#{}の確率で",
                    "{C:attention}プレイした役{}のレベルが上がる",
                },
            },
            c_aij_sirius = {
                name = "シリウス",
                text = {
                    {
                        "{C:attention}#1#{}に{C:attention}シリウス{}を対応させる",
                    },
                    {
                        "ランダムなカード{C:attention}#2#{}枚を再発動する",
                    },
                },
            },
            c_aij_sirius_pin = {
                name = "シリウス",
                text = {
                    "ランダムなカード{C:attention}#2#{}枚を再発動する",
                },
            },
            c_aij_spica = {
                name = "スピカ",
                text = {
                    {
                        "{C:attention}#1#{}に{C:attention}スピカ{}を対応させる",
                    },
                    {
                        "現在の{C:attention}ボスブラインド{}を無効化し、",
                        "この{C:spectral}アストラル効果{}を解除する",
                    },
                },
            },
            c_aij_spica_pin = {
                name = "スピカ",
                text = {
                    "現在の{C:attention}ボスブラインド{}を無効化し、",
                    "この{C:spectral}アストラル効果{}を解除する",
                    "{C:inactive}#2#{}",
                },
            },
            c_aij_vega = {
                name = "ベガ",
                text = {
                    {
                        "{C:attention}#1#{}に{C:attention}ベガ{}を対応させる",
                    },
                    {
                        "{C:attention}手札{}の{C:attention}先頭{}のカードを再発動する",
                    },
                },
            },
            c_aij_vega_pin = {
                name = "ベガ",
                text = {
                    "{C:attention}手札{}の{C:attention}先頭{}のカードを再発動する",
                },
            },
        },
        aij_hex_tarot = {
            c_aij_error = {
                name = "誤り",
                text = {
                    "選んだカード最大{C:attention}#1#{}枚に{C:red}カオス{}を付ける",
                },
            },
            c_aij_faceless = {
                name = "顔なき者",
                text = {
                    "一番左の{C:attention}ジョーカー{}を{C:red}破壊{}し、",
                    "それよりレア度の低い{C:dark_edition}ネガティブ{}の",
                    "{C:attention}ジョーカー{}を1枚生成する",
                },
            },
            c_aij_inn = {
                name = "宿屋",
                text = {
                    "ランダムな{C:spectral}顔なじみ{}を1枚生成する",
                    "{C:inactive}（空きスロットが必要）",
                },
            },
            c_aij_janitor = {
                name = "用務員",
                text = {
                    "{C:attention}手札{}のカードをすべて{C:red}破壊{}する",
                },
            },
            c_aij_oracle = {
                name = "神託",
                text = {
                    "手札の{C:attention}全カード{}に同じ{C:attention}ランダムな強化{}を1つ付ける",
                },
            },
        },
        alt_texture = {
            alt_tex_aij_joker_retextures = {
                name = "ジョーカーのテクスチャ",
            },
        },
        texture_packs = {
            texpack_aij_nevernamed_retrextures = {
                name = "All In Jest リテクスチャ",
                text = {
                    "Nevernamedによる本編カードの描き直し",
                },
            },
        },
    },
    misc = {
        achievement_descriptions = {
            ach_aij_all_in = {
                "All In Jestの全ジョーカーで",
                "ゴールドステッカーを獲得する",
            },
            ach_aij_all_in_hidden = {
                "All In Jestの全ジョーカーで",
                "ゴールドステッカーを獲得する",
            },
            ach_aij_cabinet_of_wonders = {
                "すべて in Jest によって追加された新しい消耗カードをすべて発見する",
            },
            ach_aij_cabinet_of_wonders_hidden = {
                "すべて in Jest によって追加された新しい消耗カードをすべて発見する",
            },
            ach_aij_coupon_coupin_on = {
                "すべて in Jest によって追加されたすべての新しいクーポンを発見する",
            },
            ach_aij_coupon_coupin_on_hidden = {
                "すべて in Jest によって追加されたすべての新しいクーポンを発見する",
            },
            ach_aij_karat = {
                "すべてのゴールドタグを発見",
            },
            ach_aij_karat_hidden = {
                "すべてのゴールドタグを発見",
            },
            ach_aij_world_minus_one = {
                "アンティ -1 に到達",
            },
            ach_aij_world_minus_one_hidden = {
                "アンティ -1 に到達",
            },
            ach_aij_youre_winner = {
                "すべて in Jest で他のすべての実績を獲得する",
            },
            ach_aij_youre_winner_hidden = {
                "すべて in Jest で他のすべての実績を獲得する",
            },
        },
        achievement_names = {
            ach_aij_all_in = "オールイン",
            ach_aij_all_in_hidden = "???",
            ach_aij_cabinet_of_wonders = "驚異のキャビネット",
            ach_aij_cabinet_of_wonders_hidden = "???",
            ach_aij_coupon_coupin_on = "クーポンクーピンオン",
            ach_aij_coupon_coupin_on_hidden = "???",
            ach_aij_karat = "18 カラット",
            ach_aij_karat_hidden = "???",
            ach_aij_world_minus_one = "世界 -1",
            ach_aij_world_minus_one_hidden = "???",
            ach_aij_youre_winner = "あなたは勝者です",
            ach_aij_youre_winner_hidden = "???",
        },
        challenge_names = {
            c_aij_bananarama = "バナナ祭り",
            c_aij_flip_flop = "表裏一転",
            c_aij_full_plate = "満腹御礼",
            c_aij_micromanagement = "細かい管理",
            c_aij_mircotransactions = "少額決済",
            c_aij_pandemonium = "大混乱",
            c_aij_sharpest_tool = "切れ者",
            c_aij_the_pit = "闘技場",
        },
        dictionary = {
            aij_alter_trypophobia = "集合体恐怖に配慮した画像",
            aij_alter_trypophobia_tooltip = {
                "ジョーカー「{C:attention}集合体恐怖{}」の画像を",
                "刺激の少ないものに変更する",
                "{s:0.8,C:red}（再起動が必要）",
            },
            aij_astral_grades_collection_label = "アストラル等級",
            aij_blue_stake_rework = "ブルーステークの変更",
            aij_blue_stake_rework_tooltip = {
                "ブルーステークの{C:red}ディスカード-1{}を",
                "{C:attention}ピットブラインド{}の出現に置き換える",
                "{s:0.8,C:red}（再起動が必要）",
            },
            aij_borra_triggers = {
                "カードが得点される",
                "カードが捨てられる",
                "消耗カードが使用されている",
                "何でも購入される",
                "何でも売られている",
                "ブラインドが選択されています",
                "ブラインドはスキップされる",
                "盲目は負ける",
                "ブースターパックはスキップされる",
                "手が遊ばれる",
                "ボスのブラインド効果が発動する",
                "カードが破壊される",
                "ジョーカーは破壊される",
                "破棄が使用される",
                "ショップでリセマラする",
                "トランプがデッキに追加される",
                "利息が発生する",
                "ラッキーカードトリガー",
                "スチールカードトリガー",
                "タグが獲得されました",
                "タグがアクティブになる",
                "ポーカーハンドのレベルアップ",
                "消耗カードを取得する",
            },
            aij_button_consistency = "出現ルール",
            aij_button_content = "追加コンテンツ",
            aij_button_moons = "衛星",
            aij_button_visuals = "表示・アクセシビリティ",
            aij_doesnt_requires_restart = "再起動不要",
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
            aij_gladiator_blinds = "剣闘士ブラインド",
            aij_guess_names = "ジョーカー当てで名前を表示",
            aij_guess_names_tooltip = {
                "{C:purple}ジョーカー当てパック{}で名前を表示する",
                "{s:0.8,C:inactive}（効果説明は隠れたまま）",
                "{s:0.8,C:inactive}（再起動不要）",
            },
            aij_lite = "All in Jest Lite",
            aij_lite_tooltip = {
                "{C:attention}本編に近い{}追加コンテンツだけを有効にする",
                "{s:0.8,C:inactive}（現在76項目）",
                "{s:0.8,C:red}（再起動が必要）",
            },
            aij_moons_blocking = "同じ役の惑星の重複を防ぐ",
            aij_moons_blocking_tooltip = {
                "{C:planet}衛星{}が有効なとき、同じ役に対応する",
                "{C:planet}惑星{}カードが同時に複数出現しなくなる",
                "{s:0.8,C:inactive}（再起動不要）",
            },
            aij_mult_appearance = "倍率ジョーカーの出現を増やす",
            aij_mult_appearance_opt = {
                "オフ",
                "標準",
                "強",
            },
            aij_mult_appearance_tooltip = {
                "ランの{C:attention}序盤{}に{C:mult}倍率{}ジョーカーが",
                "安定して出現するようにする",
                "{s:0.8,C:inactive}（再起動不要）",
            },
            aij_no_copy_neg = "ネガティブ付きでコピー",
            aij_no_copy_neg_tooltip = {
                "{C:attention}プレイングカード{}のコピーにも",
                "{C:dark_edition}ネガティブ{}を引き継げるようにする",
                "{C:attention}オフ{}（初期設定）では、コピーからネガティブが外れる",
                "{s:0.8,C:inactive}（再起動不要）",
            },
            aij_paid_off = "支払い済み",
            aij_pc_stickers = "プレイングカードのステッカー",
            aij_plus_tag = "+1 タグ",
            aij_random_deck_skins = "デッキスキンをランダム化",
            aij_random_deck_skins_tooltip = {
                "デッキに加わる{C:attention}プレイングカード{}に",
                "ランダムな{C:attention}デッキスキン{}を適用する",
                "{s:0.8,C:inactive}（再起動不要）",
            },
            aij_red_destroy_text = "説明文の「破壊」を強調",
            aij_red_destroy_text_tooltip = {
                "{C:attention}本編{}と{C:attention}MOD{}のカード説明で",
                "英語の destroy を{C:red}赤色{}で表示する",
                "{s:0.8,C:inactive}（他のMODのツールチップに影響する場合がある）",
                "{s:0.8,C:red}（再起動が必要）",
            },
            aij_refreshed = "リフレッシュされた",
            aij_requires_restart = "再起動が必要",
            aij_suit_boss_blocking = "同じスートのボスの再出現を防ぐ",
            aij_suit_boss_blocking_tooltip = {
                "特定の{C:attention}スート{}に影響する{C:attention}ボスブラインド{}が出た後は、",
                "同じスートに影響する別のボスは以降の{C:attention}アンティ{}に出現しない",
                "{s:0.8,C:inactive}（再起動不要）",
            },
            aij_upgraded_tags = "ゴールドタグ",
            aij_wanba_attributes = {
                ace = "エース関連",
                balance = "バランスをとる",
                chance = "確率に基づく",
                chips = "+チップ",
                clubs = "クラブ関連",
                destroy_card = "カード破壊",
                diamonds = "ダイヤモンド関連",
                discard = "破棄",
                economy = "経済",
                eight = "エイト関連",
                face = "フェイスカード関連",
                five = "ファイブ関連",
                food = "食べ物",
                four = "四関連",
                generation = "生成中",
                hand_size = "手のサイズ",
                hand_type = "ポーカーハンド",
                hands = "手",
                hearts = "ハート関連",
                jack = "ジャック関連",
                king = "王様関連",
                mod_chance = "確率の変更",
                mult = "+倍率",
                nine = "ナイン関連",
                planet = "惑星関連",
                queen = "女王様関連",
                rank = "ランク関連",
                retrigger = "再度アクティブ化する",
                scaling = "スケーリング",
                seven = "セブン関連",
                six = "六関連",
                spades = "スペード関連",
                spectral = "スペクトル関連",
                suit = "スーツ関連",
                tarot = "タロット関連",
                ten = "テン関連",
                three = "3関連",
                two = "二つの関係",
                xmult = "乗算倍率",
            },
            b_aij_astral_cards = "アストラルカード",
            b_aij_reroll_tags = "タグをリロール",
            k_active = "有効",
            k_aij_all_time = "全期間",
            k_aij_astral = "アストラル",
            k_aij_blood_spilt_ex = "血がこぼれた！",
            k_aij_bullet_king_ex = "バレットキング",
            k_aij_change_ex = "変化！",
            k_aij_chaos_ex = "カオス！",
            k_aij_common_packs = "コモンパック",
            k_aij_create = "作成する",
            k_aij_destroyed_ex = "破壊されました！",
            k_aij_disable_all = "すべて無効にする",
            k_aij_does_not_score_ex = "得点しない！",
            k_aij_double_ex = "倍増！",
            k_aij_downgrade_ex = "ダウングレード！",
            k_aij_editioned_ex = "エディション化されました！",
            k_aij_empty_ex = "空の！",
            k_aij_foiled_again = "またまた箔押し！",
            k_aij_guess_the_jest = "ジョーカー当て",
            k_aij_hunted_ex = "狩られた！",
            k_aij_inherent = "固有効果",
            k_aij_melted_ex = "溶けた",
            k_aij_memory_card = "覚えた！",
            k_aij_merry_christmas = "メリークリスマス！",
            k_aij_p_arcana = "+1 アルカナ",
            k_aij_party_time = "パーティーの時間！",
            k_aij_pb = "自己ベスト",
            k_aij_plus_consumable = "+1 消耗カード",
            k_aij_plus_two_moons = "+2 月",
            k_aij_points = "ポイント",
            k_aij_polychrome_ex = "多色！",
            k_aij_rare_packs = "レアパック",
            k_aij_remove = "取り除く",
            k_aij_replace = "置き換える",
            k_aij_select = "選ぶ",
            k_aij_sidereal_packs = "恒星パック",
            k_aij_splat_ex = "スプラット！",
            k_aij_total_points = "現在の合計",
            k_aij_triple_ex = "3倍になりました！",
            k_aij_two_into_one_ex = "2つが1つに！",
            k_aij_uncommon_packs = "アンコモンパック",
            k_artist_badge = "アート",
            k_asteroid = "小惑星",
            k_coder_badge = "プログラム",
            k_community_member_badge = "コミュニティメンバー",
            k_content_creator_badge = "コンテンツ制作者",
            k_delete = "削除",
            k_inactive = "無効",
            k_moon = "衛星",
            k_moon_q = "衛星？",
            k_playtester_badge = "プレイテスト",
            k_star = "恒星",
            k_star_q = "恒星？",
            k_tag = "タグ",
            k_tarot_hex = "呪い",
            k_tarot_q = "タロット？",
            run_select_aij_polychrome_settings = "カスタマイズ",
        },
        extra_joker_dictionary = {
            k_aij_blacklist_and = "ほか",
            k_aij_blacklist_empty = "なし",
            k_aij_blacklist_more = "種",
            k_aij_borra_gains = "獲得",
            k_aij_borra_when = "倍率を加える条件",
            k_aij_ghosthunter_ghost_1 = "カードが",
            k_aij_ghosthunter_ghost_2 = "出現しやすくなる",
            k_aij_ghosthunter_ghostless_1 = "カードが出現する",
            k_aij_ghosthunter_ghostless_2 = "出現場所",
            k_aij_jerko_retrigger = "再発動",
            k_aij_jerko_times = "回",
            k_aij_overdesigned_club = "クラブ",
            k_aij_overdesigned_diamond = "ダイヤ",
            k_aij_overdesigned_earn_prefix = "獲得",
            k_aij_overdesigned_give_prefix = "加える",
            k_aij_overdesigned_heart = "ハート",
            k_aij_overdesigned_spade = "スペード",
            k_aij_youve_got_mail = "メールが届きました！",
            k_aij_youve_got_mail_chip_text = " チップ",
            k_aij_youve_got_mail_dollar_prefix = "$",
            k_aij_youve_got_mail_dollars_text = " をハンドごとに獲得",
            k_aij_youve_got_mail_goodbye = "さようなら",
            k_aij_youve_got_mail_mult_text = " 倍率",
            k_aij_youve_got_mail_none = "効果なし…",
            k_aij_youve_got_mail_plus_prefix = "+",
            k_aij_youve_got_mail_xmult_prefix = "X",
        },
        labels = {
            aij_aureate = "オーレート",
            aij_bomb = "爆弾",
            aij_club = "クラブ",
            aij_demanding = "注文付き",
            aij_diamond = "ダイヤ",
            aij_eye_seal = "アイシール",
            aij_face = "フェイス",
            aij_glimmer = "グリマー",
            aij_heart = "ハート",
            aij_indecisive = "気まぐれ",
            aij_introverted = "内気",
            aij_jest_chaotic_card = "カオス",
            aij_marked = "目印付き",
            aij_melted_seal = "溶解シール",
            aij_mint_condition = "新品同様",
            aij_misprint = "ミスプリント",
            aij_pc_eternal = "エターナル",
            aij_pc_perishable = "ペリシャブル",
            aij_pc_rental = "レンタル",
            aij_recherche_doubled = "2倍",
            aij_silver = "シルバー",
            aij_smiley_seal = "スマイリーシール",
            aij_spade = "スペード",
            aij_stellar = "ステラー",
            aij_torn = "破れ",
            aij_unusual_doubled = "2倍",
            astral_grade_aij_omnigrade = "オムニグレード",
            astral_grade_aij_passigrade = "パッシグレード",
            astral_grade_aij_prograde = "プログレード",
            astral_grade_aij_retrograde = "レトログレード",
            pinned = "固定",
        },
        poker_hand_descriptions = {
            ["aij_Royal Flush"] = {
                "同じスートの10・J・Q・K・Aの5枚",
            },
        },
        poker_hands = {
            aij_Nothing_q = "役なし？",
            ["aij_Royal Flush"] = "ロイヤルフラッシュ",
        },
        tutorial = {
            k_aij_line1 = {
                "おい",
            },
            k_aij_line2 = {
                "しばらく遊んでいて、私はこう思っていました...",
            },
            k_aij_line3 = {
                "そろそろ全力を尽くす時期ではないでしょうか？",
            },
        },
        v_dictionary = {
            a_aij_ante_minus = "アンティ-#1#",
            a_aij_applied_stake = "（#1#回適用）",
            a_aij_chips_equal = "チップ=#1#",
            a_aij_discards = "ディスカード+#1#",
            a_aij_discards_plus = "ディスカード+#1#",
            a_aij_discards_plus_singular = "ディスカード+#1#",
            a_aij_exp_mult = "倍率^#1#",
            a_aij_hands_minus = "ハンド-#1#",
            a_aij_handsize = "ハンドサイズ+#1#",
            a_aij_joker_slots = "ジョーカースロット+#1#",
            a_aij_joker_slots_minus = "ジョーカースロット-#1#",
            a_aij_jokers = "ジョーカー+#1#",
            a_aij_mult_equal = "倍率=#1#",
            a_aij_odds = "確率+#1#",
            a_aij_percent_balance = "+#1#%",
            a_aij_percent_balance_minus = "-#1#%",
            a_aij_plus_rerolls = "リロール+#1#",
            a_aij_points = "#1#ポイント",
            a_aij_score_reduction = "スコア-#1#%",
            a_aij_slots = "スロット+#1#",
            a_aij_slots_left = "（空きスロット #1#）",
            a_aij_slots_minus = "スロット-#1#",
            a_aij_times_interest = "利息X#1#",
            a_aij_times_money = "所持金X#1#",
            a_aij_win_ante_plus = "勝利に必要なアンティ+#1#",
        },
        v_text = {
            ch_c_aij_all_jokers_is_food = {
                "{C:attention}食べ物系ジョーカー{}だけが出現する",
            },
            ch_c_aij_all_jokers_perishable_1 = {
                "すべてのジョーカーに{C:attention}ペリシャブル{}が付く",
            },
            ch_c_aij_all_jokers_perishable_2 = {
                "{C:attention}ペリシャブル{}は{C:attention}2{}ラウンドでデバフをかける",
            },
            ch_c_aij_all_pit_blinds = {
                "アンティ1の後、通常のボスはすべて{C:attention}ピットブラインド{}になる",
            },
            ch_c_aij_money_times_negative = {
                "ラウンド終了時に所持金を{C:red}-1{}倍する",
            },
            ch_c_aij_no_mult_in_pool = {
                "指定のジョーカーからのみ{C:mult}倍率{}を得られる",
            },
            ch_c_aij_pandemonium_1 = {
                "スキップタグがすべて{C:attention}カオスタグ{}になる",
            },
            ch_c_aij_pandemonium_2 = {
                "スモールブラインドとビッグブラインドは{C:attention}選択できない{}",
            },
            ch_c_aij_sharpest_tool_1 = {
                "{C:attention}ショップ{}と{C:attention}バフーンパック{}には",
            },
            ch_c_aij_sharpest_tool_2 = {
                "{C:common}コモン{}ジョーカーだけが出現する",
            },
        },
    },
}
if not All_in_Jest.config.blue_stake_rework then
    localization.descriptions.Stake.stake_blue = nil
end

return localization
