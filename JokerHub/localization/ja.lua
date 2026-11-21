return {
    descriptions = {
        Back = {
            b_jokerhub_film_deck = {
                name = "映画監督のデッキ",
                text = {
                    "{C:red,T:v_directors_cut}ディレクターズカット{}を持ってランを開始",
                    "{C:attention}ボスブラインド{}のリロール費用は{C:money}$5{}",
                    "どの{C:attention}ボスブラインド{}も",
                    "どの{C:attention}アンティ{}でも出現する",
                },
            },
        },
        Joker = {
            j_jokerhub_broker = {
                name = "ブローカー",
                text = {
                    "{C:attention}利息{}を受け取れない",
                    "本来得られる{C:attention}利息{}{C:money}$1{}につき",
                    "このジョーカーのチップ{C:chips}+#1#{}",
                    "{C:inactive}（現在のチップ {C:chips}+#2#{C:inactive}）",
                },
            },
            j_jokerhub_da_joki = {
                name = "ダ・ジョキ",
                text = {
                    "{C:attention}2{}ハンドをプレイするごとに",
                    "{C:attention}役{}が同じなら、このジョーカーの倍率{C:mult}+#2#{}",
                    "異なるなら倍率{C:mult}-#3#{}",
                    "{C:inactive}（現在の倍率 {C:mult}+#1#{}、{C:attention}#4#{C:inactive}）",
                },
            },
            j_jokerhub_demon_core = {
                name = "デーモンコア",
                text = {
                    "倍率{X:mult,C:white}X#1#{}",
                    "ハンドをプレイすると{C:green}#3#分の#2#{}の確率で",
                    "{C:attention}エターナル{}以外のジョーカーをすべて破壊",
                },
            },
            j_jokerhub_face_value = {
                name = "額面どおり",
                text = {
                    "プレイした{C:attention}フェイスカード{}は、得点するたびに",
                    "永続的に倍率{C:mult}+#1#{}を得る",
                },
            },
            j_jokerhub_forbidden_fruit = {
                name = "禁断の果実",
                text = {
                    "ハンドをプレイするたびに",
                    "このジョーカーの倍率の乗数が{X:mult,C:white}X#2#{}分増える",
                    "{C:attention}#3#{}が得点すると{S:1.1,C:red,E:2}自壊{}する",
                    "対象のランクはラウンドごとに変わる",
                    "{C:inactive}（現在の倍率 {X:mult,C:white}X#1#{C:inactive}）",
                },
            },
            j_jokerhub_gambit = {
                name = "ギャンビット",
                text = {
                    "{C:attention}食べ物系ジョーカー{}が1枚破壊されるごとに",
                    "このジョーカーの倍率の乗数が{X:mult,C:white}X#2#{}分増える",
                    "{C:inactive}（現在の倍率 {X:mult,C:white}X#1#{C:inactive}）",
                },
            },
            j_jokerhub_garbage_bag = {
                name = "ゴミ袋",
                text = {
                    "使わなかった{C:red}ディスカード{}を",
                    "次のラウンドに持ち越す",
                    "{C:inactive}（最大{C:red}#1#{C:inactive}回）{}",
                },
            },
            j_jokerhub_going_viral = {
                name = "大拡散",
                text = {
                    "ハンドをプレイするたびに、このジョーカーの倍率{C:mult}+#2#{}",
                    "パックやショップの",
                    "{C:attention}ジョーカー{}や{C:attention}消耗カード{}が",
                    "{C:green}#4#分の#3#{}の確率で{C:attention}大拡散{}に置き換わる",
                    "{C:inactive}（現在の倍率 {C:mult}+#1#{C:inactive}）",
                },
            },
            j_jokerhub_hudson = {
                name = "ハドソン",
                text = {
                    "左隣の{C:attention}ジョーカー{}の効果をコピーする",
                    "手札にある{C:attention}7{}が1枚あるごとに",
                    "このジョーカーが1回発動する",
                },
            },
            j_jokerhub_last_hurrah = {
                name = "最後の大勝負",
                text = {
                    "このジョーカーが{C:attention}一番右{}にあるとき",
                    "所持金{C:money}$#1#{}につき、得点した",
                    "{C:attention}最後{}のカードを{C:attention}1{}回再発動する",
                    "{C:inactive}（最大{C:attention}#2#{C:inactive}回）{}その後、所持金が{C:money}$0{}になる",
                    "{C:inactive}（現在の再発動回数 {C:attention}#3#{C:inactive}）",
                },
            },
            j_jokerhub_orb_of_confusion = {
                name = "混乱のオーブ",
                text = {
                    "倍率{X:mult,C:white}X#1#{}",
                    "各ラウンドの{C:attention}最初の手札{}を",
                    "裏向きで引く",
                },
            },
            j_jokerhub_rekoj = {
                name = "rekoJ",
                text = {
                    "得点したカードの{C:attention}ランク{}が{C:attention}2{}種類以上あり",
                    "{C:attention}ランク{}の低い順に並んでいれば",
                    "倍率{C:mult}+#1#{}",
                },
            },
            j_jokerhub_snowball_effect = {
                name = "雪だるま効果",
                text = {
                    "{C:attention}最初のハンド{}で{C:attention}ブラインド{}を倒すたびに",
                    "倍率の乗数が{X:mult,C:white}X#2#{}分増える",
                    "1ハンドで倒せなければリセット",
                    "{C:inactive}（現在の倍率 {X:mult,C:white}X#1#{C:inactive}）",
                },
            },
            j_jokerhub_twins = {
                name = "双子",
                text = {
                    "プレイしたハンドに{C:attention}フラッシュ{}と{C:attention}ペア{}が",
                    "両方含まれている場合",
                    "ランダムに選んだ{C:tarot}タロット{}1種を",
                    "空きスロットに最大{C:attention}2{}枚生成",
                },
            },
            j_jokerhub_union_member_card = {
                name = "組合員証",
                text = {
                    "所持している他の{C:attention}ジョーカー{}が",
                    "すべて{C:blue}コモン{}なら倍率{X:mult,C:white}X#1#{}",
                },
            },
            j_jokerhub_mulligan = {
                name = "マリガン",
                text = {
                    "プレイしたハンドの得点が",
                    "ブラインドの目標スコアの{C:attention}#1#%{}以下なら",
                    "残りハンド数{C:blue}+#2#{}",
                    "{C:inactive}（1ラウンドにつき最大{C:blue}#3#{C:inactive}ハンド）",
                },
            },
            j_jokerhub_syphon_funding = {
                name = "資金の吸い上げ",
                text = {
                    "{C:attention}ブラインド{}を選ぶと",
                    "このジョーカーより右のジョーカーすべてにデバフをかける",
                    "ラウンド終了時に、そのジョーカーの",
                    "売却額の{C:money}3倍{}をそれぞれ獲得",
                },
            },
            j_jokerhub_leap_frog = {
                name = "馬跳び",
                text = {
                    "左側の{C:attention}ジョーカー{}の枚数が",
                    "このラウンドの最多記録を更新すると",
                    "左側のジョーカー1枚につきチップ{C:chips}+#1#{}",
                    "{C:inactive}（このラウンドの最多記録 {C:attention}#2#{C:inactive}枚）",
                },
            },
            j_jokerhub_long_time_friends = {
                name = "長年の友",
                text = {
                    "{C:attention}エターナル{}のジョーカーを売却できる",
                    "{C:attention}エターナル{}のジョーカーを売るたびに",
                    "このジョーカーの倍率の乗数が{X:mult,C:white}X#2#{}分増える",
                    "{C:inactive}（現在の倍率 {X:mult,C:white}X#1#{C:inactive}）",
                },
            },
            j_jokerhub_amamiya = {
                name = "アマミヤ",
                text = {
                    "{C:attention}ボスブラインド{}を倒すたびに",
                    "倒した{C:attention}ボスブラインド{}に応じた{C:attention}能力{}を",
                    "このジョーカーが永続的に獲得する",
                },
            },
            j_jokerhub_metal_joker = {
                name = "メタルジョーカー",
                text = {
                    "{C:attention}スチールカード{}は{C:attention}ゴールドカード{}としても扱う",
                    "ゴールドカードもスチールカードとして扱う",
                },
            },
            j_jokerhub_lychee_dragon = {
                name = "ライチドラゴン",
                text = {
                    "プレイした{C:hearts}ハート{}のカードは、得点するたびに",
                    "そのカードの倍率の乗数が永続的に{X:mult,C:white}X#1#{}分増える",
                },
            },
        },
        Other = {
            jokerhub_pink_sticker = {
                name = "ピンクステッカー",
                text = {
                    "このジョーカーを使って",
                    "{C:attention}ピンクステーク{}でクリアした",
                },
            },
            jokerhub_stake_silver_sticker = {
                name = "シルバーステッカー",
                text = {
                    "このジョーカーを使って",
                    "{C:attention}シルバーステーク{}でクリアした",
                },
            },
            jokerhub_card_extra_mult = {
                text = { "追加倍率{C:mult}+#1#{}" },
            },
            jokerhub_amamiya_ability_bl_manacle = {
                name = "手枷の心",
                text = { "ハンドサイズ{C:attention}+#1#{}" },
            },
            jokerhub_amamiya_ability_bl_ox = {
                name = "雄牛の心",
                text = {
                    "最も多くプレイした{C:attention}ポーカーハンド{}を",
                    "プレイすると{C:money}$#1#{}を獲得",
                },
            },
            jokerhub_amamiya_ability_bl_wall = {
                name = "壁の心",
                text = { "倍率{X:mult,C:white}X#1#{}" },
            },
            jokerhub_amamiya_ability_bl_final_vessel = {
                name = "バイオレットベッセルの心",
                text = { "倍率{X:mult,C:white}X#1#{}" },
            },
            jokerhub_amamiya_ability_bl_arm = {
                name = "腕の心",
                text = {
                    "各ラウンドの{C:attention}最初{}にプレイした",
                    "{C:attention}ポーカーハンド{}のレベルを上げる",
                },
            },
            jokerhub_amamiya_ability_bl_club = {
                name = "クラブの心",
                text = { "プレイした{C:club}クラブ{}をすべて再発動する" },
            },
            jokerhub_amamiya_ability_bl_goad = {
                name = "ゴアドの心",
                text = { "プレイした{C:spades}スペード{}をすべて再発動する" },
            },
            jokerhub_amamiya_ability_bl_window = {
                name = "窓の心",
                text = { "プレイした{C:diamonds}ダイヤ{}をすべて再発動する" },
            },
            jokerhub_amamiya_ability_bl_head = {
                name = "頭の心",
                text = { "プレイした{C:hearts}ハート{}をすべて再発動する" },
            },
            jokerhub_amamiya_ability_bl_plant = {
                name = "プラントの心",
                text = { "プレイした{C:attention}フェイスカード{}をすべて再発動する" },
            },
            jokerhub_amamiya_ability_bl_pillar = {
                name = "柱の心",
                text = {
                    "プレイした{C:attention}カード{}は、得点するたびに",
                    "永続的にチップ{C:chips}+#1#{}を得る",
                },
            },
            jokerhub_amamiya_ability_bl_water = {
                name = "水の心",
                text = { "各ラウンドのディスカード{C:red}+#1#{}" },
            },
            jokerhub_amamiya_ability_bl_needle = {
                name = "ニードルの心",
                text = { "各ラウンドのハンド{C:blue}+#1#{}" },
            },
            jokerhub_amamiya_ability_bl_final_leaf = {
                name = "青々とした葉の心",
                text = { "ジョーカースロット{C:dark_edition}+#1#{}" },
            },
            jokerhub_amamiya_ability_bl_tooth = {
                name = "歯の心",
                text = { "得点したカード1枚につき{C:money}$#1#{}を獲得" },
            },
            jokerhub_amamiya_ability_bl_flint = {
                name = "フリントの心",
                text = {
                    "カードの得点計算前に",
                    "倍率{X:mult,C:white}X#1#{}、チップ{X:chips,C:white}X#2#{}",
                },
            },
            jokerhub_amamiya_ability_bl_final_bell = {
                name = "セルリアンベルの心",
                text = {
                    "得点したカードから{C:attention}ランダム{}に1枚選び",
                    "追加で{C:attention}#1#{}回発動する",
                },
            },
            jokerhub_amamiya_ability_bl_ReduxArcanum_bane = {
                name = "ベインの心",
                text = { "消耗カードスロット{C:attention}+#1#{}" },
            },
            jokerhub_amamiya_ability_unknown = {
                name = "未知のブラインドの心",
                text = { "チップ{C:chips}+#1#{}" },
            },
            jokerhub_amamiya_ability_bl_hook = {
                name = "フックの心",
                text = {
                    "ちょうど{C:attention}#1#{}枚を{C:attention}ディスカード{}すると",
                    "残りディスカード回数{C:red}+1{}",
                    "{C:inactive}（1ラウンドにつき最大{C:red}+#2#{C:inactive}回）",
                },
            },
            jokerhub_amamiya_ability_bl_psychic = {
                name = "サイキックの心",
                text = { "{C:attention}プレイしたカード{}はすべて得点する" },
            },
            jokerhub_amamiya_ability_bl_mouth = {
                name = "口の心",
                text = {
                    "このラウンドですでにプレイした",
                    "{C:attention}ポーカーハンド{}なら倍率{X:mult,C:white}X#1#{}",
                },
            },
            jokerhub_amamiya_ability_bl_eye = {
                name = "目の心",
                text = {
                    "このラウンドでまだプレイしていない",
                    "{C:attention}ポーカーハンド{}なら倍率{X:mult,C:white}X#1#{}",
                },
            },
            jokerhub_amamiya_ability_bl_final_heart = {
                name = "クリムゾンハートの心",
                text = {
                    "{C:attention}#1#{}を再発動する",
                    "対象のジョーカーはハンドをプレイするたびに変わる",
                },
            },
            jokerhub_amamiya_ability_bl_poke_cgoose = {
                name = "シャルトルーズ・チェンバーの心",
                text = { "エネルギー上限{C:pink}+#1#{}" },
            },
            jokerhub_amamiya_ability_bl_house = {
                name = "家の心",
                text = {
                    "{C:attention}最初に引いた{}カードが手札に残っていれば",
                    "残っているカード1枚につき倍率{X:mult,C:white}X#1#{}",
                },
            },
            jokerhub_amamiya_ability_bl_fish = {
                name = "魚の心",
                text = {
                    "ラウンドの{C:attention}最後のハンド{}で",
                    "プレイしたカードをすべて再発動する",
                },
            },
            jokerhub_amamiya_ability_bl_wheel = {
                name = "ホイールの心",
                text = {
                    "ラウンド終了時、手札のカードが",
                    "{C:green}#1#分の#2#{}の確率で{C:dark_edition}フォイル{}、",
                    "{C:dark_edition}ホログラム{}、{C:dark_edition}ポリクローム{}のいずれかになる",
                },
            },
            jokerhub_amamiya_ability_bl_mark = {
                name = "マークの心",
                text = {
                    "ラウンド終了時、手札の{C:attention}フェイスカード{}1枚につき",
                    "{C:money}$#1#{}を獲得",
                },
            },
            jokerhub_amamiya_ability_bl_final_acorn = {
                name = "琥珀色のドングリの心",
                text = {
                    "デッキの上から順に",
                    "{V:1}#2#{}の{C:attention}#1#{}、{V:2}#4#{}の{C:attention}#3#{}、",
                    "{V:3}#6#{}の{C:attention}#5#{}、{V:4}#8#{}の{C:attention}#7#{}、",
                    "{V:5}#10#{}の{C:attention}#9#{}",
                },
            },
            jokerhub_amamiya_ability_bl_mxms_rot = {
                name = "ロットの心",
                text = {
                    "プレイしたカードはそれぞれ",
                    "{C:green}#1#分の#2#{}の確率で追加で{C:attention}2回{}発動する",
                },
            },
            jokerhub_amamiya_ability_bl_mxms_grinder = {
                name = "グラインダーの心",
                text = {
                    "ラウンドの{C:attention}最初のハンド{}で得点したカードから",
                    "ランダムに1枚選び、ランダムな{C:attention}シール{}を付ける",
                },
            },
        },
        Stake = {
            stake_jokerhub_pink = {
                name = "ピンクステーク",
                text = {
                    "{C:attention}アンティ9{}で{C:attention}最終ボスブラインド{}が出現し、",
                    "倒すとランをクリアする",
                    "{s:0.8}パープルステーク以下の効果も適用",
                },
            },
            stake_jokerhub_stake_silver = {
                name = "シルバーステーク",
                text = {
                    "{C:attention}アンティ{}ごとの",
                    "必要スコアの上昇幅がさらに大きくなる",
                    "{s:0.8}ピンクステーク以下の効果も適用",
                },
            },
        },
    },
    misc = {
        challenge_names = {
            c_jokerhub_covid_19 = "COVID-19",
            c_jokerhub_another_mans_treasure = "捨てる神あれば拾う神あり",
            c_jokerhub_dinner_time = "夕食の時間",
        },
        dictionary = {
            k_jokerhub_syphon = "吸い上げた！",
            k_jokerhub_sealed = "シールを付けた！",
        },
        v_dictionary = {
            a_discards = "ディスカード+#1#",
        },
        v_text = {
            ch_c_jh_chef_ignores_bans = {
                "{C:attention}シェフ{}は使用禁止の食べ物系ジョーカーも生成できる",
            },
        },
    },
}
