-- Paperback v0.9.0 の日本語ローカライズ
return {
    descriptions = {
        Back = {
            b_paperback_antique = {
                name = "アンティークデッキ",
                text = {
                    "ショップに{C:tarot}アルカナパック{}が出現しない",
                    "{C:paperback_minor_arcana}小アルカナパック{}の出現率が{C:attention}3倍",
                },
                unlock = {
                    "すべての{C:paperback_minor_arcana}小アルカナ{}カードを発見する",
                },
            },
            b_paperback_commander = {
                name = "司令官のデッキ",
                text = {
                    "可能な場合、{C:attention}一番左のジョーカー{}が",
                    "{C:attention}2回{}発動する",
                    "{C:attention}ブラインド{}中はジョーカーを{C:attention}移動できない{}",
                },
                unlock = {
                    "デッキのカードを{C:attention}#1#{}枚以上にする",
                },
            },
            b_paperback_dreamer = {
                name = "ドリーマーデッキ",
                text = {
                    "{C:paperback_temporary}一時的{}な",
                    "{C:paperback_minor_arcana,T:c_paperback_apostle_of_wands}#1#{}を持ってランを開始",
                    "最初のブラインドは{C:attention}ビッグブラインド",
                },
                unlock = {
                    "{V:1}#1#{}ステッカー付きのジョーカーを",
                    "{C:attention}#2#{}枚以上持つ",
                },
            },
            b_paperback_enchained = {
                name = "鎖のデッキ",
                text = {
                    "このランでは、全{C:attention}ジョーカー{}のうち",
                    "ランダムに選ばれた{C:attention}25%{}のみ出現する",
                    "{C:attention,T:v_overstock_norm}#1#{}を持ってランを開始",
                },
                unlock = {
                    "{C:attention}すべて{}のジョーカーをアンロックする",
                },
            },
            b_paperback_paper = {
                name = "ペーパーデッキ",
                text = {
                    "{C:legendary}Paperback{C:attention}のジョーカー{}の出現率が{C:attention}3倍",
                    "ジョーカー{C:attention,T:j_paperback_shopping_center}#1#{}を持ってランを開始",
                },
            },
            b_paperback_passionate = {
                name = "情熱のデッキ",
                text = {
                    "{C:attention}ボスブラインド{}を倒すたびに",
                    "{C:attention,T:tag_paperback_high_risk}#1#{}を獲得",
                    "{C:money}利息{}を獲得できない",
                },
                unlock = {
                    "いずれかのデッキで",
                    "{V:1}#1#{}以上の難易度のランに勝利する",
                },
            },
            b_paperback_potters = {
                name = "陶工のデッキ",
                text = {
                    "最初からすべてのカードが{C:attention}セラミックカード{}",
                    "ブラインド{C:attention}開始時{}に",
                    "{C:Money}所持金{}が{C:red}0{}になる",
                },
                unlock = {
                    "カードを{C:attention}#1#{}枚破壊する {C:inactive}[#2#]{}",
                },
            },
            b_paperback_proud = {
                name = "プラウドデッキ",
                text = {
                    "{C:hearts}ハート{}、{C:diamonds}ダイヤ{}、{C:spades}スペード{}、",
                    "{C:clubs}クラブ{}、{C:paperback_crowns}クラウン{}、{C:paperback_stars}スター{}の",
                    "全カードでランを開始",
                },
                unlock = {
                    "{C:attention}スペクトラム{}をプレイする",
                },
            },
            b_paperback_shimmering = {
                name = "きらめくデッキ",
                text = {
                    "所持している{C:attention}罪{}の種類ごとに",
                    "消耗カードスロット{C:attention}+#1#{}",
                    "ジョーカースロット{C:red}#2#{}",
                    "{C:paperback_ego_gift}E.G.Oギフト抽出パック{}の出現率が{C:attention}5倍",
                },
                unlock = {
                    "{C:paperback_ego_gift}E.G.Oギフト{}を{C:attention}#1#{}個売却する",
                },
            },
            b_paperback_silver = {
                name = "シルバーデッキ",
                text = {
                    "バウチャー{C:paperback_minor_arcana,T:v_paperback_celtic_cross}#1#{}と",
                    "{C:paperback_minor_arcana,T:c_paperback_nine_of_cups}#2#{}を持ってランを開始",
                },
                unlock = {
                    "{C:paperback_minor_arcana}小アルカナ{}カードを{C:attention}#1#{}枚発見する",
                },
            },
            b_paperback_sudsy = {
                name = "泡立ちデッキ",
                text = {
                    "{C:attention}ボスブラインド{}を倒すたびに",
                    "ジョーカースロット{C:attention}#1#{}",
                    "手札サイズ{C:attention}#2#{}",
                    "{C:inactive,s:0.85}（手札サイズの減少は合計#3#まで）",
                },
                unlock = {
                    "{V:1}#2#{}の難易度で",
                    "{C:attention}#1#{}種類以上のデッキでランに勝利する",
                },
            },
        },
        Blind = {
            bl_paperback_coda = {
                name = "コーダ",
                text = {
                    "カードとジョーカーを",
                    "移動できない",
                },
            },
            bl_paperback_flat = {
                name = "フラット",
                text = {
                    "プレイしたカードの",
                    "ランクが下がる",
                },
            },
            bl_paperback_glissando = {
                name = "グリッサンド",
                text = {
                    "このラウンドで得点した最高ランクより",
                    "低いランクのカードはデバフを受ける",
                },
            },
            bl_paperback_half = {
                name = "二分音符",
                text = {
                    "表示されている確率が",
                    "すべて半分になる",
                },
            },
            bl_paperback_hold = {
                name = "ホールド",
                text = {
                    "カードはすべて裏向き",
                    "裏向きでプレイしたカードは",
                    "表向きで引き直す",
                    "{s:0.8}ハンド+#1#{}",
                },
            },
            bl_paperback_misty_bass = {
                name = "ミスティ・バス",
                text = {
                    "すべてのジョーカーをシャッフルし",
                    "一番左のジョーカーを固定する",
                },
            },
            bl_paperback_natural = {
                name = "ナチュラル",
                text = {
                    "最低レベルのポーカーハンドをプレイする",
                    "それ以外のハンドでは",
                    "得点するカードがデバフを受ける",
                },
            },
            bl_paperback_quarter = {
                name = "四分音符",
                text = {
                    "カードが#2#分の#1#の確率で",
                    "デバフを受ける",
                },
            },
            bl_paperback_rest = {
                name = "休符",
                text = {
                    "数字札を引くと",
                    "#2#分の#1#の確率で裏向きになる",
                },
            },
            bl_paperback_sharp = {
                name = "シャープ",
                text = {
                    "プレイしたカードの",
                    "ランクが上がる",
                },
            },
            bl_paperback_taupe_treble = {
                name = "トープ・トレブル",
                text = {
                    "強化されていないカードは",
                    "デバフを受ける",
                },
            },
            bl_paperback_whole = {
                name = "全音符",
                text = {
                    "このアンティで得点していない",
                    "ランクのカードはデバフを受ける",
                },
            },
        },
        Edition = {
            e_paperback_dichrome = {
                name = "ダイクローム",
                text = {
                    "{C:attention}ブラインド{}を選択すると",
                    "{C:blue}ハンド{}か{C:red}ディスカード{}の残り回数が",
                    "少ない方に{C:attention}+#1#{}",
                },
            },
            e_paperback_dichrome_playing_card = {
                name = "ダイクローム",
                text = {
                    "このカードを{C:attention}引く{}と",
                    "{C:blue}ハンド{}か{C:red}ディスカード{}の残り回数が",
                    "少ない方に{C:attention}+#1#{}",
                },
            },
        },
        Enhanced = {
            m_paperback_antique = {
                name = "アンティークカード",
                text = {
                    "チップ{X:chips,C:white}X#1#{}",
                    "得点するハンドに含まれていれば",
                    "チップの乗数が{X:chips,C:white}X#2#{}上昇",
                },
            },
            m_paperback_bandaged = {
                name = "包帯カード",
                text = {
                    "{C:attention}両隣{}のカードを再発動させる",
                    "得点時に{C:green}#2#分の#1#{}の確率で{C:red}壊れる{}",
                },
            },
            m_paperback_ceramic = {
                name = "セラミックカード",
                text = {
                    "得点時に{C:money}$#1#{}～{C:money}$#2#{}を獲得",
                    "プレイ中または手札にあるとき",
                    "最終{C:mult}倍率{}が{C:chips}チップ{}を{C:attention}上回る{}と{C:red}割れる{}",
                },
            },
            m_paperback_domino = {
                name = "ドミノカード",
                text = {
                    "このラウンドでプレイまたはディスカードした",
                    "カードのランク1種類につき倍率{C:mult}+#1#{}",
                    "{C:inactive}（現在の倍率 {C:mult}+#2#{C:inactive}）",
                },
            },
            m_paperback_sleeved = {
                name = "スリーブカード",
                text = {
                    "{C:attention}デバフ{}を受けず、{C:attention}裏向き{}にならない",
                    "破壊されると{C:money}$#1#{}を獲得",
                },
            },
            m_paperback_soaked = {
                name = "ずぶ濡れカード",
                text = {
                    "得点時に{C:attention}手札{}のカードも",
                    "それぞれの{C:chips}チップ{}を加える",
                    "{C:red}ディスカード{}すると",
                    "{C:green}#2#分の#1#{}の確率で{C:red}破壊{}される",
                },
            },
            m_paperback_stained = {
                name = "染み付きカード",
                text = {
                    "ハンドをプレイした後も{C:attention}手札に残っていれば{}",
                    "得点したカードに永続的に倍率{C:mult}+#1#{}",
                },
            },
            m_paperback_wrapped = {
                name = "包みカード",
                text = {
                    "得点時に{C:money}$#1#{}を獲得",
                    "ランクもスートも持たない",
                },
            },
        },
        Joker = {
            j_paperback_56_leaf_clover = {
                name = "56 葉のクローバー",
                text = {
                    "{C:attention}ボス{}ブラインドの勝利ハンドが{C:clubs}クラブ{}のみを得点した場合は、",
                    "{C:dark_edition}ネガティブ{}{C:attention}タグ{}を生成する",
                },
                unlock = {
                    "1 回のランで{C:attention,E:1}#1#{}{C:clubs,E:1}#2#{}をスコアする",
                },
            },
            j_paperback_57_leaf_clover = {
                name = "57 葉のクローバー",
                text = {
                    "リストされたすべての確率に対して{C:green}+#1#{}、ブラインドがこの",
                    "{C:attention}アンティ{}を破ったごとに{C:green}+#2#{}を獲得する",
                },
                unlock = {
                    "1 回のランで{C:attention,E:1}#1#{}{C:clubs,E:1}#2#{}をスコアする",
                },
            },
            j_paperback_a_balatro_movie = {
                name = "バラトロ映画",
                text = {
                    "プレイしたハンドが{C:attention}前のハンド{}と{C:attention}同じ{}場合、{C:money}$#2#{}を獲得する",
                    "{C:inactive}（最後にプレイした時間: {C:attention}#1#{}）{}",
                },
                unlock = {
                    "最もプレイされた最も少ないハンド{C:attention,E:1}次{}よりも 1 つのハンド{C:attention,E:1}#1#+{}を",
                    "多くプレイしてランに勝利する",
                },
            },
            j_paperback_alert = {
                name = "アラート",
                text = {
                    "プレイされた手札が{C:attention}フェイスカード{} 1 枚の場合、それを破壊する",
                    "{C:inactive}(#1#/#2#)?",
                },
                unlock = {
                    "片手で{C:attention,E:1}#1# のフェイスカード{}をスコア",
                },
            },
            j_paperback_ampersand = {
                name = "&",
                text = {
                    "得点したハンドにダークスートと{C:paperback_light_suit}ライトスート{}の両方が含まれ",
                    "ている場合は、それぞれの{C:attention}#1#{}回の最初のスートを再発動する",
                },
                unlock = {
                    "{C:attention,E:1}#2#{}{C:paperback_light_suit,E:1}ライトスート{}および{C:attention,E:1}#2#{}{C:paperback_dark_suit,E:1}ダークスート{}を含む{C:attention,E:1}#1#{}をプレイする",
                },
            },
            j_paperback_angel_investor = {
                name = "エンジェル投資家",
                text = {
                    "ブラインドをスキップするか{C:attention}ボスブラインド{}を倒すと{C:money}エンジェル",
                    "{C:money}投資タグ{}が与えられます",
                },
                unlock = {
                    "1 ラウンドで{C:money,E:1}$#1#{}ドルの利息を獲得",
                },
            },
            j_paperback_aperol = {
                name = "アペロール",
                text = {
                    "次の{C:attention}#1#{}がプレーして得点した{V:1}#2#{}が得点すると、{C:money}$#3#{}が永久に",
                    "獲得される",
                },
                unlock = {
                    "{C:attention,E:1}#1#{}{C:diamonds,E:1}#2#{}を 1 回の実行でフラッシュする",
                },
            },
            j_paperback_apple = {
                name = "りんご",
                text = {
                    "{C:attention}消耗カード{}を購入すると、{C:green}#2#分の#1#{}に{C:dark_edition}ネガティブ{}コピーを生成する",
                    "チャンスがあり、{C:green}#4#分の#3#{}に{S:1.1,C:red,E:2}自壊する{}の可能性がある",
                },
            },
            j_paperback_arayashiki = {
                name = "阿頼耶識",
                text = {
                    "ブラインドをクリアすると、現在何も所有されていない場合、",
                    "{C:paperback_ego_gift}E.G.Oギフト{}は{C:green}#2#分の#1#{}の確率で{C:dark_edition}ネガティブ{}{C:paperback_minor_arcana}#3#{}を生成する",
                },
                unlock = {
                    "1 回の実行で{C:paperback_minor_arcana,E:1}#1#{}{C:attention,E:1}#2#{}回使用する",
                },
            },
            j_paperback_as_above_so_below = {
                name = "上と同様、下も同様",
                text = {
                    "{C:attention}5{}カードのポーカーハンドを{C:attention}使徒{}とプレイすると{C:purple}タロット{}カードが",
                    "生成される。ポーカーハンドに{C:attention}ストレート{}も含まれている場合は、",
                    "代わりに{C:spectral}スペクトル{}カードが生成される",
                    "{C:inactive}（空きスロットが必要）{}",
                },
                unlock = {
                    "{C:attention,E:1}携挙{}をプレイする",
                },
            },
            j_paperback_attacking_vertical = {
                name = "垂直に攻撃する",
                text = {
                    "{C:attention}#1#{}と{C:attention}#2#{}がスコアを獲得すると、{X:mult,C:white}X#3#{}の倍率が与えられます。",
                    "{C:attention}ボスブラインド{}をクリアすると、{X:mult,C:white}X#4#{}の倍率が増える",
                },
                unlock = {
                    "1 ラウンドで{E:1,C:attention}#1#{}{E:1,C:attention}9s{}または{E:1,C:attention}5s{}をスコアする",
                },
            },
            j_paperback_aurora_borealis = {
                name = "オーロラ",
                text = {
                    "このジョーカーは、エディション化されたジョーカー カード",
                    "{s:0.9,C:dark_edition}ネガティブ{}{s:0.9,C:inactive}除外される{}ごとに{X:mult,C:white}X#1#{}の倍率を獲得する",
                    "{C:inactive}（現在{X:mult,C:white}X#2#{}{C:inactive}倍率）{}",
                },
                unlock = {
                    "少なくとも{E:1,C:attention}#1#{}{C:dark_edition,E:1}ポリクローム{}ジョーカーを持っている",
                },
            },
            j_paperback_autumn_leaves = {
                name = "紅葉",
                text = {
                    "{C:diamonds}#1#{}は得点されると、{X:mult,C:white}X#2#{}の倍率を加える",
                    "連続して得点するたびに{X:mult,C:white}X#3#{}倍率が増える{C:diamonds}#4#{}",
                    "{C:inactive}（ハンドをプレイするたびにリセットされる）{}",
                },
            },
            j_paperback_b_soda = {
                name = "ビーソーダ",
                text = {
                    "ブラインドが選択されている場合、{C:blue}0{}ハンドが残っている状態で",
                    "ブラインドがクリアされた場合、{C:blue}+#1#{}ハンド消費を獲得する",
                },
            },
            j_paperback_backpack = {
                name = "バックパック",
                text = {
                    "{C:money}ショップ{}に無料の{C:attention}バフーンパック{}が1つ追加される",
                },
                unlock = {
                    "1 回の実行で{C:attention,E:1}#1#{}{C:attention,E:1}道化パック{}を購入する",
                },
            },
            j_paperback_bamboo_stick = {
                name = "竹の棒",
                text = {
                    "{X:mult,C:white}X#1#{}別の「スティック」ジョーカーを持っている場合の倍率",
                    "{C:inactive}（現在{X:mult,C:white}X#2#{}{C:inactive}倍率）{}",
                },
                unlock = {
                    "食べる{C:attention,E:1}#1#{}",
                },
            },
            j_paperback_banana_man = {
                name = "バナナマン",
                text = {
                    "ジョーカーは{C:green}#2#分の#1#{}の確率で",
                    "倍率{X:mult,C:white}X#3#{}を与える",
                },
                unlock = {
                    "ラン中に{C:attention,E:1}キャベンディッシュ{}を獲得する",
                },
            },
            j_paperback_basic_energy = {
                name = "ジョーカーの基本エネルギー",
                text = {
                    "{C:attention}消耗カード{}を使用すると、{C:green}#2#分の#1#{}の確率でコピーが作成さ",
                    "れる",
                    "（コピーのコピーはできません）",
                    "{C:inactive}（空きスロットが必要）{}",
                },
                unlock = {
                    "{C:dark_edition,E:1}ネガティブ{}{C:attention,E:1}消耗カード{}を取得する",
                },
            },
            j_paperback_bergentrucking = {
                name = "ベルゲントリュッキング",
                text = {
                    "{C:attention}得点したハンド{}に{C:hearts}#3#{}が含まれ、かつ{C:paperback_crowns}#5#{}が含まれている場合、",
                    "得点{C:paperback_crowns}#1#{}は{X:mult,C:white}X#2#{}の倍率を獲得し、得点{C:hearts}#4#{}は破棄される",
                },
                unlock = {
                    "{C:hearts,E:1}ハート{}の{C:attention,E:1}エース{}と{C:paperback_crowns,E:1}クラウン{}の{C:attention,E:1}王{}を含むハンドをプレイする",
                },
            },
            j_paperback_better_call_jimbo = {
                name = "ベター・コール・ジンボ",
                text = {
                    "{X:mult,C:white}X#1#{}が所有する{C:money}$#2#{}ごとに倍率が増加する。 利息は発生しませ",
                    "ん",
                    "{C:inactive}（現在{X:mult,C:white}X#3#{}{C:inactive}倍率）{}",
                },
                unlock = {
                    "1 回のキャッシュアウトで{E:1,C:money}$#1#{}を獲得",
                },
            },
            j_paperback_bicycle = {
                name = "自転車",
                text = {
                    "{C:attention}#1#{}はチップ値に等しい{C:mult}倍率{}を加える",
                },
                unlock = {
                    "{C:attention,E:1}ワイルドクイーン{}をプレイする",
                },
            },
            j_paperback_big_misser = {
                name = "ビッグミッサー",
                text = {
                    "{X:mult,C:white}X#1#{}空の消耗カードスロットごとの倍率",
                    "{C:inactive}（現在{X:mult,C:white}X#2#{}{C:inactive}倍率）{}",
                },
                unlock = {
                    "{C:attention,E:1}これまで{}が{C:attention,E:1}消耗カード{}にカードを持たずにランで勝利する",
                },
            },
            j_paperback_birches = {
                name = "白樺",
                text = {
                    "{C:paperback_stars}#1#{}は得点されると、{X:mult,C:white}X#2#{}の倍率を加える",
                    "連続して得点するたびに{X:mult,C:white}X#3#{}倍率が増える{C:paperback_stars}#4#{}",
                    "{C:inactive}（ハンドをプレイするたびにリセットされる）{}",
                },
            },
            j_paperback_bismuth = {
                name = "ビスマス",
                text = {
                    "{V:1}#1#{}と{V:2}#2#{}をプレイすると、{C:green}#4#分の#3#{}で{C:dark_edition}フォイル{}、{C:dark_edition}ホログラム{}、",
                    "または{C:dark_edition}ポリクローム{}を獲得する可能性がある",
                },
                unlock = {
                    "{C:paperback_crowns,E:1}光沢のある{}{C:paperback_stars,E:1}スート{}を取得する",
                },
            },
            j_paperback_black_forest_cake = {
                name = "黒い森のケーキ",
                text = {
                    "いずれかのカードまたはジョーカーが{C:attention}破壊{}された場合、この",
                    "ジョーカーはブラインド{C:red,E:1}自壊する{}を倒すごとに{C:mult}+#2#{}の倍率を獲得する",
                    "{C:inactive}（現在{C:mult}+#1#{}{C:inactive}倍率）{}",
                },
                unlock = {
                    "デッキ内の{C:attention,E:1}フェイスカード{}を{C:attention,E:1}#1#{}のみにする",
                },
            },
            j_paperback_black_knife = {
                name = "ブラックナイフ",
                text = {
                    {
                        "{C:attention}#1#{}[{C:inactive}#2#{}] 個の破壊された{C:paperback_light_suit}ライトスート{}ごとに、ランダムな",
                        "{C:dark_edition}ネガティブ{}{C:attention}ジョーカー{}を生成する",
                    },
                    {
                        "{C:paperback_light_suit}ライトスート{}のカードが得点すると",
                        "{C:green}#4#分の#3#{}の確率でランダムなジョーカーを1枚{C:attention}破壊{}する",
                    },
                },
                unlock = {
                    "スコア{C:attention,E:1}#1#{}{C:paperback_stars}星{}",
                    "{C:inactive}(#2#)",
                },
            },
            j_paperback_black_rainbows = {
                name = "黒い虹",
                text = {
                    "{C:spades}#3#{}と{C:clubs}#4#{}には、{C:green}#2#分の#1#{}で{C:dark_edition}ポリクローム{}になる可能性がある",
                },
                unlock = {
                    "{C:dark_edition,E:1}ポリクローム{}{C:attention,E:1}王{}または{C:attention,E:1}ジャック{}を取得する",
                },
            },
            j_paperback_black_star = {
                name = "ブラックスター",
                text = {
                    "得点した{C:paperback_dark_suit}ダークスート{}は{V:1}#1#{}になる",
                },
                unlock = {
                    "{C:paperback_stars,E:1}星{}カードを取得する",
                },
            },
            j_paperback_blade_dance = {
                name = "刃の舞",
                text = {
                    "{C:attention}ブラインド{}を選択すると",
                    "ランダムな{C:paperback_temporary}一時的{}な{C:attention}#2#{}を",
                    "手札に{C:attention}#1#{}枚加える",
                },
                unlock = {
                    "{C:attention,E:1}スチールカード{}を{C:attention,E:1}#1#{}枚含む",
                    "ハンドをプレイする",
                },
            },
            j_paperback_blazing_trails = {
                name = "ブレイジング・トレイルズ",
                text = {
                    "捨て札にちょうど{C:attention}#1#{}のカードがある場合、{C:attention}一番右{}のカードを",
                    "破壊する",
                },
                unlock = {
                    "{C:paperback_stars,E:1}星{}カードを破壊する",
                },
            },
            j_paperback_blood_rain = {
                name = "血の雨",
                text = {
                    "{C:attention}#1#{}は{C:chips}チップ{}の代わりに",
                    "手札にある同カードの{C:attention}ランク{}に等しい",
                    "{C:mult}倍率{}を加える",
                },
            },
            j_paperback_blue_bonnets = {
                name = "ブルーボンネット",
                text = {
                    "{C:clubs}#1#{}は得点されると、{X:mult,C:white}X#2#{}の倍率を加える",
                    "連続して得点するたびに{X:mult,C:white}X#3#{}倍率が増える{C:clubs}#4#{}",
                    "{C:inactive}（ハンドをプレイするたびにリセットされる）{}",
                },
            },
            j_paperback_blue_curacao = {
                name = "ブルーキュラソー",
                text = {
                    "次の{C:attention}#1#{}がプレイして得点した{V:1}#2#{}が得点すると、永続的に{C:mult}+#3#{}の",
                    "倍率が増える",
                },
                unlock = {
                    "{C:attention,E:1}#1#{}{C:clubs,E:1}#2#{}を 1 回の実行でフラッシュする",
                },
            },
            j_paperback_blue_marble = {
                name = "ブルーマーブル",
                text = {
                    "惑星カードが使用されると、このジョーカーは{C:mult}+#1#{}倍率を",
                    "獲得する",
                    "{C:inactive}（現在{C:mult}+#2#{}{C:inactive}倍率）{}",
                },
                unlock = {
                    "{C:attention,E:1}#1#{}{C:clubs,E:1}#2#{}を 1 回の実行でフラッシュする",
                },
            },
            j_paperback_blue_star = {
                name = "ブルースター",
                text = {
                    "{V:1}#2#{}が得点すると{X:chips,C:white}X#1#{}チップを獲得{V:2}#4#{}が得点すると{X:chips,C:white}X#3#{}チップを",
                    "失う",
                    "{C:inactive}（現在{X:chips,C:white}X#5#{}チップ）{}",
                },
                unlock = {
                    "{C:clubs,E:1}クラブ{}と{C:paperback_stars,E:1}星{}のみで構成されるデッキを生成する",
                },
            },
            j_paperback_book_of_life = {
                name = "ブック・オブ・ライフ",
                text = {
                    "ブラインドをスキップまたはクリアした後、{C:green}#2#分の#1#{}でその",
                    "{C:attention}タグ{}の{C:attention}コピー{}を生成するチャンス",
                },
                unlock = {
                    "{C:attention,E:1}#1#{}ジョーカーを 1 回の実行で売却する",
                },
            },
            j_paperback_book_of_vengeance = {
                name = "復讐の書",
                text = {
                    "{C:attention}ボスブラインド{}を倒した後、自分自身とその左側の{C:attention}ジョーカー{}を",
                    "破壊し、その右側に{C:attention}ジョーカー{}のコピーを生成する",
                },
                unlock = {
                    "{C:attention,E:1}ショーダウンブラインド{}に失点する",
                },
            },
            j_paperback_boundary_of_death = {
                name = "死の境界線",
                text = {
                    "{C:attention}#1#{}は{C:green}#3#分の#2#{}の確率で",
                    "追加で倍率{C:red}+#4#{}を与える",
                },
                unlock = {
                    "{C:attention,E:1}倍率4{}をプレイする",
                },
            },
            j_paperback_buckshot = {
                name = "バックショット",
                text = {
                    "プレイしたハンドに{C:attention}ツーペア{}が含まれている場合、得点ハンドの",
                    "ランダムなランクのカードをすべて{C:attention}破壊{}し、それぞれのカードで",
                    "{C:money}$#1#{}を獲得する",
                },
                unlock = {
                    "{E:1,C:attention}#1#{}を最もプレイしたハンドとしてランで勝利する",
                },
            },
            j_paperback_burning_pact = {
                name = "燃える契約",
                text = {
                    "{C:attention}ディスカード{}したカードが{C:attention}#1#{}枚だけなら",
                    "追加で{C:attention}#2#{}枚引く",
                },
                unlock = {
                    "ボスブラインド{C:attention,E:1}ザ・サーペント{}を",
                    "{C:attention,E:1}無効化{}せずに倒す",
                },
            },
            j_paperback_cakepop = {
                name = "ケーキポップ",
                text = {
                    "得点{C:hearts}#4#{}与える{C:mult}+#1#{}倍率{C:green}#3#分の#2#{}ラウンド終了時にこのカードが",
                    "食べられる確率",
                },
            },
            j_paperback_calling_card = {
                name = "テレホンカード",
                text = {
                    "あなたが{C:attention}ボスブラインド{}を倒すか、その{C:attention}能力{}を発動するたびに、",
                    "このジョーカーは{X:red,C:white}X#1#{}倍率を獲得する",
                    "{C:inactive}（現在{X:red,C:white}X#2#{}{C:inactive}倍率）{}",
                },
                unlock = {
                    "{C:attention,E:1}クリムゾンハート{}ボスブラインドを無効化",
                },
            },
            j_paperback_caramel_apple = {
                name = "キャラメルアップル",
                text = {
                    "得点{C:clubs}#4#{}与える{C:mult}+#1#{}倍率{C:green}#3#分の#2#{}ラウンド終了時にこのカードが",
                    "食べられる確率",
                },
            },
            j_paperback_card_sleeve = {
                name = "カードスリーブ",
                text = {
                    "このカードを売ると右の{C:attention}ジョーカー{}が{C:attention}エターナル{}になる",
                },
                unlock = {
                    "{C:attention,E:1}エターナル{}ジョーカーを持つ",
                },
            },
            j_paperback_cardboard_box = {
                name = "段ボール箱",
                text = {
                    "ラウンドの最初にプレイしたハンドにスコア{C:attention}#3#{}が含まれている",
                    "場合、すべての{C:attention}ジョーカー{}に売却額の{C:money}$#1#{}を追加する。",
                    "{C:attention}フードジョーカー{}が破壊されると{C:money}$#2#{}ずつ増える",
                },
                unlock = {
                    "少なくとも{V:1,E:1}#1#{}難易度のデッキでランに勝利する",
                },
            },
            j_paperback_cast_iron = {
                name = "鋳鉄",
                text = {
                    "デッキ全体の{C:attention}#2#{}{C:attention}#3#{}ごとに{C:attention}+#6#{}のハンドサイズを加える",
                    "（現在{C:attention}+#4#{}の手のサイズ、最大{C:inactive}#5#{}）",
                },
                unlock = {
                    "デッキに{C:attention,E:1}#1#{}{C:attention,E:1}#2#{}を入れてください",
                },
            },
            j_paperback_champagne = {
                name = "シャンパン",
                text = {
                    "{C:attention}ボスブラインド{}中、カードが得点すると{C:money}$#1#{}を獲得",
                    "{C:attention}シール{}付きのカードなら獲得額は{C:attention}2倍{}",
                    "残り{C:attention}#2#{}ラウンドで消費される",
                },
                unlock = {
                    "{C:attention,E:1}王{}または{C:attention,E:1}女王{}を{C:attention,E:1}シール{}で得点する",
                },
            },
            j_paperback_chaplin = {
                name = "チャップリン",
                text = {
                    "{C:attention}バウチャー{}を購入すると",
                    "{C:attention}アップグレード版{}も獲得",
                },
                unlock = {
                    "{E:1,s:1.3}?????",
                },
            },
            j_paperback_charred_marshmallow = {
                name = "焦げたマシュマロ",
                text = {
                    "得点{C:spades}#4#{}与える{C:mult}+#1#{}倍率{C:green}#3#分の#2#{}ラウンド終了時にこのカードが",
                    "食べられる確率",
                },
            },
            j_paperback_cherry_blossoms = {
                name = "桜",
                text = {
                    "{C:hearts}#1#{}は得点されると、{X:mult,C:white}X#2#{}の倍率を加える",
                    "連続して得点するたびに{X:mult,C:white}X#3#{}倍率が増える{C:hearts}#4#{}",
                    "{C:inactive}（ハンドをプレイするたびにリセットされる）{}",
                },
            },
            j_paperback_chip_clip = {
                name = "チップクリップ",
                text = {
                    "このジョーカーは、ラウンド終了時に手札の{C:attention}クリップ{}ごとに",
                    "{C:chips}+#1#{}チップを獲得する",
                    "{C:inactive}（現在{C:chips}+#2#{}チップ）{}",
                },
                unlock = {
                    "{C:attention,E:1}#1#{}固有の{C:attention,E:1}クリップ{}を 1 回の実行で適用する",
                },
            },
            j_paperback_chocolate_coins = {
                name = "チョコレートコイン",
                text = {
                    "ラウンド終了時に{C:money}$#1#{}を獲得各ラウンドごとに{C:money}$#2#{}ずつ減少",
                },
            },
            j_paperback_chocolate_joker = {
                name = "チョコレートジョーカー",
                text = {
                    "ジョーカー1枚につき、このジョーカーのチップの乗数が{X:chips,C:white}X#1#{}分増える",
                    "{C:inactive}（現在のチップ {X:chips,C:white}X#2#{C:inactive}）",
                },
                unlock = {
                    "一度に少なくとも{C:attention,E:1}#1#{}{E:1,C:attention}ジョーカー{}を取得する",
                },
            },
            j_paperback_claw = {
                name = "爪",
                text = {
                    "{C:attention}#1#{}が得点すると倍率{C:mult}+#4#{}",
                    "このラウンドで先に得点した",
                    "{C:attention}#1#{}1枚につき、さらに倍率{C:mult}+#2#{}",
                    "{C:inactive}（現在の倍率 {C:mult}+#3#{C:inactive}）",
                },
                unlock = {
                    "1ラウンドで{C:attention,E:1}3を#1#枚{}プレイする",
                },
            },
            j_paperback_clippy = {
                name = "クリッピー",
                text = {
                    "ブラインドが選択されている場合、ランダムな{C:attention}クリップ{}をデッキ",
                    "内のランダムなカードに追加する",
                },
                unlock = {
                    "すべてを発見{C:attention,E:1}ペーパークリップ{}",
                    "{C:inactive}（プラチナは除く）{}",
                    "{C:inactive}[#1#/#2#]",
                },
            },
            j_paperback_clothespin = {
                name = "洗濯はさみ",
                text = {
                    "このジョーカーは、再生および保持された{C:attention}ペーパークリップ{}",
                    "として同時にカウントされる",
                },
                unlock = {
                    "{C:attention,E:1}#1#{}{C:attention,E:1}ペーパークリップ{}を含むハンドをプレイする",
                },
            },
            j_paperback_coffee = {
                name = "コーヒー",
                text = {
                    "{C:attention}+#1#{}ハンドサイズは、ブラインドがスキップされると{C:attention}#2#{}ずつ",
                    "増加する",
                    "{C:green}#4#分の#3#{}{C:attention}スモールブラインド{}または{C:attention}ビッグブラインド{}が選択さ",
                    "れたときにこのカードが消費される確率",
                },
                unlock = {
                    "1 回の実行で{E:1,C:attention}#1#{}ブラインドをスキップする",
                },
            },
            j_paperback_coin_collection = {
                name = "コインコレクション",
                text = {
                    "{C:money}お金{}を稼ぐたびに、追加の{C:money}$#1#{}を獲得できる",
                },
                unlock = {
                    "{E:1,C:money}$#1#{}以上を持つ",
                },
            },
            j_paperback_collector = {
                name = "コレクタ",
                text = {
                    "ラウンド終了時にデッキ全体の{C:attention}#2#{}ごとに{C:money}$#1#{}を獲得",
                    "{C:inactive}（現在{C:money}$#3#{}）{}",
                },
                unlock = {
                    "1 回のアンティで{C:money,E:1}$#1#{}を獲得",
                },
            },
            j_paperback_complete_breakfast = {
                name = "完全な朝食",
                text = {
                    "{C:mult}+#1#{}倍率と{C:chips}+#2#{}チップ{C:green}#4#分の#3#{}ハンドをプレイした後にこの",
                    "カードが食べられる確率ハンドをプレイするたびにチャンスが",
                    "{C:green}#5#{}ずつ増える",
                },
                unlock = {
                    "{C:attention,E:1}#1# 食品{}{C:attention,E:1}ジョーカー{}を一度に行う",
                },
            },
            j_paperback_cream_liqueur = {
                name = "クリームリキュール",
                text = {
                    "{C:attention}タグ{}が発動すると{C:money}$#1#{}を獲得",
                    "残り{C:attention}#2#{}ラウンドで消費される",
                    "{C:inactive}（タグを獲得すると残りラウンド数がリセットされる）",
                },
                unlock = {
                    "{E:1,C:attention}#1#{}タグを 1 回の実行で発動する",
                },
            },
            j_paperback_crispy_taco = {
                name = "クリスピータコス",
                text = {
                    "{X:chips,C:white}X#1#{}チップ{C:green}#3#分の#2#{}ラウンド終了時にこのカードが食べられる",
                    "確率",
                },
            },
            j_paperback_cross = {
                name = "クロス",
                text = {
                    "トランプ、ジョーカー、消耗カードは{C:red}破壊{}できません",
                    "{C:inactive}（販売や{S:1.1,C:red,E:2}自滅{}を妨げるものではない）{}",
                },
                unlock = {
                    "{C:attention,E:1}使徒{}を取得する",
                },
            },
            j_paperback_da_capo = {
                name = "ダ・カーポ",
                text = {
                    "{X:mult,C:white}X#1#{}倍率すべての{C:attention}ハンド{}で 1 つの{C:attention}スート{}を除くすべてのスートを、",
                    "順番に{C:red}デバフ{}する: {C:clubs}クラブ{}、{C:spades}スペード{}、{C:diamonds}ダイヤ{}モンド、{C:hearts}ハート{}、",
                    "なし",
                    "{C:inactive}（現在{V:1}#2#{}）{}",
                },
                unlock = {
                    "{C:clubs,E:1}クラブ{}、{C:spades,E:1}スペード{}、{C:diamonds,E:1}ダイヤ{}、{C:hearts,E:1}ハート{}、{C:paperback_stars,E:1}星{}のみで構成される",
                    "デッキを生成する",
                },
            },
            j_paperback_ddakji = {
                name = "タクジ",
                text = {
                    "{C:green}#2#分の#1#{}カードは裏向きに引かれ、得点した手に表向きの",
                    "カードと裏向きのカードが含まれている場合、ランダムな消耗",
                    "カードを生成する",
                    "{C:inactive}（空きスロットが必要）{}",
                },
                unlock = {
                    "{C:attention,E:1}#1#{}{C:attention,E:1}うつむいて{}のカードを含むハンドをプレイする",
                },
            },
            j_paperback_deadringer = {
                name = "デッドリンガー",
                text = {
                    "トリガーは再度{C:attention}#1#{}と{C:attention}#2#{}を 1 回獲得し、 {C:attention}#3#{}を 2 回獲得しまし",
                    "た",
                },
                unlock = {
                    "{C:attention,E:1}#1#{}以上の{C:attention,E:1}ワイルドジャックス{}を含むハンドをプレイする",
                },
            },
            j_paperback_deck_of_cards = {
                name = "トランプのデッキ",
                text = {
                    "プレイしたハンドが 1 つの{C:attention}#1#{}の場合、このジョーカーは{X:chips,C:white}X#2#{}",
                    "チップを獲得し、それを破壊する",
                    "{C:inactive}（現在{X:chips,C:white}X#3#{}チップ）{}",
                },
                unlock = {
                    "{C:attention,E:1}アンティークカード{}を含む{C:attention,E:1}#1#{}をプレイする",
                },
            },
            j_paperback_degenerate_joker = {
                name = "退化ジョーカー",
                text = {
                    "プレイした{C:attention}#1#{}は{C:attention}右{}側のカードに変わります",
                },
                unlock = {
                    "{C:attention,E:1}ワイルドカード{}を生成する",
                },
            },
            j_paperback_der_fluschutze = {
                name = "デア・フルシュッツェ",
                text = {
                    "ラウンドの{C:attention}最初{}にプレイされた手札が 1 枚の{C:attention}フェイスカード{}の",
                    "場合、それを破壊し、このジョーカーは{X:mult,C:white}X#1#{}の倍率を得る",
                    "{C:inactive}（現在{X:mult,C:white}X#2#{}{C:inactive}倍率）{}",
                },
                unlock = {
                    "デッキに{C:attention,E:1}フェイスカード{}が入っていない",
                },
            },
            j_paperback_der_freischutz = {
                name = "デア・フライシュッツ",
                text = {
                    "プレイしたハンドが{C:attention}7{}だけなら、デッキ全体から",
                    "7以外で{C:attention}チップが最低{}のカードを1枚破壊",
                    "{C:inactive}7発目の弾丸を避けろ… #1#/#2#{}",
                },
                unlock = {
                    "実行中に{C:attention,E:1}#1#{}フェイスカードを破壊する",
                },
            },
            j_paperback_derecho = {
                name = "デレチョ",
                text = {
                    "得点したスートがすべて{C:paperback_dark_suit}暗い{}場合、{X:mult,C:white}X#1#{}倍率が増える",
                    "{C:inactive}（現在{X:mult,C:white}X#2#{}{C:inactive}倍率）{}",
                },
                unlock = {
                    "{C:attention,E:1}#1#{}{C:spades,E:1}#2#{}または{C:clubs,E:1}#3#{}をプレイ 1 回の実行でフラッシュする",
                },
            },
            j_paperback_determination = {
                name = "決定",
                text = {
                    "死亡を防ぎ、死亡時{C:attention}#1#{}アンティ、{C:attention}#1#{}ハンドサイズおよび自壊",
                },
                unlock = {
                    "最終ハンドで{C:attention,E:1}スコア{}{C:attention,E:1}燃えている{}にする",
                },
            },
            j_paperback_deviled_egg = {
                name = "デビルドエッグ",
                text = {
                    "各ラウンドで最初に得点したカードが",
                    "{C:attention}ゴールドカード{}になる",
                    "残り{C:attention}#1#{}ラウンドで食べられる",
                },
            },
            j_paperback_disco = {
                name = "ディスコジョーカー",
                text = {
                    "このジョーカーは、{C:money}$#2#{}以下のカードを購入すると、{C:mult}+#1#{}の倍率を",
                    "獲得する",
                    "{C:inactive}（現在{C:mult}+#3#{}{C:inactive}倍率）{}",
                },
                unlock = {
                    "ラン中に{C:money,E:1}$#1#{}を超えずにランに勝利する",
                },
            },
            j_paperback_donor_card = {
                name = "ドナーカ​​ード",
                text = {
                    {
                        "このジョーカーは、得点したハートカードごとに{C:mult}+#1#{}の倍率を",
                        "獲得する",
                        "{C:inactive}（現在{C:mult}+#3#{}{C:inactive}倍率）{}",
                    },
                    {
                        "得点した{C:hearts}ハート{}は{C:chips}#2#{}チップを失い、{C:attention}0{}に到達すると破棄される",
                    },
                },
                unlock = {
                    "デッキに{C:hearts,E:1}心臓{}{C:attention,E:1}フェイスカード{}が入っていません",
                },
            },
            j_paperback_doppler_radar = {
                name = "ドップラーレーダー",
                text = {
                    "ブラインドをクリアしたら、{C:attention}消耗カード{}スロットをランダムな",
                    "{C:planet}#1#{}カードで満たする",
                },
                unlock = {
                    "{C:attention,E:1}消耗カード{}に{C:attention,E:1}#1#{}{C:planet,E:1}#2#{}のカードが入っています",
                },
            },
            j_paperback_double_dutchman = {
                name = "ダブルダッチマン",
                text = {
                    "次の{C:attention}#4#{}ハンドでは、{C:attention}手札{}にある各カードには、ランダムな{C:attention}強化{}を",
                    "取得する{C:green}#2#分の#1#{}のチャンスと、ランダムな{C:attention}シール{}を取得する",
                    "{C:green}#3#分の#1#{}の可能性がある",
                },
                unlock = {
                    "{C:attention,E:1}強化{}、{C:attention,E:1}シール{}、{C:dark_edition,E:1}版{}、{C:attention,E:1}ペーパークリップ{}のトランプを持つ",
                },
            },
            j_paperback_dreamsicle = {
                name = "ドリームシクル",
                text = {
                    "得点{C:diamonds}#4#{}与える{C:mult}+#1#{}倍率{C:green}#3#分の#2#{}ラウンド終了時にこのカードが",
                    "食べられる確率",
                },
            },
            j_paperback_emergency_broadcast = {
                name = "緊急放送",
                text = {
                    "ランク{C:attention}5{}のスコア付きカードとランク{C:attention}8{}のカードは、{C:mult}+#1#{}倍率と",
                    "{C:chips}+#2#{}チップを加える",
                },
                unlock = {
                    "1 回の実行で{C:attention,E:1}月{}{C:tarot,E:1}タロット{}{C:attention,E:1}#1#{}を使用する",
                },
            },
            j_paperback_emf_reader = {
                name = "EMFリーダー",
                text = {
                    "ラウンドの最初の手に{C:attention}#1#{}が含まれている場合、プレイした",
                    "カードを破壊し、ランダムな{C:spectral}#2#{}カードを生成する",
                },
                unlock = {
                    "最もプレイしたハンドとして{E:1,C:attention}#1#{}を含むハンドでランに勝利する",
                },
            },
            j_paperback_epic_sauce = {
                name = "エピックソース",
                text = {
                    "{X:mult,C:white}X#1#{}倍率プレイしたハンドがラウンドの最初のハンドでない場合、",
                    "ランダムな{C:attention}ジョーカー{}を破壊する",
                },
                unlock = {
                    "{E:1,C:blue}#1#{}{E:1,C:attention}手{}でフィニッシャーブラインドを倒す",
                },
            },
            j_paperback_evergreens = {
                name = "常緑樹",
                text = {
                    "{C:spades}#1#{}は得点されると、{X:mult,C:white}X#2#{}の倍率を加える",
                    "連続して得点するたびに{X:mult,C:white}X#3#{}倍率が増える{C:spades}#4#{}",
                    "{C:inactive}（ハンドをプレイするたびにリセットされる）{}",
                },
            },
            j_paperback_everything_must_go = {
                name = "すべては行かなければなりません！",
                text = {
                    "ショップには{C:attention}+#1#{}追加のバウチャースロットがあります",
                },
                unlock = {
                    "1 回の実行で{C:attention,E:1}#1#{}ティアII {C:attention,E:1}バウチャー{}を獲得する",
                },
            },
            j_paperback_eyelander = {
                name = "アイランダー",
                text = {
                    "得点した{C:attention}フェイスカード{}は破壊される",
                    "{C:attention}#1#{}{C:attention}フェイスカード{}を獲得した後、このジョーカーを売却すると、",
                    "{C:attention}ランダム{}なジョーカーにネガティブが追加される",
                    "{C:inactive}（現在{C:attention}#2#{}頭）{}",
                },
                unlock = {
                    "ラン中に{C:attention,E:1}#1#{}{C:attention,E:1}ジャック{}または{C:attention,E:1}キングス{}を破壊する",
                },
            },
            j_paperback_festive_joker = {
                name = "フェスティブジョーカー",
                text = {
                    "{C:attention}#1#{}は、スコアを獲得すると、{C:green}#3#分の#2#{}の確率でランダムな",
                    "{C:attention}消耗カード{}を生成する",
                    "{C:inactive}（空きスロットが必要）{}",
                },
                unlock = {
                    "{C:attention,E:1}#1#{}{C:attention,E:1}ラッピングされたカード{}と{C:paperback_crowns,E:1}光沢のある{}{C:paperback_stars,E:1}スート{}を含むハンドを",
                    "プレイする",
                },
            },
            j_paperback_find_jimbo = {
                name = "神保を探せ",
                text = {
                    "{V:1}#2#{}の各プレイ済み{C:attention}#1#{}が得点すると{C:money}$#3#{}を獲得する{s:0.8}カードは",
                    "{s:0.8}ラウンドごとに変わります{}",
                },
                unlock = {
                    "{E:1,C:attention}#2#{}のみを含む{E:1,C:attention}#1#{}でブラインドをクリアする",
                },
            },
            j_paperback_first_contact = {
                name = "ファーストコンタクト",
                text = {
                    "{C:attention}#1#{}[{C:inactive}#2#{}] 得点の{C:paperback_dark_suit}ダークスート{}ごとにランダムな{C:spectral}#3#{}カードを生成する",
                    "{C:inactive}（空きスロットが必要）{}",
                },
                unlock = {
                    "1 回の実行で{C:attention,E:1}#1#{}{C:spectral,E:1}#2#{}のカードを使用する",
                },
            },
            j_paperback_fodder = {
                name = "飼料",
                text = {
                    "このカードを売ると一番右のE.G.Oギフトを腐食させる",
                },
                unlock = {
                    "{C:paperback_ego_gift,E:1}E.G.Oギフト{}を販売する",
                },
            },
            j_paperback_forgery = {
                name = "偽造",
                text = {
                    "ランダムな{C:attention}ジョーカー{}の能力をハンドごとにコピーし、{X:mult,C:white}倍率の",
                    "{X:mult,C:white}乗数{}、{C:mult}倍率{}または{C:chips}チップ{}を与える場合、その値を{X:attention,C:white}X#1#{}と{X:attention,C:white}X#2#{}の間で",
                    "乗算する",
                    "{C:inactive}（現在{C:attention}#3#{}{C:inactive}で{}{X:attention,C:white}X#4#{}）{}",
                },
                unlock = {
                    "同じ{C:attention,E:1}ジョーカー{}の{C:attention,E:1}2{}を持つ",
                },
            },
            j_paperback_forlorn = {
                name = "孤独な",
                text = {
                    "プレイしたハンドで得点したスートが{V:1}#1#{}のみの場合、{C:attention}手札{}に",
                    "あるランダムなカードを破壊する",
                },
                unlock = {
                    "{C:attention,E:1}アンティ#1#{}中に負ける",
                },
            },
            j_paperback_fraudulent_joker = {
                name = "詐欺的なジョーカー",
                text = {
                    "{C:paperback_crowns}#2#{}スートのカードをプレイすると、得点したときに{C:mult}+#1#{}の",
                    "倍率が得られる",
                },
            },
            j_paperback_freedom_of_choice = {
                name = "選択の自由",
                text = {
                    "プレイしたハンドに{C:attention}#1#{}が含まれている場合、得点カードは永続",
                    "的に{X:mult,C:white}X#2#{}の倍率を獲得する",
                },
                unlock = {
                    "{C:hearts,E:1}ハート{}{C:attention,E:1}フラッシュファイブ{}をプレイする",
                },
            },
            j_paperback_freezer = {
                name = "冷凍庫",
                text = {
                    "{C:attention}ボスブラインド{}を倒した後に{C:dark_edition}ネガティブ{}{C:attention}フードジョーカー{}を生成する",
                },
                unlock = {
                    "{C:dark_edition,E:1}ネガティブ{}{C:attention,E:1}フードジョーカー{}を所有する",
                },
            },
            j_paperback_freight = {
                name = "貨物",
                text = {
                    "クリアされたブラインドが{C:attention}ボスブラインド{}の場合、売却額の{C:money}$#1#{}を",
                    "獲得する。そうでない場合は、このジョーカーの売却額を獲得する",
                    "売却すると、お金の代わりに売却額の{C:money}$#3#{}ごとに{C:red}+#2#{}の破棄を",
                    "獲得する",
                },
                unlock = {
                    "売却額{C:money,E:1}$#1#{}以上のカードを持っている",
                },
            },
            j_paperback_frutiger_aero = {
                name = "フルティガー エアロ",
                text = {
                    "{C:chips}#1#{}チップ、負け{C:chips}#2#{}{C:money}$1{}の支出ごとにチップ",
                    "{C:attention}ボスブラインド{}を倒すと{C:attention}リセット{}される",
                },
                unlock = {
                    "{C:red,E:1}レア{}ジョーカーなしでランで勝利する",
                },
            },
            j_paperback_full_moon = {
                name = "満月",
                text = {
                    "{C:planet}惑星{}カードには再びレベルアップする{C:green}#2#分の#1#{}の可能性がある",
                },
                unlock = {
                    "1 回のランで{C:attention,E:1}ポーカーハンド{}{C:attention,E:1}#1#{}回プレイする",
                },
            },
            j_paperback_furioso = {
                name = "フリオーソ",
                text = {
                    "このジョーカーは、固有のスコア{C:attention}ランク{}ごとに{X:mult,C:white}X#1#{}の倍率を獲得する",
                    "{C:attention}ボスブラインド{}後リセット",
                    "{C:inactive}（現在{X:mult,C:white}X#2#{}{C:inactive}倍率）{}",
                    "{C:inactive}（プレイランク:{C:attention}#3#{}）{}",
                },
                unlock = {
                    "{C:attention,E:1}セルリアンベル{}ボスブラインドを片手で倒す",
                },
            },
            j_paperback_gambit = {
                name = "ギャンビット",
                text = {
                    "プレイしたハンドに得点{V:1}#1#,{}が含まれている場合、最初に得点し",
                    "た{V:1}#1#{}は、手札にある最初の非{V:1}#1#{}を破壊し、チップ値の2倍を",
                    "獲得する",
                },
                unlock = {
                    "{C:attention,E:1}女王{}または{C:paperback_crowns,E:1}クラウン{}を獲得してください",
                },
            },
            j_paperback_gauze = {
                name = "ガーゼ",
                text = {
                    "ラウンドの最後の捨て札が 1 枚の場合、{C:attention}#1#{}になる",
                },
            },
            j_paperback_ghost_cola = {
                name = "ゴーストコーラ",
                text = {
                    "このカードを売却すると、{C:attention}#1#{}とランダムな{C:spectral}#2#{}カードが作成さ",
                    "れる",
                    "{C:inactive}（空きスロットが必要）{}",
                },
                unlock = {
                    "{C:attention,E:1}#1#{}を販売する",
                },
            },
            j_paperback_giga_size = {
                name = "ギガサイズ",
                text = {
                    "このジョーカーは、現在のブラインドでプレイされるハンドごとに",
                    "{X:mult,C:white}X#2#{}倍率を獲得する",
                    "{C:inactive}（{X:mult,C:white}X#1#{}倍率が与えられます）{}",
                },
                unlock = {
                    "{C:blue,E:1}10{}{C:attention,E:1}手{}を一度に行う",
                },
            },
            j_paperback_golden_apple = {
                name = "金のリンゴ",
                text = {
                    "今後{C:attention}#2#{}ラウンドの終了時に",
                    "デッキ内の{C:attention}強化{}カード1枚につき",
                    "{C:money}$#1#{}を獲得",
                    "{C:inactive}（現在 {C:money}$#3#{C:inactive}）",
                },
                unlock = {
                    "デッキに{C:attention,E:1}ゴールド{}の{C:attention,E:1}エース{}を",
                    "{C:attention,E:1}#1#{}枚以上持つ",
                },
            },
            j_paperback_golden_egg = {
                name = "金の卵",
                text = {
                    "{C:attention}隠しハンド{}をプレイすると",
                    "右隣の{C:attention}ジョーカー{}の売却額と",
                    "同額のお金を獲得",
                },
                unlock = {
                    "最も多くプレイしたハンドが",
                    "{C:attention,E:1}隠しハンド{}の状態でランに勝利する",
                },
            },
            j_paperback_grand_strategy = {
                name = "大戦略",
                text = {
                    "{C:attention}#2#{}のユニークな{C:attention}強化{}がデッキ全体に含まれている場合、{X:mult,C:white}X#1#{}の",
                    "倍率",
                    "{C:inactive}（現在{C:attention}#3#{}）{}",
                },
                unlock = {
                    "デッキ全体に{C:attention,E:1}#1#{}のユニークな{C:attention,E:1}機能強化{}を入れてください",
                },
            },
            j_paperback_great_wave = {
                name = "グレートウェーブ",
                text = {
                    "他の{C:attention}得点カード{}ごとに 1 回ずつ、右端の得点カードを再発動する",
                },
                unlock = {
                    "1 回のランで{C:attention,E:1}#1#{}{C:clubs,E:1}クラブ{}ストレートフラッシュをプレイする",
                },
            },
            j_paperback_greeting_card = {
                name = "グリーティングカード",
                text = {
                    "プレイされた{C:attention}#2#{}が{C:attention}得点{}された場合、{C:attention}売却額{}の{C:money}$#1#{}を獲得する",
                },
                unlock = {
                    "同じハンドで{C:attention,E:1}包まれた{}と{C:attention,E:1}ラッキーカード{}をスコアする",
                },
            },
            j_paperback_grenadine = {
                name = "グレナディン",
                text = {
                    "次の{C:attention}#1#{}がプレイして得点した{V:1}#2#{}が得点すると、永続的に{X:mult,C:white}X#3#{}の",
                    "倍率が増える",
                },
                unlock = {
                    "{C:attention,E:1}#1#{}{C:hearts,E:1}#2#{}を 1 回の実行でフラッシュする",
                },
            },
            j_paperback_grimoire = {
                name = "グリモア",
                text = {
                    "{C:attention}ビッグブラインド{}後の{C:money}ショップ{}は追加の {C:paperback_ego_gift}E.G.Oギフト抽出",
                    "{C:paperback_ego_gift}パック{}から始まります",
                },
            },
            j_paperback_guns_blazin = {
                name = "ガンズ・ブレイジン",
                text = {
                    "プレイした{C:attention}#2#{}が得点すると、{X:mult,C:white}X#1#{}の倍率が与えられます",
                },
                unlock = {
                    "デッキに{C:clubs,E:1}クラブ{}が入っていない",
                },
            },
            j_paperback_hamsa = {
                name = "ハムサ",
                text = {
                    "ラウンドの{C:attention}最初{}の手で、最初にプレイされた{C:attention}#1#{}カードを再発動する",
                    "...",
                },
                unlock = {
                    "失点",
                },
            },
            j_paperback_hamsa_r = {
                name = "ハムサ",
                text = {
                    "...ラウンドの{C:attention}最後{}のハンドで、リストされたすべての確率",
                    "に対して{C:green}+#1#{}",
                },
                unlock = {
                    "{C:attention,E:1}#2#{}ラウンドで{C:attention,E:1}#1#{}を獲得する",
                },
            },
            j_paperback_hamsa_r_collection = {
                name = "ハムサ（反転）",
                text = {
                    "...ラウンドの{C:attention}最後{}のハンドで、リストされたすべての確率",
                    "に対して{C:green}+#1#{}",
                },
                unlock = {
                    "{C:attention,E:1}#2#{}ラウンドで{C:attention,E:1}#1#{}を獲得する",
                },
            },
            j_paperback_happy_accident = {
                name = "ハッピーアクシデント",
                text = {
                    "手に持ったそれぞれの{C:attention}#1#{}は、半分のスケーリングで{X:chips,C:white}Xチップス{}を",
                    "加える{X:chips,C:white}X1.5{}-> {X:chips,C:white}X1.25{}",
                },
                unlock = {
                    "{E:1,C:attention}最もプレイしたハンド{}をプレイせずに、{E:1,C:blue}1{}{E:1,C:attention}手{}でブラインドを倒す",
                },
            },
            j_paperback_hatred = {
                name = "憎しみ",
                text = {
                    "各ハンドの前に、{C:red,E:1,7}マーク{}ランダムなカードが手元にあり、{C:red,E:1,7}マーク",
                    "{C:red,E:1,7}あり{}カードは得点されると{X:mult,C:white}X#1#{}の倍率を与え、得点されない場合は",
                    "破壊される",
                },
                unlock = {
                    "デッキに{C:hearts,E:1}ハート{}が入っていない",
                },
            },
            j_paperback_heretical_joker = {
                name = "異端のジョーカー",
                text = {
                    "{C:paperback_stars}#2#{}スートのカードをプレイすると、得点したときに{C:mult}+#1#{}の",
                    "倍率が得られる",
                },
            },
            j_paperback_high_speed_rail = {
                name = "高速鉄道",
                text = {
                    "この{C:attention}ジョーカー{}は、購入した{C:attention}ジョーカー{}の価格に等しい倍率を",
                    "獲得する。このジョーカーは、販売したジョーカーの{C:money}売却額{}",
                    "に等しい倍率を失う",
                    "{C:inactive}（現在{C:mult}+#1#{}{C:inactive}倍率）{}",
                },
                unlock = {
                    "{C:attention,E:1}#1#{}から{C:mult,E:1}+#2#{}の倍率以上にスケールする",
                },
            },
            j_paperback_hole_in_one = {
                name = "ホールインワン",
                text = {
                    "ラウンドの最初の{C:blue}ハンド{}がブラインドをクリアした場合、すべての",
                    "{C:attention}カード{}の{C:attention}売却額{}が 2 倍になる",
                    "{C:inactive}（ラウンドごとに最大{C:money}$#1#{}）{}",
                    "このジョーカーが売却された場合、すべての{C:attention}カード{}の{C:attention}売却額{}を{C:money}$0{}に",
                    "設定する",
                },
            },
            j_paperback_hotel_guest = {
                name = "ホテルのゲスト",
                text = {
                    "手札のクイーンごとに{X:mult,C:white}X#1#{}の倍率を加える",
                    "{C:inactive}（現在{X:mult,C:white}X#2#{}{C:inactive}倍率）{}",
                },
                unlock = {
                    "{C:attention,E:1}スティールクイーン{}をしてください",
                },
            },
            j_paperback_i_wish_that_i_could_fall = {
                name = "落ちたらいいのに",
                text = {
                    "カードが得点されると、このジョーカーはカードの{C:attention}ランク{}を下げ、",
                    "{C:chips}+#1#{}チップを獲得する",
                    "（{C:inactive}2{}-> エース -> キング）",
                    "{C:inactive}（現在{C:chips}+#2#{}チップ）{}",
                },
            },
            j_paperback_ice_cube = {
                name = "アイスキューブ",
                text = {
                    "{C:blue}+#1#{}ブラインド選択時のハンドスコアに火が付くと溶ける",
                },
                unlock = {
                    "{C:attention,E:1}#1# 食品{}{C:attention,E:1}ジョーカー{}を一度に行う",
                },
            },
            j_paperback_in_case_i_make_it = {
                name = "成功した場合に備えて",
                text = {
                    "プレイされたすべての{C:attention}ランクレスカード{}は、得点されると永続的に",
                    "{C:chips}+#1#{}チップを獲得する",
                },
                unlock = {
                    "デッキに{C:attention,E:1}#1#{}と{C:attention,E:1}#2#{}を入れてください",
                },
            },
            j_paperback_inner_peace = {
                name = "内なる平和",
                text = {
                    "ラウンドの{C:attention}最初のハンド{}をプレイするまで",
                    "ハンドサイズ{C:attention}+3{}",
                },
                unlock = {
                    "1 つのアンティで{C:red,E:1}#1#{}回破棄する",
                },
            },
            j_paperback_insurance_policy = {
                name = "保険証券",
                text = {
                    "デッキ全体の各{C:attention}#3#{}および{C:mult}-#1#{}の倍率を{C:attention}#4#{}ごとに{C:mult}+#1#{}の倍率を",
                    "加える",
                    "{C:inactive}（現在{C:mult}#2#{}{C:inactive}倍率）{}",
                },
                unlock = {
                    "デッキに{C:attention,E:1}キングス{}が入っていない",
                },
            },
            j_paperback_its_tv_time = {
                name = "テレビの時間です！",
                text = {
                    "{C:paperback_stars}#1#{}をプレイして得点すると{C:chips}+#2#{}チップを与える",
                },
                unlock = {
                    "{C:paperback_stars,E:1}#1#{}{C:attention,E:1}#2#{}をしてください",
                },
            },
            j_paperback_j_and_js = {
                name = "J&J's",
                text = {
                    "プレイしたハンドに{C:attention}スペクトラム{}が含まれていれば",
                    "ランダムなタグを{C:attention}#1#{}個生成する",
                    "残り{C:attention}#2#{}ラウンドで消費される",
                },
                unlock = {
                    "デッキに{C:attention,E:1}#1#{}以上の{C:attention,E:1}スート{}が入っている",
                },
            },
            j_paperback_jacks = {
                name = "ジャック",
                text = {
                    "{C:attention}#3#{}が捨てられると、このジョーカーは{C:mult}+#1#{}の倍率を獲得する",
                    "{C:inactive}（現在{C:mult}+#2#{}{C:inactive}倍率）{}",
                },
                unlock = {
                    "{E:1,C:attention}ジャック{}をプレイせずにランで勝利する",
                },
            },
            j_paperback_jester = {
                name = "道化師",
                text = {
                    "カードが{C:attention}破壊{}されるたびに、",
                    "デッキ全体から{C:attention}ランダム{}なカードをさらに1枚破壊する",
                },
                unlock = {
                    "{C:attention,E:1}倍率ジャック{}をしてください",
                },
            },
            j_paperback_jester_of_nihil = {
                name = "ニヒルの道化師",
                text = {
                    "最後に得点したカード{C:mult}+#1#{}のスートを{C:attention}デバフ{}し、デッキ",
                    "全体のすべての{C:attention}デバフ{}されたカードの倍率をデバフする",
                    "{C:inactive}（現在、{V:1}#2#{}と{C:mult}+#3#{}の{C:inactive}倍率）{}",
                },
                unlock = {
                    "{C:attention,E:1}#1#{}{C:attention,E:1}デバフ済み{}のカードを含むハンドをプレイする",
                },
            },
            j_paperback_jestosterone = {
                name = "ジェストステロン",
                text = {
                    "得点した{C:attention}#1#{}が{C:attention}#2#{}に変わる",
                },
            },
            j_paperback_jestrica = {
                name = "ジェストリカ",
                text = {
                    "このジョーカーは、{C:attention}#3#{}が得点されると、{C:mult}+#1#{}の倍率を獲得する。",
                    "ラウンド中に{C:attention}#3#{}が得点されなかった場合はリセットされる",
                    "{C:inactive}（現在{C:mult}+#2#{}{C:inactive}倍率）{}",
                },
                unlock = {
                    "{E:1,C:attention}8s{}のみを含む{E:1,C:attention}#1#{}でブラインドをクリアする",
                },
            },
            j_paperback_jestrogen = {
                name = "ジェストロゲン",
                text = {
                    "得点した{C:attention}#1#{}と{C:attention}#2#{}が",
                    "{C:attention}#3#{}に変わる",
                },
            },
            j_paperback_jimbo_adventure = {
                name = "ジンボアドベンチャー",
                text = {
                    "ブラインドをスキップするとランダムな{C:attention}タグ{}が生成される",
                },
                unlock = {
                    "{C:attention,E:1}#1#{}タグを同時に押し続ける",
                },
            },
            j_paperback_jimbocards = {
                name = "ジンボカード",
                text = {
                    "入手したら、すべてのジョーカーを破壊し、{C:attention}#1#{}ランダムな{C:dark_edition}#5#{}",
                    "ジョーカーを生成する",
                    "すべての購入費用が{C:money}$#2#{}安くなる",
                    "各{C:attention}アンティ{}を{C:attention}#3#{}ハンドでクリアするか、あなたが{S:1.1,C:red,E:2}失う{}でクリアする",
                    "{C:inactive}（{C:attention}#4#{}左手）{}",
                },
                unlock = {
                    "アンティレベル{E:1,C:attention}#1#{}に到達する",
                },
            },
            j_paperback_jimbocards_collection = {
                name = "ジンボカード",
                text = {
                    "入手したら、すべてのジョーカーを破壊し、ランダムな{C:attention}#1#{}",
                    "{C:dark_edition}ネガティブ{}ジョーカーを生成する",
                    "すべての購入費用が{C:money}$#2#{}安くなる",
                    "各{C:attention}アンティ{}を{C:attention}#3#{}ハンドでクリアするか、あなたが{S:1.1,C:red,E:2}失う{}でクリアする",
                    "{C:inactive}（{C:attention}#4#{}左手）{}",
                    "オールウェイズ{C:paperback_eternal}エターナル{}",
                },
                unlock = {
                    "アンティレベル{E:1,C:attention}#1#{}に到達する",
                },
            },
            j_paperback_jimbos_inferno = {
                name = "ジンボズ・インフェルノ",
                text = {
                    "得点した{C:paperback_dark_suit}ダークスート{}は、{C:attention}手札{}にある{C:paperback_dark_suit}ダークスート{}ごとに{C:mult}+#1#{}の",
                    "倍率を加える",
                    "{C:inactive}（現在{C:mult}+#2#{}{C:inactive}倍率）{}",
                },
                unlock = {
                    "1 回の実行で{C:paperback_dark_suit,E:1}ダークスート{}のみを含む{C:attention,E:1}#1#{}ハンドをプレイする",
                },
            },
            j_paperback_jimbos_joyous_joker_jamboree = {
                name = "ジンボの楽しいジョーカージャンボリー",
                text = {
                    "{C:attention}#1#{}[{C:inactive}#2#{}] のスコア付きカードごとにランダムな{C:paperback_minor_arcana}小アルカナ{}",
                    "カードを生成する",
                    "{C:inactive}（空きスロットが必要）{}",
                },
                unlock = {
                    "デッキに{C:attention,E:1}#1#{}以上の{C:attention,E:1}スート{}が入っている",
                },
            },
            j_paperback_joke_master = {
                name = "ジョークマスター",
                text = {
                    "プレイしたハンドがラウンドごとに変わる{C:attention}#2#{}ハンドの場合、",
                    "このジョーカーは{C:mult}+#1#{}倍率を獲得する",
                    "{C:inactive}（現在{C:mult}+#3#{}{C:inactive}倍率）{}",
                },
            },
            j_paperback_joker_cd_i = {
                name = "ジョーカーCD-i",
                text = {
                    "プレイされた手にちょうど{C:attention}#3#{}のカードがある場合、{C:green}#2#分の#1#{}",
                    "ランダムな{C:planet}惑星{}カードを生成するチャンス",
                    "{C:inactive}（空きスロットが必要）{}",
                },
                unlock = {
                    "{E:1,C:attention}#1#{}カードを含むハンドをプレイせずにランで勝利する",
                },
            },
            j_paperback_joker_cookie = {
                name = "ジョーカークッキー",
                text = {
                    "ラウンド終了時に{C:money}$#1#{}を獲得キャッシュアウトすると配当が{C:money}$#2#{}",
                    "増える{C:green}#5#分の#4#{}ラウンド終了時にこのカードが食べられることが",
                    "ある",
                    "{C:inactive}（最大{C:money}$#3#{}）{}",
                },
            },
            j_paperback_joker_crossing = {
                name = "ジョーカークロッシング",
                text = {
                    "{C:attention}強化された{}カードは{C:green}#2#分の#1#{}の確率で再度発動する",
                },
                unlock = {
                    "{C:attention,E:1}#1#{}{C:attention,E:1}ラッキーカード{}を含むハンドをプレイする",
                },
            },
            j_paperback_joker_duty = {
                name = "ジョーカーの義務",
                text = {
                    "同じ{C:chips}ハンド{}とディスカードでラウンドをクリアした場合、この",
                    "ジョーカーは{C:mult}+#1#{}の倍率を獲得する",
                    "{C:inactive}（現在{C:mult}+#2#{}{C:inactive}倍率）{}",
                },
                unlock = {
                    "{E:1,C:blue}0{}{E:1,C:attention}手{}と{E:1,C:red}0{}{E:1,C:attention}捨てる{}を残してボスブラインドを倒す",
                },
            },
            j_paperback_joker_jacks = {
                name = "ジョーカージャックス",
                text = {
                    "得点{C:attention}#2#{}は{C:money}$#1#{}を加えるラウンド終了時に{C:money}$#3#{}減る消費後に{C:attention}賞{}品を",
                    "生成する",
                    "{C:inactive}（空きスロットが必要）{}",
                },
                unlock = {
                    "{C:attention,E:1}ジャック{}のうち{C:attention,E:1}スリーカード{}を獲得",
                },
            },
            j_paperback_jokers_11 = {
                name = "ジョーカーズ 11",
                text = {
                    "{C:attention}ボスブラインド{}を倒した後に手に持つ{C:attention}#1#{}がランダムな{C:attention}タグ{}を",
                    "生成する",
                },
                unlock = {
                    "デッキに{C:attention,E:1}#1#{}エースを入れてください",
                },
            },
            j_paperback_journal = {
                name = "ジャーナル",
                text = {
                    "このジョーカーは前のハンドの合計{C:chips}チップ{}を加える",
                    "{C:inactive}（現在{C:chips}+#1#{}チップ）{}",
                },
            },
            j_paperback_keycard = {
                name = "キーカード",
                text = {
                    "{C:attention}ボスブラインド{}を倒した後、このジョーカーは{C:red,E:1}自壊する{}、",
                    "キャッシュアウト後に{C:money}$#1#{}を加える",
                },
                unlock = {
                    "{C:attention,E:1}#1#{}を使用してください",
                },
            },
            j_paperback_king_me = {
                name = "キング・ミー",
                text = {
                    "キング以外のスコア{V:1}#1#{}はランクを{C:attention}#2#{}上げます",
                },
                unlock = {
                    "{C:attention,E:1}王{}または{C:paperback_crowns,E:1}クラウン{}を獲得してください",
                },
            },
            j_paperback_kintsugi_joker = {
                name = "金継ぎジョーカー",
                text = {
                    "{C:attention}#2#{}が破壊されると、{C:attention}#2#{}の配当が{C:money}$#1#{}増加し、最大{C:money}$#4#{}まで",
                    "増える",
                    "{C:inactive}（現在{C:money}$#3#{}ずつ増加）{}",
                },
                unlock = {
                    "実行中に{C:attention,E:1}#1#{}{C:attention,E:1}セラミックカード{}を破壊する",
                },
            },
            j_paperback_lager = {
                name = "ラガー",
                text = {
                    "次の{C:attention}#1#{}がプレーして得点した{V:1}#2#{}が得点すると、永続的に{C:green}+#3#{}の",
                    "確率が増える",
                },
                unlock = {
                    "{C:attention,E:1}#1#{}{C:paperback_crowns,E:1}#2#{}を 1 回の実行でフラッシュする",
                },
            },
            j_paperback_langely = {
                name = "ランジュリ",
                text = {
                    "{C:attention}ビッグブラインド{}を倒すと",
                    "全ジョーカーの{C:money}売却額{}の{C:attention}半分{}を獲得",
                    "{C:attention}ボスブラインド{}を倒すと",
                    "全ジョーカーの{C:money}売却額{}の{C:attention}全額{}を獲得",
                },
                unlock = {
                    "{E:1,s:1.3}?????",
                },
            },
            j_paperback_legacy = {
                name = "遺産",
                text = {
                    "未強化のカードが破壊されたとき、そのチップ値を{C:mult}倍率{}として",
                    "このジョーカーに加算する",
                    "{C:inactive}（現在{C:mult}+#1#{}{C:inactive}倍率）{}",
                },
                unlock = {
                    "{E:1,s:1.3}?????",
                },
            },
            j_paperback_let_it_happen = {
                name = "そのままにしておきます",
                text = {
                    "この{C:attention}アンティ{}でハンドがプレイされていない場合は、{C:mult}倍率{}と",
                    "{C:chips}チップ{}の{C:purple}バランス{}をとる",
                    "{C:inactive}（プレイしたハンド:{C:attention}#1#{}）{}",
                },
                unlock = {
                    "{V:1,E:1}#2#{}以上の難易度で{C:attention,E:1}#1#{}でランに勝利する",
                },
            },
            j_paperback_loaded_dice = {
                name = "ロードされたダイス",
                text = {
                    "手にスコア{C:paperback_crowns}#2#{}が含まれている場合、リストされているすべての",
                    "{C:green,E:1,S:1.1}確率{}に{C:green}#1#{}を追加する",
                },
                unlock = {
                    "{C:attention,E:1}#1#{}{C:attention,E:1}ラッキー{}{C:paperback_crowns,E:1}クラウン{}を含むハンドをプレイする",
                },
            },
            j_paperback_lone_digger = {
                name = "ローンディガー",
                text = {
                    "{C:attention}得点したハンド{}に王室カードが 1 枚しかない場合、得点した",
                    "カードごとに{C:attention}再発動{}する",
                },
                unlock = {
                    "{C:attention,E:1}#1#{}と{C:attention,E:1}#2#{}を同時に持つ",
                },
            },
            j_paperback_lurid_joker = {
                name = "けばけばしいジョーカー",
                text = {
                    "プレイしたハンドに{C:attention}#2#{}が",
                    "含まれていればチップ{C:chips}+#1#{}",
                },
                unlock = {
                    "{E:1,C:attention,E:1}スペクトラム{}をプレイする",
                },
            },
            j_paperback_magic_mushroom = {
                name = "マジックマッシュルーム",
                text = {
                    "{X:mult,C:white}X#1#{}倍率プレイしたハンドごとに{X:mult,C:white}X#2#{}倍率が失われます",
                    "ブラインドをクリアするとリセットされる",
                    "{C:inactive}（{X:mult,C:white}X#1#{}倍率を超えることはできません）{}",
                },
                unlock = {
                    "少なくとも{V:1,E:1}#1#{}難易度のデッキでランに勝利する",
                },
            },
            j_paperback_malibu = {
                name = "マリブ",
                text = {
                    "この{C:attention}ジョーカー{}は、得点したハンドの最も低い{C:chips}チップ{}価値の",
                    "カードの{C:attention}#1#{}倍に等しいチップを加える",
                },
            },
            j_paperback_man = {
                name = "男",
                text = {
                    "プレイされた{C:paperback_dark_suit}ダークスート{}{C:attention}カード{}は、得点されると永続的に{C:mult}+#1#{}",
                    "倍率を獲得する",
                },
                unlock = {
                    "{C:attention,E:1}#1#{}{C:attention,E:1}#2#{}回獲得する",
                    "{C:inactive}(#3#)",
                },
            },
            j_paperback_mandela_effect = {
                name = "マンデラ効果",
                text = {
                    "各ハンドで{C:attention}最初{}に得点した{C:attention}フェイスカード{}をランダムに{C:attention}強化する{}",
                },
                unlock = {
                    "{C:spades,E:1}スペード{}のスコア{C:attention,E:1}王{}と{C:attention,E:1}ジャック{}を含むハンドをプレイする",
                },
            },
            j_paperback_manilla_folder = {
                name = "マニラフォルダー",
                text = {
                    "デッキ全体内の{C:attention}ユニークなクリップ{}ごとにラウンド終了時に{C:money}$#1#{}を",
                    "獲得",
                    "{C:inactive}（現在{C:money}$#2#{}）{}",
                },
                unlock = {
                    "デッキに少なくとも{E:1,C:attention}#1#{}{C:attention,E:1}クリップ{}を入れてください",
                },
            },
            j_paperback_marble_soda = {
                name = "マーブルソーダ",
                text = {
                    "{C:attention}#1#{}が得点すると倍率{X:mult,C:white}X#2#{}",
                    "プレイングカードが{C:attention}#3#{}枚破壊されると飲み干される",
                },
                unlock = {
                    "実行中に{C:attention,E:1}#1#{}{C:attention,E:1}#2#{}を破壊する",
                },
            },
            j_paperback_master_plan = {
                name = "マスタープラン",
                text = {
                    "{C:attention}ジョーカー{}の能力を左にコピーする",
                },
                unlock = {
                    "{E:1,C:attention}15 ミニッツシティ{}チャレンジを完了する",
                },
            },
            j_paperback_master_spark = {
                name = "マスタースパーク",
                text = {
                    "プレイされた手にスペクトラムが含まれている場合、{C:attention}手札{}のすべての",
                    "カードを破壊し、プレイされたすべてのカードは多色になる{S:1.1,C:red,E:2}自壊する{}",
                },
                unlock = {
                    "{E:1,C:attention}4s{}のみを含む{E:1,C:attention}#1#{}をプレイする",
                },
            },
            j_paperback_matcha = {
                name = "抹茶",
                text = {
                    "このジョーカーは、カードが得点されると{C:chips}+#1#{}チップを獲得し、",
                    "捨て札で消費する{C:green}#3#分の#2#{}のチャンスを獲得する",
                    "{C:inactive}（現在{C:chips}+#4#{}チップ）{}",
                },
                unlock = {
                    "{E:1,C:attention,E:1}捨てる{}を使用せずにアンティをクリアする",
                },
            },
            j_paperback_medic = {
                name = "メディック",
                text = {
                    "{C:attention}#1#{}はカードを追加でトリガーする",
                },
                unlock = {
                    "片手で{C:attention,E:1}#1# 包帯を巻いたカード{}を壊す",
                },
            },
            j_paperback_meeple = {
                name = "ミープル",
                text = {
                    "プレイされた手に得点カードが含まれている場合、{C:green}#2#分の#1#{}",
                    "獲得のチャンス{C:mult}+#3#{}このラウンドは破棄される",
                },
                unlock = {
                    "1 ラウンドで{C:attention,E:1}#1#{}{C:attention,E:1}フェイスカード{}をスコアする",
                },
            },
            j_paperback_membership_card = {
                name = "会員カード",
                text = {
                    "ショップ内のすべてのカードとパックは{C:attention}#1#%{}オフです",
                },
                unlock = {
                    "{C:money,E:1}#1#{}バウチャーを取得する",
                },
            },
            j_paperback_mexican_train = {
                name = "メキシコの列車",
                text = {
                    "{C:attention}#1#{}が得点すると、{C:attention}#1#{}がプレイされるたびに{C:money}$#2#{}が与えられます",
                    "{C:inactive}（現在{C:money}$#3#{}）{}",
                },
                unlock = {
                    "デッキに少なくとも{C:attention}#1#{}{E:1,C:attention}#2#{}を入れてください",
                },
            },
            j_paperback_mezzetino = {
                name = "メッツェティーノ",
                text = {
                    "ラウンド終了時に残りの捨て札を消費して手札の{C:attention}ランダム{}な",
                    "カードを破壊し、{C:money}$#1#{}を獲得する",
                },
            },
            j_paperback_milk_tea = {
                name = "ミルクティー",
                text = {
                    "{C:chips}チップ{}と{C:mult}倍率{}の差を",
                    "{C:attention}#1#%{}{C:purple}縮める{}",
                    "{C:attention}最終{}{C:mult}倍率{}が{C:chips}チップ{}より",
                    "{C:attention}大きい{}と、均等化する割合が{C:attention}#2#{}ポイント下がる",
                },
                unlock = {
                    "{C:attention,E:1}#1#{}でランに勝利する",
                },
            },
            j_paperback_mind_electric = {
                name = "ザ・マインド・エレクトリック",
                text = {
                    "得点した{C:mult}#3#{}が{C:attention}破壊{}され、このジョーカー {X:mult,C:white}X#1#{}に倍率が与えられ",
                    "ます",
                    "{C:inactive}（現在{X:mult,C:white}X#2#{}{C:inactive}倍率）{}",
                },
                unlock = {
                    "{C:attention,E:1}倍率カード{}を破壊する",
                },
            },
            j_paperback_mismatched_sock = {
                name = "不一致の靴下",
                text = {
                    "捨て札にちょうど 1 枚のカードが含まれている場合、この",
                    "ジョーカーは{X:mult,C:white}X#1#{}の倍率を獲得するプレイされた手に{C:attention}ペア{}が",
                    "含まれている場合はリセットされる",
                    "{C:inactive}（現在{X:mult,C:white}X#2#{}{C:inactive}倍率）{}",
                },
                unlock = {
                    "{E:1,C:attention}#1#{}を含むハンドをプレイせずにランで勝利する",
                },
            },
            j_paperback_moneyback = {
                name = "返金",
                text = {
                    "{C:money}$#1#{}[{C:inactive}#2#{}] を支出するごとに{C:money}$#3#{}を獲得する",
                },
                unlock = {
                    "ショップで{C:money}$100{}を使う",
                },
            },
            j_paperback_moon_waltz = {
                name = "ムーンワルツ",
                text = {
                    "使用した{C:planet}衛星{}または{C:planet}小惑星{}カードの",
                    "{C:mult}加算倍率{}または{C:chips}加算チップ{}の半分を",
                    "このジョーカーが{C:green}#4#分の#3#{}の確率で獲得",
                    "{C:inactive}（現在の倍率 {C:mult}+#1#{C:inactive}、チップ {C:chips}+#2#{C:inactive}）",
                },
            },
            j_paperback_moribund = {
                name = "瀕死の状態",
                text = {
                    "残りハンド{C:blue}0{}で{C:attention}ブラインド{}をクリアすると、このジョーカーの倍率{C:mult}+#1#{}",
                    "クリアできなかった場合、このジョーカーの倍率が{C:attention}2倍{}になる",
                    "{C:inactive}（現在の倍率 {C:mult}+#2#{C:inactive}）",
                },
                unlock = {
                    "{E:1,C:blue}0{}{E:1,C:attention}手{}を残してボスブラインドを倒す",
                },
            },
            j_paperback_moving_out = {
                name = "引っ越し",
                text = {
                    "勝利したポーカーハンドが最もプレイしたハンドではない場合、",
                    "このジョーカーは{C:mult}+#1#{}の倍率を獲得する",
                    "{C:inactive}（現在{C:mult}+#2#{}{C:inactive}倍率）{}",
                },
            },
            j_paperback_nachos = {
                name = "ナチョス",
                text = {
                    "{X:chips,C:white}X#1#{}チップ、負け{X:chips,C:white}X#2#{}捨てられた{C:attention}カード{}ごとのチップ",
                },
                unlock = {
                    "{E:1,C:attention,E:1}捨てる{}を使用せずにボスブラインドを倒す",
                },
            },
            j_paperback_nazar = {
                name = "ナザール",
                text = {
                    "{C:paperback_minor_arcana}小アルカナ{}または{C:tarot}タロット{}カードを使用すると、このジョーカーは",
                    "{C:chips}+#1#{}チップを獲得する",
                    "{C:inactive}（現在{C:chips}+#2#{}チップ）{}",
                },
                unlock = {
                    "すべての{E:1,C:tarot}タロット{}および{E:1,C:paperback_minor_arcana}小アルカナ{}カードを発見する",
                },
            },
            j_paperback_nazca_lines = {
                name = "ナスカの地上絵",
                text = {
                    "得点したカードは、隣接する{C:attention}デバフ{}または得点されていない",
                    "カードごとに{C:money}$#1#{}を獲得する",
                },
                unlock = {
                    "すべて同じスートのフォー オブアカインドをプレイする",
                },
            },
            j_paperback_ncj = {
                name = "いいえ著作権ジョーカーズ",
                text = {
                    "他のジョーカーが持っている売却額の{C:money}$1{}ごとに{C:chips}+#1#{}チップ",
                    "{C:inactive}（現在{C:chips}+#2#{}チップ）{}",
                },
                unlock = {
                    "{C:attention,E:1}#1#{}または{C:attention,E:1}#2#{}を使用せずにランで勝利する",
                },
            },
            j_paperback_nichola = {
                name = "ニコラ",
                text = {
                    "プレイしたカードの得点計算後",
                    "{C:attention}手札にある絵札{}も得点する",
                },
                unlock = {
                    "{E:1,s:1.3}?????",
                },
            },
            j_paperback_nigiri = {
                name = "にぎり",
                text = {
                    "このジョーカーは、捨てられたカードの{C:rank}ランク{}の{C:attention}1{}/{C:attention}#2#{}番目を",
                    "{C:white,X:red}倍率の乗数{}として獲得し、{C:}フェイスカード{}が得点すると自壊し、",
                    "{C:attention}ボスブラインド{}を倒すとリセットされる",
                    "{C:inactive}（現在{C:white,X:red}X#1#{}{C:inactive}倍率）{}",
                },
            },
            j_paperback_nigori = {
                name = "にごり",
                text = {
                    "次の{C:attention}#1#{}がプレイして得点した{V:1}#2#{}が得点すると、永続的に{X:chips,C:white}X#3#{}",
                    "チップを獲得する",
                },
                unlock = {
                    "{C:attention,E:1}#1#{}{C:paperback_stars,E:1}#2#{}を 1 回の実行でフラッシュする",
                },
            },
            j_paperback_normalJKR = {
                name = "ノーマルJKR",
                text = {
                    "ショップで購入した最初のカードは{C:attention}無料{}です",
                },
                unlock = {
                    "デッキに{C:attention,E:1}8s{}が入っていない",
                },
            },
            j_paperback_normalJKR_alt = {
                name = "jimbo_フォロワー_c",
                text = {
                    "ショップで最初に購入するカードは 2G です",
                },
                unlock = {
                    "デッキに{C:attention,E:1}8s{}が入っていない",
                },
            },
            j_paperback_off_alpha = {
                name = "アルファ",
                text = {
                    "{C:attention}破壊{}されたジョーカーごとに{C:chips}+#1#{}チップを獲得",
                    "{C:inactive}（現在{C:chips}+#2#{}チップ）{}",
                },
                unlock = {
                    "{E:1,s:1.3}?????",
                },
            },
            j_paperback_off_epsilon = {
                name = "イプシロン",
                text = {
                    "{C:attention}破壊{}されたジョーカーごとに{C:gold}$#1#{}を獲得",
                },
                unlock = {
                    "{E:1,s:1.3}?????",
                },
            },
            j_paperback_off_omega = {
                name = "オメガ",
                text = {
                    "{C:attention}破壊{}されたジョーカーごとに{C:mult}+#1#{}倍率を獲得する",
                    "{C:inactive}（現在{C:mult}+#2#{}{C:inactive}倍率）{}",
                },
                unlock = {
                    "{E:1,s:1.3}?????",
                },
            },
            j_paperback_off_switch = {
                name = "オフスイッチ",
                text = {
                    "プレイングカードが破壊されたとき、破壊可能な左端の",
                    "ジョーカーを破壊しようと試み、成功した場合、このジョーカーは",
                    "倍率を{X:mult,C:white}X#1#{}獲得する",
                    "{C:inactive}（現在{X:mult,C:white}X#2#{}{C:inactive}倍率）{}",
                },
                unlock = {
                    "{E:1,s:1.3}?????",
                },
            },
            j_paperback_one_shift_more = {
                name = "ワンシフトモア",
                text = {
                    "このジョーカーは、{C:attention}#2#{}[{C:inactive}#3#{}] 枚のスコア{C:hearts}#5#{}カードごとに{X:mult,C:white}X#1#{}",
                    "倍率を獲得する",
                    "{C:inactive}（現在{X:mult,C:white}X#4#{}{C:inactive}倍率）{}",
                },
            },
            j_paperback_one_sin_and_hundreds_of_good_deeds = {
                name = "一つの罪と百の善行",
                text = {
                    "ランク{C:attention}3{}のスコア付きカードとランクのないカードは{C:mult}+#1#{}の倍率を",
                    "加える",
                    "「悪を糧にしている」",
                },
            },
            j_paperback_one_sin_and_hundreds_of_good_deeds_fed = {
                name = "{C:red}一つの罪と百の善行{}",
                text = {
                    "ランク{C:attention}3{}のスコア付きカードとランクのないカードは、デッキ内の",
                    "残りのカードごとに{C:mult}+#1#{}の倍率を加える",
                    "{C:inactive}（現在{C:mult}+#2#{}）{}",
                },
            },
            j_paperback_one_with_nothing = {
                name = "何もないもの",
                text = {
                    "ハンドをプレイした後、手札をすべて捨てます",
                },
                unlock = {
                    "デッキ全体のカードがなくなりました",
                },
            },
            j_paperback_oracle = {
                name = "オラクル",
                text = {
                    "このジョーカーは、使用されたユニークな{C:paperback_minor_arcana}#3#{}カードごとに{X:chips,C:white}X#1#{}",
                    "チップを獲得する",
                    "{C:inactive}（現在{X:chips,C:white}X#2#{}チップ）{}",
                },
                unlock = {
                    "合計{C:attention,E:1}#1#{}{C:paperback_minor_arcana,E:1}小アルカナ{}枚のカードを使用する",
                    "{C:inactive}(#2#)",
                },
            },
            j_paperback_oujia_board = {
                name = "ウィジャボード",
                text = {
                    "{C:spectral}スペクトル{}カードがショップに出現する場合があります。",
                    "ジョーカーは得点する前にシャッフルされる",
                },
                unlock = {
                    "{C:attention,E:1}#1#{}{C:spectral,E:1}スペクトル{}カードを使用する",
                },
            },
            j_paperback_paralyzed = {
                name = "麻痺した",
                text = {
                    "ブラインドをクリアすると、ランダムな{C:tarot}#1#{}カードが生成される",
                },
                unlock = {
                    "{C:attention,E:1}死{}{C:tarot,E:1}タロット{}{C:attention,E:1}#1#{}回使用する",
                    "{C:inactive}(#2#)",
                },
            },
            j_paperback_paranoia = {
                name = "パラノイア",
                text = {
                    "{C:paperback_light_suit}ライトスート{}は、このランで{C:attention}破壊{}された{C:paperback_dark_suit}ダークスート{}のカード",
                    "ごとに得点されると、{C:mult}+#1#{}の倍率を加える",
                    "{C:inactive}（現在{C:mult}+#2#{}{C:inactive}倍率）{}",
                },
                unlock = {
                    "{C:attention,E:1}のみ{}{C:paperback_light_suit,E:1}ライトスート{}を含むデッキを用意する",
                },
            },
            j_paperback_park_postcard = {
                name = "公園ポストカード",
                text = {
                    "このジョーカーはラウンド終了時に{X:mult,C:white}X#1#{}の倍率を獲得するカードが",
                    "デッキに追加または削除されると{C:attention}リセット{}される",
                    "{C:inactive}（現在{X:mult,C:white}X#2#{}{C:inactive}倍率）{}",
                },
                unlock = {
                    "{E:1,C:attention}追加する{}または{E:1,C:attention}破壊{}のプレイングカードを持たずにランで勝利する",
                },
            },
            j_paperback_pear = {
                name = "洋ナシ",
                text = {
                    "プレイしたハンドに{C:attention}#1#{}があれば",
                    "このジョーカーはチップ{C:chips}+#2#{}",
                    "それ以外の場合はチップ{C:chips}-#3#{}",
                    "チップが0未満になると食べられる",
                    "{C:inactive}（現在のチップ {C:chips}+#4#{C:inactive}）",
                },
                unlock = {
                    "{E:1,C:attention}#1#{}を含むハンドだけを",
                    "プレイしてランに勝利する",
                },
            },
            j_paperback_pedrillo = {
                name = "ペドリージョ",
                text = {
                    "最初に得点したクイーンが、プレイされたポーカーハンドの",
                    "惑星カードを生成する",
                    "{C:inactive}（空きスロットが必要）{}",
                },
                unlock = {
                    "{E:1,s:1.3}?????",
                },
            },
            j_paperback_penumbra_phantasm = {
                name = "ペナンブラ・ファンタズム",
                text = {
                    "{C:attention}フェイスカード{}は{C:attention}ランクレス{}とみなされる",
                    "ランクのないカードが{C:attention}得点{}されるたびに、このジョーカーは{C:red}+#1#{}の",
                    "倍率を獲得する",
                    "{C:inactive}（現在{C:red}+#2#{}{C:inactive}倍率）{}",
                },
                unlock = {
                    "1 回のランで{C:attention,E:1}#1# ジャック{}/ {C:hearts,E:1}ハート{}をスコアする",
                },
            },
            j_paperback_percussion_ensemble = {
                name = "打楽器アンサンブル",
                text = {
                    "{X:mult,C:white}X#1#{}デッキ全体の固有のエンハンスメントごとの倍率",
                    "{C:inactive}（現在{X:mult,C:white}X#2#{}{C:inactive}倍率）{}",
                },
                unlock = {
                    "デッキに{C:attention,E:1}#1#{}、{C:attention,E:1}#2#{}、{C:attention,E:1}#3#{}を入れてください",
                },
            },
            j_paperback_photocopy = {
                name = "コピー",
                text = {
                    "右端の{C:attention}ジョーカー{}の能力をコピーする",
                },
                unlock = {
                    "同じ{C:attention,E:1}ジョーカー{}の{C:attention,E:1}2{}を持つ",
                },
            },
            j_paperback_pink_joker = {
                name = "ピンクジョーカー",
                text = {
                    "{C:attention}染み付きカード{}が手札にある間、カードが得点すると",
                    "{C:green}#2#分の#1#{}の確率で永続的に{C:money}+$#3#{}を獲得",
                    "すでにこの金額ボーナスが付いているカードは対象外",
                },
                unlock = {
                    "デッキに少なくとも{C:attention,E:1}#1# 汚れたカード{}が入っている",
                },
            },
            j_paperback_pinot_noir = {
                name = "ピノ・ノワール",
                text = {
                    "今後{C:attention}#1#{}回、{C:attention}#2#{}が発動するたびに",
                    "そのカードが永続的に倍率{C:mult}+#3#{}を得る",
                },
                unlock = {
                    "{C:attention,E:1}追加倍率{}が{C:mult,E:1}+#1#{}のカードを持つ",
                },
            },
            j_paperback_plague_doctor = {
                name = "ペスト医師",
                text = {
                    "プレイしたハンドが#2#の場合、得点カードを{C:attention}使徒{}に変換する。",
                    "手に持った各{C:attention}使徒{}は{X:mult,C:white}X#1#{}の倍率を加える",
                },
                unlock = {
                    "{C:attention}#1#{}{C:paperback_ego_gift,E:1}E.G.Oギフト{}を発見する",
                },
            },
            j_paperback_planchette = {
                name = "プランシェット",
                text = {
                    "{C:spectral}スペクトル{}カードが使用されると、このジョーカーは{X:mult,C:white}X#1#{}の倍率を",
                    "獲得する",
                    "{C:inactive}（現在{X:mult,C:white}X#2#{}{C:inactive}倍率）{}",
                },
                unlock = {
                    "1 回の実行で{C:attention,E:1}#1#{}{C:spectral,E:1}#2#{}のカードを使用する",
                },
            },
            j_paperback_plastic_wrap = {
                name = "ラップ",
                text = {
                    "{C:attention}#2#{}が{C:attention}破壊{}されたとき、デッキ全体の{C:attention}#1#{}の未強化カードを{C:attention}#2#{}に",
                    "強化する",
                },
            },
            j_paperback_pocket_pair = {
                name = "ポケットペア",
                text = {
                    "ラウンド開始時に抽選される{C:attention}#2#{}ごとに{C:money}$#1#{}を獲得",
                },
                unlock = {
                    "{C:attention,E:1}#1#{}を最もプレイしたハンドとしてランで勝利する",
                },
            },
            j_paperback_pointy_stick = {
                name = "とがった棒",
                text = {
                    "{X:mult,C:white}X#1#{}別の「スティック」ジョーカーを持っている場合の倍率",
                    "{C:inactive}（現在{X:mult,C:white}X#2#{}{C:inactive}倍率）{}",
                },
                unlock = {
                    "食べる{C:attention,E:1}#1#{}",
                },
            },
            j_paperback_ponzu = {
                name = "ポン酢",
                text = {
                    "{V:1}#4#{}を手に持つと、ラウンド中に発動しなかった場合、{C:green}#2#分の",
                    "{C:green}#1#{}に{C:money}$#3#{}{C:red,E:1}消費された{}を与える可能性がある。ラウンド終了時に",
                    "スートが変更される",
                },
                unlock = {
                    "デッキ内の{E:1,C:attention}#1#{}{E:1,C:diamonds}ダイヤ{}カードを強化する",
                },
            },
            j_paperback_pool_table = {
                name = "ビリヤード台",
                text = {
                    "ラウンドの最初のハンドで{C:attention}フェイスカード{}が得点されなかった",
                    "場合は、プレイされたポーカーハンドに対して{C:planet}#1#{}カードを生成する",
                    "{C:inactive}（空きスロットが必要）{}",
                },
            },
            j_paperback_pop_stick = {
                name = "ポップスティック",
                text = {
                    "{X:mult,C:white}X#1#{}別の「スティック」ジョーカーを持っている場合の倍率",
                    "{C:inactive}（現在{X:mult,C:white}X#2#{}{C:inactive}倍率）{}",
                },
                unlock = {
                    "食べる{C:attention,E:1}#1#{}",
                },
            },
            j_paperback_popsicle_stick = {
                name = "アイスキャンデーの棒",
                text = {
                    "{X:mult,C:white}X#1#{}別の「スティック」ジョーカーを持っている場合の倍率",
                    "{C:inactive}（現在{X:mult,C:white}X#2#{}{C:inactive}倍率）{}",
                },
                unlock = {
                    "食べる{C:attention,E:1}#1#{}",
                },
            },
            j_paperback_power_surge = {
                name = "電力サージ",
                text = {
                    "プレイされた{C:attention}#1#{}は、得点されると{X:mult,C:white}X#2#{}の倍率を与え、{C:attention}手札{}に",
                    "あるカードを{C:red}破壊{}する{C:green}#4#分の#3#{}の可能性がある",
                },
                unlock = {
                    "{C:attention,E:1}スチール7{}を破壊する",
                },
            },
            j_paperback_prescript = {
                name = "処方箋",
                text = {
                    "{C:attention}ラウンド{}の{C:attention}最初{}の手に{C:attention}#1#{}が含まれている場合、このラウンドで",
                    "プレイされたすべてのカードを再発動するポーカーハンドは",
                    "ラウンドごとに変わります",
                    "{C:inactive}（現在{V:1}#2#{}）{}",
                },
                unlock = {
                    "1 回のランで{C:attention,E:1}#1#{}またはそれ以上の{C:attention,E:1}秘密の手{}をプレイする",
                },
            },
            j_paperback_pride_flag_no_spectrums = {
                name = "プライドフラッグ",
                text = {
                    "{C:chips}+#1#{}ポーカーハンドの{C:attention}ユニークな{}スートごとのチップ",
                },
                unlock = {
                    "{C:attention,E:1}#1#{}スートと{C:attention,E:1}野生{}カードを得点するハンドをプレイする",
                },
            },
            j_paperback_pride_flag_spectrums = {
                name = "プライドフラッグ",
                text = {
                    "ゲイン{C:chips}+#1#{}プレイしたハンドに{C:attention}スペクトラム{}が含まれる場合は",
                    "チッププレイしたハンドに{C:attention}ストレート{}が含まれる場合はリセット",
                    "{C:inactive}（現在{C:chips}+#2#{}チップ）{}",
                },
                unlock = {
                    "{E:1,C:attention,E:1}スペクトラム{}をプレイする",
                },
            },
            j_paperback_prince_of_darkness = {
                name = "闇の王子",
                text = {
                    "得点計算ハンドに{C:hearts}#5#{}と{C:attention}#1#{}の他のユニークなスートが含まれて",
                    "いる場合、このジョーカーはこのハンドと{C:attention}次{}の{C:attention}#3#{}に{X:mult,C:white}X#2#{}の倍率を",
                    "加える",
                    "{C:inactive}（現在次の{C:attention}#4#{}ハンド）{}",
                },
                unlock = {
                    "{C:attention,E:1}#1#{}スートを得点するハンドをプレイする",
                },
            },
            j_paperback_prism = {
                name = "プリズム",
                text = {
                    "プレイしたハンドに{C:attention}#1#{}が含まれている場合、得点したすべての",
                    "カードをランダムな異なるスートに変える",
                },
                unlock = {
                    "{C:attention,E:1}ガラス{}{C:paperback_crowns,E:1}クラウン{}または{C:paperback_stars,E:1}星{}を用意してください",
                },
            },
            j_paperback_protocol = {
                name = "プロトコル",
                text = {
                    "{C:attention}+#1#{}ブースターパックのサイズ",
                },
                unlock = {
                    "{C:attention,E:1}#1#{}ブースターパックを 1 回の実行で開ける",
                },
            },
            j_paperback_punch_card = {
                name = "パンチカード",
                text = {
                    "{C:attention}#1#{}ラウンド後、このカードを{C:attention}#3#{}アンティで売却する",
                    "（現在{C:attention}#2#{}/{C:inactive}#1#{}）",
                },
                unlock = {
                    "{C:attention,E:1}#1#{}{C:attention,E:1}#2#{}回獲得する",
                    "{C:inactive}(#3#)",
                },
            },
            j_paperback_pyrite = {
                name = "黄鉄鉱",
                text = {
                    "{V:1}#1#{}をプレイすると、得点時にランダムな{C:tarot}タロット{}カードを生成する",
                    "{C:green}#3#分の#2#{}の可能性がある",
                    "{C:inactive}（空きスロットが必要）{}",
                },
                unlock = {
                    "{E:1,C:paperback_crowns}#2#{}のスートを持つカードを少なくとも{E:1,C:attention}#1#{}デッキに入れてく",
                    "ださい",
                },
            },
            j_paperback_quartz = {
                name = "石英",
                text = {
                    "得点したスターは、お互いにプレイしたスターに対して{X:chips,C:white}X1{}チップ、",
                    "{X:chips,C:white}+X#1#{}を加える",
                },
                unlock = {
                    "{E:1,C:paperback_stars}#2#{}のスートを持つカードを少なくとも{E:1,C:attention}#1#{}デッキに入れてく",
                    "ださい",
                },
            },
            j_paperback_quick_fix = {
                name = "クイックフィックス",
                text = {
                    "{C:attention}+#1#{}ハンドサイズ{C:green}#3#分の#2#{}ラウンド終了時にこのカードが破壊",
                    "される可能性...",
                },
                unlock = {
                    "ラン中にハンドサイズを{C:attention,E:1}#1#{}以上のカードだけ増やす",
                },
            },
            j_paperback_ready_to_fly = {
                name = "飛行準備完了",
                text = {
                    "隣接するジョーカーが発動するたびに、このジョーカーは{X:chips,C:white}X#2#{}",
                    "チップを獲得する",
                    "{C:inactive}（現在{X:chips,C:white}X#1#{}チップ）{}",
                },
                unlock = {
                    "ハンド中に{C:chips,E:1}#1#{}以上のチップを獲得する",
                },
            },
            j_paperback_red_key = {
                name = "赤い鍵",
                text = {
                    "ブラインドが選択されている場合、{C:paperback_temporary}一時的{}な",
                    "{C:red}ウルトラシークレット{}ジョーカーを生成する。売却すると、",
                    "すべてのジョーカーから{C:paperback_temporary}一時的{}なジョーカーを削除する",
                },
                unlock = {
                    "1 回のランで{C:attention,E:1}#1# キングス{}/ {C:hearts,E:1}ハート{}をスコアする",
                },
            },
            j_paperback_red_sun_in_the_sky = {
                name = "空の赤い太陽",
                text = {
                    "得点した{C:paperback_light_suit}ライトスート{}は、このラウンドで得点した",
                    "{C:paperback_light_suit}ライトスート{}ごとに{C:mult}+#1#{}倍率を加える",
                    "{C:inactive}（現在{C:mult}+#2#{}{C:inactive}倍率）{}",
                },
                unlock = {
                    "{C:attention,E:1}のみ{}{C:paperback_light_suit,E:1}ライトスート{}を含むデッキを用意する",
                },
            },
            j_paperback_redscreen = {
                name = "レッドスクリーン",
                text = {
                    "デッキ全体内の{C:paperback_light_suit}ライトスート{}ごとに{X:mult,C:white}+X#1#{}倍率、およびデッキ",
                    "全体の{C:paperback_dark_suit}ダークスート{}ごとに{X:mult,C:white}-X#1#{}倍率",
                    "{C:inactive}（現在{X:mult,C:white}X#2#{}{C:inactive}倍率）{}",
                },
                unlock = {
                    "{C:attention,E:1}のみ{}{C:paperback_light_suit,E:1}ライトスート{}を含むデッキを用意する",
                },
            },
            j_paperback_reference_card = {
                name = "リファレンスカード",
                text = {
                    "すべての 9 の基本ポーカーハンドがプレイされるたびに、{X:mult,C:white}X#1#{}の",
                    "倍率が与えられます",
                    "{C:inactive}（現在{X:mult,C:white}X#2#{}{C:inactive}倍率）{}",
                },
                unlock = {
                    "1 回の実行ですべての塁{C:attention,E:1}ポーカーハンド{}をプレイする",
                },
            },
            j_paperback_resurrections = {
                name = "復活",
                text = {
                    "{C:green}#2#分の#1#{}売れた{C:attention}ジョーカー{}を返し、{C:money}-$#3#{}売却額で追加の",
                    "{C:dark_edition}ネガティブ{}コピーを生成するチャンス{S:1.1,C:red,E:2}自壊する{}{s:0.8}失敗した場合{}、",
                    "チャンスは{s:0.8,C:green}#4#{}増える",
                },
                unlock = {
                    "同じ{C:attention,E:1}ジョーカー{}の{C:attention,E:1}2{}があり、1 つは{C:dark_edition,E:1}ネガティブ{}",
                },
            },
            j_paperback_river = {
                name = "川",
                text = {
                    "プレイしたハンドに{C:attention}5{}{C:attention}得点{}{C:attention}カード{}が含まれている場合、最も得点の",
                    "低いカードのチップ値の半分を{C:money}お金{}として獲得する",
                    "{C:inactive}（最大{C:money}$#1#{}）{}",
                },
                unlock = {
                    "{C:attention,E:1}捨てる{}を使用せずに{C:attention,E:1}#1#{}連続ラウンドで勝利する",
                },
            },
            j_paperback_rock_candy = {
                name = "ロックキャンディ",
                text = {
                    "得点{C:paperback_stars}#4#{}与える{C:mult}+#1#{}倍率{C:green}#3#分の#2#{}ラウンド終了時にこのカードが",
                    "食べられる確率",
                },
            },
            j_paperback_rockin_stick = {
                name = "ロッキンスティック",
                text = {
                    "あなたが持っている「スティック」ジョーカーごとに{X:mult,C:white}X#1#{}の倍率を",
                    "加える",
                    "{C:inactive}（現在{X:mult,C:white}X#2#{}{C:inactive}倍率）{}",
                },
                unlock = {
                    "食べる{C:attention,E:1}#1#{}",
                },
            },
            j_paperback_rosary_beads = {
                name = "ロザリオビーズ",
                text = {
                    "得点したハンドに{C:attention}#1#{}以上の{C:hearts}#3#{}が含まれている場合、{C:money}$#2#{}を",
                    "獲得する",
                },
                unlock = {
                    "{C:hearts,E:1}ハート{}{C:attention,E:1}フラッシュファイブ{}をプレイする",
                },
            },
            j_paperback_roulette = {
                name = "ルーレット",
                text = {
                    "ハンドがプレイされるたびに、このジョーカーはランダムな",
                    "ランクとスートを選択する。得点したカードは、スートと一致する",
                    "場合は{C:money}$#1#{}、ランクと一致する場合は{C:money}$#2#{}、完全に一致する場合は",
                    "{C:money}$#3#{}を獲得する",
                },
                unlock = {
                    "{C:attention,E:1}スペクトラムファイブ{}をプレイする",
                },
            },
            j_paperback_royalty_free = {
                name = "ロイヤリティフリー",
                text = {
                    "各ラウンドで最初に得点した{C:attention}非顔{}カードは永続的に{C:chips}+#1#{}チップを",
                    "獲得する",
                },
            },
            j_paperback_sacred_heart = {
                name = "セイクリッドハート",
                text = {
                    "プレイしたハンドが{C:attention}#1#{}の場合、{C:attention}最初{}に得点したカード{C:attention}1{}",
                    "{C:red,E:1}パーマネントリトリガー{}を与え、他の得点したカードをすべて",
                    "破壊する",
                },
                unlock = {
                    "デッキに{E:1,C:hearts}ハート{}のうち{E:1,C:attention}エース{}のみを入れる",
                },
            },
            j_paperback_sacrificial_lamb = {
                name = "犠牲の子羊",
                text = {
                    "{C:attention}破壊{}されたカードまたはジョーカーごとに{C:mult}+#1#{}の倍率を獲得する",
                    "{C:inactive}（現在{C:mult}+#2#{}{C:inactive}倍率）{}",
                },
                unlock = {
                    "実行中に{C:attention,E:1}#1#{}カードを破壊する",
                },
            },
            j_paperback_sake_cup = {
                name = "ぐい呑み",
                text = {
                    "ハンドがプレイされた後、手札の{C:attention}#1#{}には、プレイされた",
                    "ポーカーハンドの惑星カードを生成する可能性がある{C:green}#3#",
                    "{C:green}分の#2#{}",
                    "{C:inactive}（空きスロットが必要）{}",
                },
                unlock = {
                    "{C:attention,E:1}ポーカーハンド{}を{C:attention,E:1}#1#{}レベルに引き上げる",
                },
            },
            j_paperback_satellite_array = {
                name = "衛星アレイ",
                text = {
                    "このジョーカーは、使用された{C:planet}#4#{}カードごとに{C:chips}+#1#{}チップを",
                    "獲得し、プレイしたハンドごとに{C:chips}-#2#{}チップを失う",
                    "{C:inactive}（現在{C:chips}+#3#{}チップ）{}",
                },
                unlock = {
                    "{C:planet,E:1}#1#{}バウチャーを取得する",
                },
            },
            j_paperback_scorecard = {
                name = "スコアカード",
                text = {
                    "{C:attention}#1#{}[{C:inactive}#2#{}] {V:1}#3#{}が破棄されるたびに、このジョーカーは他の",
                    "ジョーカーの売却額を + 倍率として獲得する",
                    "{C:inactive}（現在{C:mult}+#4#{}{C:inactive}倍率）{}",
                },
                unlock = {
                    "アンティをクリア 9",
                },
            },
            j_paperback_seven_stars = {
                name = "セブンスター",
                text = {
                    "再発動してすべて得点{C:paperback_stars}#1#{}",
                },
                unlock = {
                    "デッキに{C:attention,E:1}まさに#1#{}{C:paperback_stars,E:1}星{}を入れてください",
                },
            },
            j_paperback_shabu_shabu = {
                name = "しゃぶしゃぶ",
                text = {
                    "{C:attention}+#1#{}ジョーカースロット{C:attention}ボスブラインド{}クリア後{C:attention}#2#{}減る",
                },
                unlock = {
                    "{C:attention,E:1}#1# 食品{}{C:attention,E:1}ジョーカー{}を一度に行う",
                },
            },
            j_paperback_shadowmantle = {
                name = "シャドウマントル",
                text = {
                    "{V:1}#1#{}が得点した場合、{s:0.9,C:inactive}ラウンドごとに 1 回{}、{C:green}#3#分の#2#{}で",
                    "{C:dark_edition}ネガティブ{}{C:attention}タグ{}を生成する可能性がある",
                },
                unlock = {
                    "少なくとも{E:1,C:attention}#1#{}{C:dark_edition,E:1}ネガティブ{}ジョーカーを持っている",
                },
            },
            j_paperback_shinzaemon = {
                name = "新左衛門",
                text = {
                    "得点したハンドに{C:attention}#1#{}カードが含まれている場合、{C:attention}#1#{}{C:attention}番目{}の",
                    "カードは永続的に{X:mult,C:white}X#2#{}の倍率を獲得する",
                },
                unlock = {
                    "{E:1,s:1.3}?????",
                },
            },
            j_paperback_shooting_star = {
                name = "シューティングスター",
                text = {
                    "{V:1}#1#{}が得点すると、プレイされたポーカーハンドの",
                    "惑星カードを生成するチャンスが{C:green}#3#分の#2#{}にあります",
                },
                unlock = {
                    "{C:attention,E:1}スペクトラム{}{C:attention,E:1}手{}を{C:attention,E:1}#1#{}レベルに引き上げる",
                },
            },
            j_paperback_shopkeep = {
                name = "店主",
                text = {
                    "{C:attention}#1#{}{C:attention}ブラインド{}を倒すごとに{C:attention}#3#{}を獲得する （{C:inactive}#2#{}/{C:inactive}#1#{}）",
                    "{C:attention}ボスブラインド{}を倒すと{C:attention}#4#{}を獲得",
                },
                unlock = {
                    "1 つのショップで{C:money,E:1}$50{}を費やす",
                },
            },
            j_paperback_shopping_center = {
                name = "ショッピングセンター",
                text = {
                    "{C:money}ショップ{}の{C:attention}カード枠{}が1つ増える",
                },
                unlock = {
                    "ショップのカード枠を{C:attention,E:1}#1#{}個以上にする",
                    "{s:0.8}または",
                    "{s:0.8}{C:attention,E:1,s:0.8}#2#{}でランを開始する",
                },
            },
            j_paperback_showdown = {
                name = "ショーダウン",
                text = {
                    "{C:attention}手札にある{}{V:1}#1#{}と{V:2}#2#{}は",
                    "{C:green}#4#分の#3#{}の確率で{C:money}$#5#{}を獲得",
                },
                unlock = {
                    "{C:paperback_stars,E:1}スター{}と{C:paperback_crowns,E:1}クラウン{}が",
                    "両方得点する{C:attention,E:1}#1#{}をプレイする",
                },
            },
            j_paperback_shugi_bukuro = {
                name = "主義ブクロ",
                text = {
                    "ブラインドがスキップされると{C:money}$#1#{}を獲得する毎回{C:money}$#2#{}ずつ",
                    "増える",
                },
                unlock = {
                    "{E:1,C:attention}#1#{}タグを 1 回の実行で発動する",
                },
            },
            j_paperback_shuttle = {
                name = "シャトル",
                text = {
                    "ラウンドの{C:attention}最初{}にプレイしたハンドは、プレイしたハンドの",
                    "レベルの 2 倍に等しい{C:money}お金{}を加える",
                    "{C:inactive}（最大{C:money}$#1#{}）{}",
                },
                unlock = {
                    "レベル{C:attention,E:1}#1#{}実行中に異なるハンド",
                },
            },
            j_paperback_silent_assassin = {
                name = "サイレントアサシン",
                text = {
                    "{C:attention}#1#{}と{C:attention}#2#{}がスコアを獲得すると{C:mult}+#3#{}の倍率が与えられます{C:attention}#5#{}[",
                    "{C:inactive}#6#{}] 枚のカードが{C:attention}破壊{}されるごとに{C:mult}+#4#{}の倍率が増える",
                },
                unlock = {
                    "実行中に{C:attention,E:1}#1#{}カードを破壊する",
                },
            },
            j_paperback_sinister_minds = {
                name = "シニスター・マインド",
                text = {
                    "{C:attention}#7#{}をプレイすると、得点した全カードを{C:attention}#1#{}回再発動",
                    "{C:spectral}#5#{}カードを{C:attention}#4#{}枚使うと再発動回数が{C:attention}#3#{}増え、",
                    "次に必要な枚数が{C:attention}#9#{}枚増える",
                    "{C:inactive}（次の強化まで{C:attention}#8#{C:inactive}枚の#5#カードが必要）",
                },
                unlock = {
                    "{E:1,C:attention}#1#{}を最もプレイしたハンドとしてランで勝利する",
                },
            },
            j_paperback_skydiver = {
                name = "スカイダイバー",
                text = {
                    "{C:white,X:mult}X#1#{}得点したすべてのカードがこのラウンドで得点した{C:attention}最低",
                    "{C:attention}ランク{}{C:attention}以下{}の場合の倍率",
                    "{C:inactive}（プレイ終了時に更新）{}",
                    "{C:inactive}（現在{C:attention}#2#{}）{}",
                },
            },
            j_paperback_small_scale_onshore_wind = {
                name = "小規模陸上風力発電",
                text = {
                    "このジョーカーは、正確に{C:attention}#2#{}のカードを連続して捨てるごとに",
                    "{C:mult}+#1#{}の倍率を獲得する",
                    "{C:inactive}（現在{C:mult}+#3#{}{C:inactive}倍率）{}",
                },
            },
            j_paperback_soft_taco = {
                name = "ソフトタコス",
                text = {
                    "{X:mult,C:white}X#1#{}倍率{C:green}#3#分の#2#{}ラウンド終了時にこのカードが食べられる",
                    "確率",
                },
            },
            j_paperback_solar_eclipse = {
                name = "日食",
                text = {
                    "得点した{C:paperback_light_suit}ライトスート{}は{V:1}#1#{}になる",
                },
                unlock = {
                    "{C:paperback_crowns,E:1}クラウン{}カードを取得する",
                },
            },
            j_paperback_solar_system = {
                name = "太陽系",
                text = {
                    "すべての{C:attention}レベル{}の{X:mult,C:white}X#1#{}倍率をすべての9 ベース{C:planet}#3#{}のシェアに",
                    "加える",
                    "{C:inactive}（現在{X:mult,C:white}X#2#{}{C:inactive}倍率）{}",
                },
                unlock = {
                    "実行中に{C:attention,E:1}#1#{}異なる{C:planet,E:1}#2#{}カードを使用する",
                },
            },
            j_paperback_solemn_lament = {
                name = "厳粛な嘆き",
                text = {
                    "得点したハンドにダークスートと{C:paperback_light_suit}ライトスート{}の両方が含まれ",
                    "ている場合、このジョーカーは{X:mult,C:white}X#1#{}倍率を獲得する",
                    "{C:inactive}（現在{X:mult,C:white}X#2#{}{C:inactive}倍率）{}",
                },
                unlock = {
                    "1 回の実行で{C:attention,E:1}#1#{}回カードを獲得する",
                },
            },
            j_paperback_sommelier = {
                name = "ソムリエ",
                text = {
                    "ラウンドの最初の捨て札に{C:attention}#1#{}が含まれている場合、最初に捨て",
                    "られた{C:attention}#1#{}にランダムな{C:attention}シール{}が付く",
                },
                unlock = {
                    "{C:attention,E:1}汚れたカード{}を{C:attention,E:1}赤いシール{}でプレイする",
                },
            },
            j_paperback_spirit_box = {
                name = "スピリットボックス",
                text = {
                    "プレイしたハンドに{C:attention}#1#{}が含まれている場合、ランダム",
                    "な{C:attention}タグ{}を作成する",
                    "{C:inactive}(ラウンドごとに1回){}",
                    "{s:0.75}ラウンド終了時にポーカーハンドが変更{}",
                },
                unlock = {
                    "{C:attention,E:1}#2#{}をプレイせずに、{C:attention,E:1}#1#{}の数字札を含むハンドを獲得する",
                },
            },
            j_paperback_spotty_joker = {
                name = "スポッティジョーカー",
                text = {
                    "このジョーカーは{C:attention}得点ハンド{}の{C:attention}#2#{}ごとに{X:mult,C:white}X#1#{}の倍率を獲得する",
                    "{C:inactive}（現在{X:mult,C:white}X#3#{}{C:inactive}倍率）{}",
                },
                unlock = {
                    "{E:1,C:attention}#1#{}を含むハンドのみをプレイしてボスブラインドを倒す",
                },
            },
            j_paperback_stamp = {
                name = "スタンプ",
                text = {
                    "{C:green}#2#分の#1#{}このジョーカーが獲得する確率{C:chips}+#3#{}{C:attention}シール{}のある",
                    "カードが得点されるとチップ",
                    "{C:inactive}（現在{C:chips}+#4#{}チップ）{}",
                },
                unlock = {
                    "{C:attention,E:1}#1#{}のスコアを獲得したアザラシでハンドをプレイする",
                },
            },
            j_paperback_stardrop = {
                name = "スタードロップ",
                text = {
                    "スコア{V:1}#2#{}{C:chips}チップ{}の残高{C:attention}#1#%{}と{C:mult}倍率{}",
                },
                unlock = {
                    "{C:paperback_stars,E:1}星{}のみで構成されるデッキを構築する",
                },
            },
            j_paperback_stella_octangula = {
                name = "ステラオクタングラ",
                text = {
                    "各ラウンドで最初にプレイされた{V:1}#2#{}には{X:chips,C:white}X#1#{}チップが与えられ",
                    "ます",
                },
                unlock = {
                    "{C:paperback_stars,E:1}星{}{C:attention,E:1}フラッシュ{}をプレイする",
                },
            },
            j_paperback_stereoscopic_specs = {
                name = "立体視仕様",
                text = {
                    "{C:attention}ボスブラインド{}を倒した後に最後に使用したタグの{C:attention}コピー{}を生成する",
                    "{C:inactive}（現在{C:attention}#1#{}）{}",
                },
                unlock = {
                    "{C:attention,E:1}#1#{}ダブルタグを同時に押する",
                },
            },
            j_paperback_sticky_stick = {
                name = "スティッキースティック",
                text = {
                    "{X:mult,C:white}X#1#{}別の「スティック」ジョーカーを持っている場合の倍率",
                    "{C:inactive}（現在{X:mult,C:white}X#2#{}{C:inactive}倍率）{}",
                },
                unlock = {
                    "食べる{C:attention,E:1}#1#{}",
                },
            },
            j_paperback_stout = {
                name = "スタウト",
                text = {
                    "次の{C:attention}#1#{}がプレイして得点した{V:1}#2#{}が得点すると、永続的に{C:chips}+#3#{}",
                    "チップを獲得する",
                },
                unlock = {
                    "{C:attention,E:1}#1#{}{C:spades,E:1}#2#{}を 1 回の実行でフラッシュする",
                },
            },
            j_paperback_subterfuge = {
                name = "ごまかし",
                text = {
                    "ラウンドごとに{C:attention}最初にプレイした{}{C:attention}ハンド{}を破壊する",
                },
                unlock = {
                    "1ラウンドでデッキを少なくとも{E:1,C:attention}#1#{}カード減らす",
                },
            },
            j_paperback_summoning_circle = {
                name = "召喚サークル",
                text = {
                    "プレイしたハンドに{C:attention}#1#{}が含まれている場合、{C:attention}ランダムな消耗",
                    "{C:attention}カード{}のコピーを生成する",
                    "{C:inactive}（空きスロットが必要）{}",
                },
                unlock = {
                    "{C:attention,E:1}秘密の手{}をプレイする",
                },
            },
            j_paperback_superjoker = {
                name = "スーパージョーカー",
                text = {
                    "再発動すると、最初の手札にあるすべてのカードが後続の手札に",
                    "{X:mult,C:white}X#1#{}の倍率を加える",
                },
                unlock = {
                    "{C:paperback_light_suit,E:1}ライトスート{}を破壊する",
                },
            },
            j_paperback_surfer = {
                name = "サーファー",
                text = {
                    "このジョーカーは、ラウンド終了時に手札にある{C:attention}#2#{}ごとに{C:chips}+#1#{}",
                    "チップを獲得する",
                    "{C:inactive}（現在{C:chips}+#3#{}チップ）{}",
                },
                unlock = {
                    "{C:attention,E:1}フェイスカード{}を{C:attention,E:1}#1#{}に変える",
                },
            },
            j_paperback_sweet_stick = {
                name = "スイートスティック",
                text = {
                    "あなたが持っている「スティック」ジョーカーごとに{X:mult,C:white}X#1#{}の倍率を",
                    "加える",
                    "{C:inactive}（現在{X:mult,C:white}X#2#{}{C:inactive}倍率）{}",
                },
                unlock = {
                    "食べる{C:attention,E:1}#1#{}",
                },
            },
            j_paperback_takoyaki = {
                name = "たこ焼き",
                text = {
                    "{C:attention}#1#{}が得点すると、{C:money}$#2#{}{C:green}#4#分の#3#{}が{C:attention}#1#{}が得点したときにこの",
                    "ジョーカーを食べるチャンスが与えられます",
                },
                unlock = {
                    "デッキに{C:attention,E:1}8s{}が入っていない",
                },
            },
            j_paperback_tanghulu = {
                name = "タンフル",
                text = {
                    "得点{C:paperback_crowns}#4#{}与える{C:mult}+#1#{}倍率{C:green}#3#分の#2#{}ラウンド終了時にこのカードが",
                    "食べられる確率",
                },
            },
            j_paperback_teapot = {
                name = "ティーポット",
                text = {
                    "{C:attention}#2#{}が{C:attention}得点する{}たびに",
                    "このジョーカーはチップ{C:blue}+#1#{}",
                    "{C:inactive}（現在のチップ {C:blue}+#3#{C:inactive}）",
                },
            },
            j_paperback_technology = {
                name = "テクノロジー",
                text = {
                    "このジョーカーは、このラウンドでプレイされた{C:attention}#2#{}の得点ごとに",
                    "{X:mult,C:white}X#1#{}の倍率を加える",
                    "{C:inactive}（現在{X:mult,C:white}X#3#{}{C:inactive}倍率）{}",
                },
                unlock = {
                    "{C:attention,E:1}#1#{}{C:attention,E:1}倍率カード{}を含むハンドをプレイする",
                },
            },
            j_paperback_telamon = {
                name = "テラモン",
                text = {
                    "{C:attention}勝ち手{}に{C:attention}#1#{}が含まれている場合、ランダムなソード{C:paperback_minor_arcana}#2#{}カードを",
                    "生成する",
                    "{C:inactive}（空きスロットが必要）{}",
                },
                unlock = {
                    "1 回の実行で{C:attention,E:1}#1#{}{C:paperback_minor_arcana,E:1}剣{}{C:paperback_minor_arcana,E:1}小アルカナ{}を使用する",
                },
            },
            j_paperback_the_batter = {
                name = "ザ・バッター",
                text = {
                    "得点した{C:attention}#3#{}は破壊される",
                    "{C:inactive}({C:attention}#1#{C:inactive}/{C:attention}#2#...{C:inactive})",
                    "{s:0.9,C:inactive}（スペースは必要ない...？）{}",
                },
            },
            j_paperback_the_dynasty = {
                name = "王朝",
                text = {
                    "プレイしたハンドに{C:attention}#2#{}が",
                    "含まれていれば倍率{X:mult,C:white}X#1#{}",
                },
                unlock = {
                    "{E:1,C:attention,E:1}スペクトラム{}をプレイする",
                },
            },
            j_paperback_the_girl_from_024 = {
                name = "024の女の子",
                text = {
                    "このジョーカーは、ラウンド終了時に手札のクイーンごとに",
                    "{X:mult,C:white}X#1#{}の倍率を獲得する",
                    "{C:inactive}（現在{X:mult,C:white}X#2#{}{C:inactive}倍率）{}",
                },
                unlock = {
                    "{C:attention,E:1}#1#{}以上{C:attention,E:1}クイーンズ{}を手に持つ",
                },
            },
            j_paperback_the_normal_joker = {
                name = "ノーマルジョーカー",
                text = {
                    "すべての{C:blue}コモン{}{C:attention}ジョーカー{}を再発動する",
                },
                unlock = {
                    "{C:attention,E:1}#1#{}{C:blue,E:1}一般{}ジョーカーを同時に持つ",
                },
            },
            j_paperback_the_one_who_waits = {
                name = "待ちし者",
                text = {
                    "{V:1}#1#{}が得点するたびに",
                    "{C:green}#3#分の#2#{}の確率で、このジョーカーの",
                    "倍率の乗数が{X:mult,C:white}X#4#{}上昇",
                    "{C:inactive}（現在の倍率 {X:mult,C:white}X#8#{C:inactive}）",
                    "{C:green}#6#分の#5#{}の確率で",
                    "タロットカード{C:tarot}#7#{}を生成",
                    "{C:inactive}（空きスロットが必要）",
                },
                unlock = {
                    "{C:paperback_crowns,E:1}クラウン{}のカードを1枚破壊する",
                },
            },
            j_paperback_the_quiet = {
                name = "静かな",
                text = {
                    "デッキ全体内の{C:attention}#2#{}以下の各カードの{X:mult,C:white}X#1#{}倍率",
                    "{C:inactive}（現在{X:mult,C:white}X#3#{}{C:inactive}倍率）{}",
                },
                unlock = {
                    "デッキにカードが{C:attention,E:1}#1#{}以下あります",
                },
            },
            j_paperback_the_strongest = {
                name = "最強",
                text = {
                    "このジョーカーは、E.G.Oギフトが販売されるか、",
                    "{C:attention}ボスブラインド{}を倒すときに E.G.Oギフトを{C:paperback_ego_gift}腐食する{}と、倍率が",
                    "{X:mult,C:white}X#1#{}を獲得する",
                    "{C:inactive}（現在{X:mult,C:white}X#2#{}{C:inactive}倍率）{}",
                },
                unlock = {
                    "{C:paperback_ego_gift,E:1}E.G.Oギフト{}を販売する",
                },
            },
            j_paperback_the_sun = {
                name = "太陽",
                text = {
                    "得点したスートがすべて軽い場合、このジョーカーは{C:mult}+#1#{}倍率を",
                    "獲得する。 軽くないスートが得点した場合、このジョーカーは",
                    "{C:mult}-#1#{}倍率を失う",
                    "{C:inactive}（現在{C:mult}+#2#{}{C:inactive}倍率）{}",
                },
            },
            j_paperback_the_sun_rises = {
                name = "太陽が昇る",
                text = {
                    "基本チップを{C:chips}#1#{}に設定し、得点した{C:paperback_light_suit}ライトスート{}は{C:chips}+#2#{}",
                    "チップを与え、{C:chips}+#3#{}によって与えられるチップを増やす",
                },
                unlock = {
                    "1 回の実行で{C:attention,E:1}太陽{}{C:tarot,E:1}タロット{}{C:attention,E:1}#1#{}を使用する",
                },
            },
            j_paperback_the_wonder_of_you = {
                name = "あなたの不思議さ",
                text = {
                    "{C:attention}ボスブラインド{}を選択するとき、ランダムな{C:attention}タグ{}を 2 つ生成する",
                },
                unlock = {
                    "{C:attention,E:1}琥珀色のドングリ{}ボスブラインドを無効化せずに倒す",
                },
            },
            j_paperback_the_world = {
                name = "世界",
                text = {
                    "すべての{C:blue}ハンド{}とディスカードはラウンドの{C:attention}最初{}と{C:attention}最後{}とみなさ",
                    "れる",
                },
                unlock = {
                    "アンティレベル{E:1,C:attention}#1#{}に到達する",
                },
            },
            j_paperback_thornring = {
                name = "ソーンリング",
                text = {
                    {
                        "{C:attention}#1#{}がプレイされると、プレイしたハンドを破壊し、ランダムな",
                        "{C:spectral}スペクトル{}カードを生成する",
                        "{C:inactive}（空きスロットが必要）{}",
                    },
                    {
                        "* {C:red}#2#{}残り",
                    },
                },
                unlock = {
                    "{C:hearts,E:1}ハート{}だけのデッキを持つ",
                },
            },
            j_paperback_thornring_weird = {
                name = "ソーンリング",
                text = {
                    {
                        "プレイされた{V:1}#1#{}は{C:attention}破壊{}される",
                    },
                    {
                        "{E:1}T H A N K  Y O U{}",
                    },
                },
            },
            j_paperback_tian_tian = {
                name = "ティアン・ティアン",
                text = {
                    "トランプが{C:attention}破壊{}された場合、このジョーカーは{X:mult,C:white}X#1#{}の倍率を獲得する",
                    "{C:inactive}（現在{X:mult,C:white}X#2#{}{C:inactive}倍率）{}",
                },
                unlock = {
                    "1 回の実行で{C:attention,E:1}#1#{}{C:attention,E:1}#2#{}回トリガーする",
                },
            },
            j_paperback_time_regression_mix = {
                name = "時間回帰ミックス",
                text = {
                    "得点計算ハンドに少なくとも{C:attention}#1#{}のスートが含まれている場合、",
                    "このジョーカーは{C:mult}+#2#{}の倍率を獲得する",
                    "{C:inactive}（現在{C:mult}+#3#{}{C:inactive}倍率）{}",
                },
                unlock = {
                    "{C:attention,E:1}#1#{}スートを得点するハンドをプレイする",
                },
            },
            j_paperback_tome = {
                name = "トメ",
                text = {
                    "所持ジョーカーの{C:attention}レア度{}1種類につき",
                    "消耗カードスロット{C:attention}+#1#{}",
                    "{C:inactive}（現在の追加スロット {C:attention}+#2#{C:inactive}）",
                },
                unlock = {
                    "{C:blue,E:1}一般{}、{C:green,E:1}珍しい{}、{C:red,E:1}レア{}ジョーカーを同時に持つ",
                },
            },
            j_paperback_toppins = {
                name = "トッピンズ",
                text = {
                    "カードは得点すると{C:mult}+#1#{}の倍率を加える",
                    "以前に得点したカードごとに{C:mult}+#2#{}倍率が増える",
                    "{C:inactive}（ハンドをプレイするたびにリセットされる）{}",
                },
                unlock = {
                    "{C:attention,E:1}#1#{}スートを得点するハンドをプレイする",
                },
            },
            j_paperback_torii = {
                name = "鳥居",
                text = {
                    "ブラインドをスキップした{C:attention}#2#{}（{C:inactive}#3#{}） ごとに{C:attention}#1#{}アンティを",
                    "与える",
                    "{C:inactive}（新しいアンティのスキップのみをカウントする、現在{V:1}#4#{}）{}",
                },
                unlock = {
                    "{C:attention,E:1}#1#{}合計ブラインドをスキップ",
                    "{C:inactive}(#2#)",
                },
            },
            j_paperback_touch_tone_joker = {
                name = "タッチトーンジョーカー",
                text = {
                    "{C:tarot}アルカナ{}、セレスティアル、または{C:spectral}スペクトル{}パックを開くときに、",
                    "その中の{C:attention}最初のカード{}を消耗カードに引きます",
                    "{C:inactive}（空きスロットが必要）{}",
                },
                unlock = {
                    "すべての{E:1,C:attention}ブースターパック{}を発見してください",
                },
            },
            j_paperback_towering_pillar_of_hats = {
                name = "そびえ立つ帽子の柱",
                text = {
                    "{C:paperback_crowns}#7#{}をプレイすると、デッキ内の{C:attention}#3#{}{C:attention}#4#{}、{C:attention}#5#{}または{C:attention}#6#{}ごとに",
                    "{C:mult}+#1#{}の倍率が与えられます",
                    "{C:inactive}（現在{C:mult}+#2#{}{C:inactive}倍率）{}",
                },
                unlock = {
                    "得点{C:paperback_stars,E:1}星{}と{C:paperback_crowns,E:1}クラウン{}を含む{C:attention,E:1}#1#{}をプレイする",
                },
            },
            j_paperback_trans_flag = {
                name = "トランスフラグ",
                text = {
                    "残りの破棄ごとに{C:red}+#1#{}の倍率が与えられます",
                    "{C:inactive}（現在{C:red}+#2#{}{C:inactive}倍率）{}",
                },
                unlock = {
                    "{C:attention,E:1}#1#{}または{C:attention,E:1}#2#{}を取得する",
                },
            },
            j_paperback_triple_moon_goddess = {
                name = "三重の月の女神",
                text = {
                    "プレイしたハンドにスリー オブカインドが含まれている場合、",
                    "{C:green}#2#分の#1#{}ランダムな{C:planet}惑星{}カードを生成するチャンスと、{C:green}#4#",
                    "{C:green}分の#3#{}ランダムな{C:purple}タロット{}カードを生成するチャンス",
                    "{C:inactive}（空きスロットが必要）{}",
                },
                unlock = {
                    "{C:attention,E:1}スリーカード{}を{C:attention,E:1}#1#{}レベルアップグレードする",
                },
            },
            j_paperback_triple_moon_goddess_minor_arcana = {
                name = "三重の月の女神",
                text = {
                    "プレイしたハンドにスリー オブアカインドが含まれている場合、",
                    "{C:green}#2#分の#1#{}チャンスでランダムな{C:tarot}タロット{}カードが作成され、",
                    "{C:green}#4#分の#3#{}チャンスでランダムな{C:paperback_minor_arcana}小アルカナ{}カードが生成される",
                    "{C:inactive}（空きスロットが必要）{}",
                },
                unlock = {
                    "{C:attention,E:1}スリーカード{}を{C:attention,E:1}#1#{}レベルアップグレードする",
                },
            },
            j_paperback_tropic_birds = {
                name = "熱帯の鳥",
                text = {
                    "得点ハンドに{C:attention}#1#{}が含まれている場合、{C:attention}最初{}と{C:attention}最後{}のカードを",
                    "再発動する",
                },
                unlock = {
                    "{E:1,C:attention}エース{}のみを含む{E:1,C:attention}#1#{}でブラインドをクリアする",
                },
            },
            j_paperback_trust_us = {
                name = "私たちを信じてください！",
                text = {
                    "プレイしたハンドに{C:attention}#3#{}が含まれている場合は{X:mult,C:white}X#1#{}倍率、それ",
                    "以外の場合は{X:mult,C:white}X#2#{}倍率",
                },
                unlock = {
                    "{E:1,C:attention}#1#{}を最もプレイしたハンドとしてランで勝利する",
                },
            },
            j_paperback_tutor = {
                name = "家庭教師",
                text = {
                    "{C:attention}番号付きカード{}の{C:chips}チップ価値{}は 2 倍になる",
                },
                unlock = {
                    "{C:chips,E:1}+#1#{}{C:attention,E:1}追加のチップ{}でナンバーカードをアップグレードする",
                },
            },
            j_paperback_twenty_first_century = {
                name = "21{s:0.8}st{}センチュリージョーカー",
                text = {
                    "{C:attention}ビッグブラインド{}または{C:attention}ボスブラインド{}がクリアされたら、左側の",
                    "ジョーカーを{C:attention}破壊{}し、同等以上のレア度の{C:attention}新しい{}ジョーカーを",
                    "生成する",
                    "{C:inactive}（レジェンダリージョーカーにはアップグレードできません）{}",
                },
                unlock = {
                    "{C:red,E:1}レア{}{C:attention,E:1}ジョーカー{}で{C:paperback_minor_arcana,E:1}#1#{}を使用する",
                },
            },
            j_paperback_ultra_rare = {
                name = "ウルトラレア",
                text = {
                    "ブラインドを選択すると、ランダムな{C:blue}コモン{}、{C:green}アンコモン{}、{C:red}レア{}の",
                    "一時的な{C:dark_edition}ネガティブ{}{C:attention}ジョーカー{}が{C:money}$#1#{}売却額で生成される",
                },
                unlock = {
                    "少なくとも{E:1,C:attention}#1#{}{C:dark_edition,E:1}ネガティブ{}ジョーカーを持っている",
                },
            },
            j_paperback_unholy_alliance = {
                name = "不浄な同盟",
                text = {
                    "カードまたはジョーカーが{C:attention}破壊{}されたとき、このジョーカーは",
                    "{C:chips}+#1#{}チップを獲得する",
                    "{C:inactive}（現在{C:chips}+#2#{}チップ）{}",
                },
                unlock = {
                    "{C:attention,E:1}#1#{}が{C:mult,E:1}+#2#{}倍率以上で失点",
                },
            },
            j_paperback_union_card = {
                name = "ユニオンカード",
                text = {
                    "得点する{C:paperback_light_suit}ライトスート{}カードの数に等しい{X:mult,C:white}倍率の乗数{}を加える",
                    "このカードが販売されるまで、すべてのカードの{C:attention}売却額{}が{C:money}$0{}に",
                    "固定される",
                },
                unlock = {
                    "{C:attention,E:1}#1#{}を使用せずにランで勝利する",
                },
            },
            j_paperback_unionized_labor = {
                name = "労働組合",
                text = {
                    "所持金が{C:money}$#1#{}以下なら表示上の全{C:green,E:1,S:1.1}確率{}が{C:attention}3倍{}",
                    "それ以外なら{C:attention}半分{}になる",
                    "{C:inactive}（例 {C:green}3分の1{C:inactive} → {C:green}#3#分の#2#{C:inactive}）",
                },
                unlock = {
                    "ラン中に{C:money,E:1}$#1#{}を超えずにランに勝利する",
                },
            },
            j_paperback_vacation_juice = {
                name = "バケーションジュース",
                text = {
                    "{C:attention}ブラインド{}を初めてクリアしたとき",
                    "次の{C:attention}ブラインド{}へ進まない",
                    "残り{C:attention}#1#{}回発動すると飲み干される",
                },
                unlock = {
                    "{C:attention,E:1}#1#{}でランに勝利する",
                },
            },
            j_paperback_war_without_reason = {
                name = "理由なき戦争",
                text = {
                    "{C:attention}最初の手札{}を引いたとき",
                    "右隣のジョーカーを破壊し",
                    "{C:attention}手札{}のカード1枚に",
                    "ランダムな{C:attention}シール{}を付ける",
                },
                unlock = {
                    "{C:spectral,E:1}スペクトル{}カード",
                    "{C:attention,E:1}#1#{}を使用する",
                },
            },
            j_paperback_watercolor_joker = {
                name = "水彩ジョーカー",
                text = {
                    "{C:attention}#1#{}が得点すると{X:chips,C:white}X#2#{}チップを加える",
                },
                unlock = {
                    "{C:attention,E:1}濡れたカード{}を{C:attention,E:1}ブルーシール{}でプレイする",
                },
            },
            j_paperback_watermelon = {
                name = "スイカ",
                text = {
                    "プレイングカードを{C:attention}強化{}すると、{X:mult,C:white}X#1#{}の倍率が増加する。",
                    "プレイングカードが{C:attention}破壊{}された場合、{X:mult,C:white}X#1#{}の倍率が失われます",
                    "{C:inactive}（現在{X:mult,C:white}X#2#{}{C:inactive}倍率）{}",
                },
                unlock = {
                    "{E:1,C:attention}破壊{}プレイングカードなしでランに勝利する",
                },
            },
            j_paperback_weather_radio = {
                name = "気象ラジオ",
                text = {
                    "プレイしたハンドに{C:attention}#2#{}が含まれている場合、このジョーカーは",
                    "{X:mult,C:white}X#1#{}の倍率を獲得する",
                    "{C:attention}ボスブラインド{}中に、このジョーカーが{X:mult,C:white}X#3#{}以上の倍率を持って",
                    "いる場合、{C:attention}ボスブラインド{}を無効にし、このジョーカーは{X:mult,C:white}X#4#{}",
                    "倍率を失う",
                    "{C:inactive}（現在{X:mult,C:white}X#5#{}{C:inactive}倍率）{}",
                    "{s:0.75}ラウンド終了時にポーカーハンドが変わる{}",
                },
                unlock = {
                    "1 回の実行で{C:attention,E:1}無効にする{}ボスブラインド{C:attention,E:1}#1#{}回",
                },
            },
            j_paperback_wheat_field = {
                name = "麦畑",
                text = {
                    "{C:paperback_crowns}#1#{}は得点されると、{X:mult,C:white}X#2#{}の倍率を加える",
                    "連続して得点するたびに{X:mult,C:white}X#3#{}倍率が増える{C:paperback_crowns}#4#{}",
                    "{C:inactive}（ハンドをプレイするたびにリセットされる）{}",
                },
            },
            j_paperback_white_night = {
                name = "ホワイトナイト",
                text = {
                    "得点した{C:attention}使徒{}は{X:mult,C:white}X#1#{}の倍率を加える",
                    "得点した非{C:attention}使徒{}は{C:red}破壊{}される",
                    "{C:attention}使徒{}のいないハンドをプレイすると、ランダムなジョーカーが",
                    "破壊される",
                    "捨てられた{C:attention}使徒{}は滅ぼされる",
                },
                unlock = {
                    "デッキに{C:attention,E:1}#1#{}以上の{C:attention,E:1}使徒{}が入っている",
                },
            },
            j_paperback_whitebeard = {
                name = "白ひげ",
                text = {
                    "{C:attention}ボスブラインド{}中、得点したカードは{X:red,C:white}X#1#{}の倍率を加える。",
                    "{C:attention}ボスブラインド{}を倒すと勝利ハンドが破壊される",
                },
                unlock = {
                    "{E:1,C:attention}エース{}と{E:1,C:attention}キングス{}のみをプレイしてブラインドでボスを倒す",
                },
            },
            j_paperback_wild_plus_four = {
                name = "ワイルド +4",
                text = {
                    "{C:attention}+#1#{}手のサイズ{C:blue}#2#{}手のサイズ",
                },
                unlock = {
                    "{C:attention,E:1}ワイルド4{}をプレイする",
                },
            },
            j_paperback_wild_prize = {
                name = "[[野生の賞品!1!]]",
                text = {
                    "{C:attention}#7#{}には、{C:green}#2#分の#1#{}が再び発動しるチャンスがあり、得点され",
                    "た場合、{C:money}#5#{}から{C:money}$#6#{}の間に{C:green}#4#分の#3#{}のチャンスが得られる",
                },
                unlock = {
                    "{C:attention,E:1}エース{}、{C:attention,E:1}9{}、{C:attention,E:1}9{}、{C:attention,E:1}7{}のスコアを含むハンドをプレイする",
                },
            },
            j_paperback_wish_you_were_here = {
                name = "あなたがここにいたらいいのに",
                text = {
                    "このカードの{C:attention}売却額{}{C:mult}#1#X{}に等しい倍率を与える",
                    "ラウンド終了時の{C:attention}売却額{}の利益{C:money}$#2#{}",
                    "{C:inactive}（現在{C:mult}+#3#{}{C:inactive}倍率）{}",
                },
                unlock = {
                    "売却額{C:money,E:1}$#1#{}以上のカードを持っている",
                },
            },
            j_paperback_yacht = {
                name = "ヨット",
                text = {
                    "ハンドに得点{C:paperback_stars}#3#{}または{C:paperback_crowns}#4#{}が含まれている場合、このジョーカーは",
                    "{C:chips}+#1#{}チップを獲得する",
                    "{C:inactive}（現在{C:chips}+#2#{}チップ）{}",
                },
                unlock = {
                    "1 回のランで{C:paperback_stars,E:1}星{}と{C:paperback_crowns,E:1}クラウン{}の両方を獲得する",
                },
            },
            j_paperback_yacht_dice = {
                name = "ヨットダイス",
                text = {
                    "このジョーカーは、このランでプレイされた固有のハンドタイプ",
                    "ごとに{X:mult,C:white}X#1#{}倍率を獲得する",
                    "{C:inactive}（現在{X:mult,C:white}X#2#{}{C:inactive}倍率）{}",
                },
                unlock = {
                    "1 回の実行で{C:attention,E:1}#1#{}の異なるハンドをプレイする",
                },
            },
            j_paperback_you_are_a_fool = {
                name = "あなたは愚か者です!",
                text = {
                    "得点した手に{C:attention}#1#{}以上の{C:attention}フェイスカード{}が含まれている場合、",
                    "{C:attention}手札{}にあるすべてのカードを左端の得点カード{S:1.1,C:red,E:2}自壊する{}に変える",
                },
                unlock = {
                    "{C:attention,E:1}フェイスカードのみ{}を含むデッキを用意する",
                },
            },
            j_paperback_zealous_joker = {
                name = "熱狂的なジョーカー",
                text = {
                    "プレイしたハンドに{C:attention}#2#{}が",
                    "含まれていれば倍率{C:mult}+#1#{}",
                },
                unlock = {
                    "{E:1,C:attention,E:1}スペクトラム{}をプレイする",
                },
            },
        },
        Other = {
            p_paperback_ego_gift_normal = {
                name = "E.G.O ギフト抽出パック",
                text = {
                    "{C:attention}#2#{}までの {C:paperback_ego_gift}E.G.Oギフト{}の中から{C:attention}#1#{}を選択してください",
                },
            },
            p_paperback_minor_arcana_jumbo = {
                name = "ジャンボ小アルカナパック",
                text = {
                    "すぐに使用する最大{C:attention}#2#{}の{C:paperback_minor_arcana}小アルカナ{}カードから{C:attention}#1#{}を選択してく",
                    "ださい",
                },
            },
            p_paperback_minor_arcana_mega = {
                name = "メガマイナーアルカナパック",
                text = {
                    "すぐに使用する最大{C:attention}#2#{}の{C:paperback_minor_arcana}小アルカナ{}カードから{C:attention}#1#{}を選択してく",
                    "ださい",
                },
            },
            p_paperback_minor_arcana_normal = {
                name = "小アルカナパック",
                text = {
                    "すぐに使用する最大{C:attention}#2#{}の{C:paperback_minor_arcana}小アルカナ{}カードから{C:attention}#1#{}を選択してく",
                    "ださい",
                },
            },
            paperback_black_clip = {
                name = "ブラッククリップ",
                text = {
                    "{C:attention}クリップ{}を手札にある場合、{C:attention}得点{}すると再び発動しる",
                },
            },
            paperback_blue_clip = {
                name = "ブルークリップ",
                text = {
                    "{C:attention}得点{}すると、手札の{C:attention}クリップ{}ごとに{X:chips,C:white}X#1#{}チップが与えられます",
                    "{C:inactive}（現在{X:chips,C:white}X#2#{}チップ）{}",
                },
            },
            paperback_corroded = {
                name = "侵食",
                text = {
                    "{C:paperback_ego_gift}罪{}を発動させずに{C:money}売却{}できる",
                    "残り{C:attention}#1#{}ラウンドで{C:red}自壊{}し、",
                    "{C:paperback_ego_gift}罪{}が発動する",
                },
            },
            paperback_dark_suits = {
                name = "ダークスート",
                text = {
                    "{C:spades}スペード{}、{C:clubs}クラブ{}",
                },
            },
            paperback_energized = {
                name = "活性化",
                text = {
                    "{C:attention}#1#{}や{C:attention}#2#{}でコピーできない",
                },
            },
            paperback_gold_clip = {
                name = "ゴールドクリップ",
                text = {
                    "ラウンド終了時に{C:attention}手札{}にある場合、このラウンドで得点した",
                    "{C:attention}クリップ{}ごとに{C:money}$#1#{}を獲得する",
                    "（現在{C:money}$#2#{}/{C:inactive}$#3#{}が最大）",
                },
            },
            paperback_green_clip = {
                name = "グリーンクリップ",
                text = {
                    "この{C:attention}クリップ{}は、再生された{C:attention}2{}スコア{C:attention}クリップ{}ごとに{C:mult}+#2#{}倍率を",
                    "獲得し、破棄されたクリップごとに{C:mult}#3#{}倍率を獲得する",
                    "{C:inactive}（現在{C:mult}+#1#{}{C:inactive}倍率）{}",
                },
            },
            paperback_illusion_clips = {
                name = "追加された機能",
                text = {
                    "トランプには{C:attention}ペーパークリップ{}も付いている場合があります",
                },
            },
            paperback_light_suits = {
                name = "ライトスート",
                text = {
                    "{C:diamonds}ダイヤ{}モンド、{C:hearts}ハート{}",
                },
            },
            paperback_omen_globe_minor_arcana = {
                name = "追加された機能",
                text = {
                    "{C:spectral}スペクトル{}カードは{C:paperback_minor_arcana}小アルカナパック{}にも登場する場合があり",
                    "ます",
                },
            },
            paperback_orange_clip = {
                name = "オレンジクリップ",
                text = {
                    "{C:attention}得点{}すると、手札にある{C:attention}クリップ{}{C:attention}2{}ごとに{C:money}$#1#{}を獲得する",
                    "{C:inactive}（現在{C:money}$#3#{}）{}",
                },
            },
            paperback_pink_clip = {
                name = "ピンククリップ",
                text = {
                    "{C:attention}手札{}にあると、{X:mult,C:white}X#1#{}倍率がスコア{C:attention}クリップ{}ごとに{X:mult,C:white}X#2#{}ずつ増える",
                    "{C:inactive}（プレイ後リセット）{}",
                },
            },
            paperback_platinum_clip = {
                name = "プラチナクリップ",
                text = {
                    "{C:attention}得点時{}、プレイ中または手札にある",
                    "{C:attention}クリップ{}を種類ごとに1つ強制発動",
                    "{C:paperback_platinum}プラチナ{}は対象外",
                },
            },
            paperback_purple_clip = {
                name = "パープルクリップ",
                text = {
                    "{C:green}#2#分の#1#{}{C:attention}手に持った{}ときにランダムな{C:attention}タロット{}カードを生成する",
                    "チャンス",
                    "得点した{C:attention}クリップ{}ごとに確率が{C:attention}#3#{}ずつ増える",
                    "{C:inactive}（プレイ後リセット）{}",
                },
            },
            paperback_red_clip = {
                name = "レッドクリップ",
                text = {
                    "{C:attention}得点{}されると、手札にある{C:attention}クリップ{}ごとに{C:mult}+#1#{}倍率が上がります",
                    "{C:inactive}（現在{C:mult}+#2#{}{C:inactive}倍率）{}",
                },
            },
            paperback_requires_custom_suits = {
                name = "カスタムスーツが必要です",
                text = {
                    "{C:legendary}ペーパーバック{}ではカスタムスートが無効になっているため、",
                    "プールから削除されました",
                },
            },
            paperback_requires_editions = {
                name = "エディションが必要",
                text = {
                    "{C:legendary}ペーパーバック{}で{C:dark_edition}エディション{}が無効になっているため、プール",
                    "から削除されました",
                },
            },
            paperback_requires_ego_gifts = {
                name = "E.G.Oギフトが必要です",
                text = {
                    "{C:paperback_ego_gift}E.G.Oギフト{}が{C:legendary}ペーパーバック{}で無効になっているため、プール",
                    "から削除されました",
                },
            },
            paperback_requires_enhancements = {
                name = "機能強化が必要",
                text = {
                    "{C:legendary}ペーパーバック{}では拡張機能が無効になっているため、プール",
                    "から削除されました",
                },
            },
            paperback_requires_minor_arcana = {
                name = "小アルカナが必要です",
                text = {
                    "{C:paperback_minor_arcana}小アルカナ{}が{C:legendary}ペーパーバック{}で無効になっているため、プール",
                    "から削除されました",
                },
            },
            paperback_requires_paperclips = {
                name = "ペーパークリップが必要です",
                text = {
                    "{C:legendary}ペーパーバック{}で{C:attention}ペーパークリップ{}が無効になっているため、",
                    "プールから削除されました",
                },
            },
            paperback_requires_ranks = {
                name = "ランクが必要です",
                text = {
                    "{C:legendary}ペーパーバック{}で{C:dark_edition}ランク{}が無効になっているため、プールから",
                    "削除されました",
                },
            },
            paperback_requires_tags = {
                name = "タグが必要です",
                text = {
                    "{C:legendary}ペーパーバック{}で{C:attention}タグ{}が無効になっているため、プールから削除",
                    "されました",
                },
            },
            paperback_sin_envy = {
                name = "嫉妬",
                text = {
                    "販売時、{C:attention}-#1#{}手のサイズ",
                },
            },
            paperback_sin_gloom = {
                name = "憂鬱",
                text = {
                    "販売時には、すべてのブラインドサイズに{C:attention}X#1#{}を掛けます",
                },
            },
            paperback_sin_gluttony = {
                name = "暴食",
                text = {
                    "販売すると、ランダムな{C:attention}ジョーカー{}にペリシャブルを追加する",
                },
            },
            paperback_sin_lust = {
                name = "色欲",
                text = {
                    "売却すると、{C:attention}最もプレイしたハンド{}を{C:attention}#1#{}{C:attention}レベル{}ダウングレードする",
                },
            },
            paperback_sin_madness = {
                name = "狂気",
                text = {
                    "売却したら、ランダムな{C:attention}ジョーカー{}を{C:attention}破壊{}する",
                },
            },
            paperback_sin_none = {
                name = "残滓",
                text = {
                    "常に{C:money}$#1#{}で販売する",
                },
            },
            paperback_sin_pride = {
                name = "傲慢",
                text = {
                    "常に{C:money}#2#{}で販売する",
                },
            },
            paperback_sin_sloth = {
                name = "怠惰",
                text = {
                    "ブラインドをスキップした後にのみ直接販売できる",
                },
            },
            paperback_sin_wrath = {
                name = "憤怒",
                text = {
                    "売却したら、保有しているすべての{C:attention}消耗カード{}を破棄する",
                },
            },
            paperback_temporary = {
                name = "一時的",
                text = {
                    "ラウンド終了時に{C:red}取り除かれる{}",
                },
            },
            paperback_upgrade_locked = {
                name = "ロック中",
                text = {
                    "{E:1,s:1.3}?????",
                },
            },
            paperback_upgrade_unlock = {
                name = "ロック中",
                text = {
                    "{C:attention,E:1}#1#{}の能力を発動する",
                },
            },
            paperback_white_clip = {
                name = "ホワイトクリップ",
                text = {
                    "ラウンド終了時に手に持っていた場合、この{C:attention}クリップ{}はこの",
                    "ラウンドで得点したクリップごとに{C:chips}+#1#{}チップを獲得する",
                    "{C:inactive}（現在{C:chips}+#2#{}チップ）{}",
                },
            },
            paperback_yellow_clip = {
                name = "イエロークリップ",
                text = {
                    "{C:attention}クリップ{}を持っている間に{C:attention}得点{}した場合、{C:green}#2#分の#1#{}のチャンスで",
                    "{C:red}+#3#{}の倍率、{C:green}#5#分の#4#{}のチャンスで{X:mult,C:white}X#6#{}の倍率、{C:green}#8#分の#7#{}の",
                    "チャンスで{C:money}$#9#{}",
                },
            },
            perma_paperback_h_plus_odds = {
                text = {
                    "{C:green}#1#{}手札の確率",
                },
            },
            perma_paperback_plus_odds = {
                text = {
                    "{C:green}#1#{}プレー時と得点時の確率",
                },
            },
            undiscovered_paperback_ego_gift = {
                name = "発見されませんでした",
                text = {
                    "このカードをシードなしの実行で購入して、その機能を確認して",
                    "ください",
                },
            },
            undiscovered_paperback_minor_arcana = {
                name = "発見されませんでした",
                text = {
                    "このカードを購入するか、シードされていない実行で使用して、",
                    "その機能を確認してください",
                },
            },
        },
        Partner = {
            pnr_paperback_aftermath = {
                name = "余波",
                text = {
                    "スコアを獲得した{C:attention}フェイスカード{}は{C:chips}+#1#{}チップを獲得する",
                },
            },
            pnr_paperback_faker = {
                name = "フェイカー",
                text = {
                    "ラウンドに1回、プレイされた手札が1枚の場合、それを破壊する",
                },
            },
            pnr_paperback_faker_buffed = {
                text = {
                    "プレイされた手札が1枚の場合、それを破壊する",
                },
            },
            pnr_paperback_virtual = {
                name = "バーチャル",
                text = {
                    "{C:paperback_dark_suit}ダークスート{}がプレイされなかった場合、最初に得点した",
                    "{C:paperback_light_suit}ライトスート{}を再発動する",
                },
            },
        },
        Planet = {
            c_paperback_haumea = {
                name = "ハウメア",
            },
            c_paperback_makemake = {
                name = "マケマケ",
            },
            c_paperback_quaoar = {
                name = "クワオアー",
            },
            c_paperback_sedna = {
                name = "セドナ",
            },
        },
        Sleeve = {
            sleeve_paperback_antique = {
                name = "アンティークスリーブ",
                text = {
                    "ショップに{C:tarot}アルカナパック{}が出現しない",
                    "{C:paperback_minor_arcana}小アルカナパック{}の出現率が{C:attention}3倍",
                },
            },
            sleeve_paperback_antique_buff = {
                name = "アンティークスリーブ",
                text = {
                    "{C:paperback_minor_arcana}小アルカナパック{}が{C:money}無料{}になる",
                },
            },
            sleeve_paperback_commander = {
                name = "司令官のスリーブ",
                text = {
                    "可能な場合、{C:attention}一番左のジョーカー{}が",
                    "{C:attention}2回{}発動する",
                    "{C:attention}ブラインド{}中はジョーカーを{C:attention}移動できない{}",
                },
            },
            sleeve_paperback_commander_buff = {
                name = "司令官のスリーブ",
                text = {
                    "{C:attention}一番左のジョーカー{}が{C:attention}もう1回{}発動する",
                },
            },
            sleeve_paperback_dreamer = {
                name = "ドリーマースリーブ",
                text = {
                    "{C:paperback_temporary}一時的{}な",
                    "{C:paperback_minor_arcana,T:c_paperback_apostle_of_wands}#1#{}を持ってランを開始",
                    "最初のブラインドは{C:attention}ビッグブラインド",
                },
            },
            sleeve_paperback_dreamer_buff = {
                name = "ドリーマースリーブ",
                text = {
                    "各スートの{C:attention}#1#{}を1枚ずつ持ってランを開始",
                },
            },
            sleeve_paperback_enchained = {
                name = "鎖のスリーブ",
                text = {
                    "このランでは、全{C:attention}ジョーカー{}のうち",
                    "ランダムに選ばれた{C:attention}25%{}のみ出現する",
                    "{C:attention,T:v_overstock_norm}#1#{}を持ってランを開始",
                },
            },
            sleeve_paperback_enchained_buff = {
                name = "鎖のスリーブ",
                text = {
                    "このランでは、{C:attention}消耗カード{}のうち",
                    "ランダムに選ばれた{C:attention}25%{}のみ出現する",
                },
            },
            sleeve_paperback_paper = {
                name = "ペーパースリーブ",
                text = {
                    "{C:legendary}Paperback{C:attention}のジョーカー{}の出現率が{C:attention}3倍",
                    "ジョーカー{C:attention,T:j_paperback_shopping_center}#1#{}を持ってランを開始",
                },
            },
            sleeve_paperback_paper_buff = {
                name = "ペーパースリーブ",
                text = {
                    "{C:dark_edition}ネガティブ{}のジョーカー",
                    "{C:attention,T:j_paperback_shopping_center}#1#{}を持ってランを開始",
                },
            },
            sleeve_paperback_passionate = {
                name = "情熱のスリーブ",
                text = {
                    "{C:attention}ボスブラインド{}を倒すたびに",
                    "{C:attention,T:tag_paperback_high_risk}#1#{}を獲得",
                    "{C:money}利息{}を獲得できない",
                },
            },
            sleeve_paperback_passionate_buff = {
                name = "情熱のスリーブ",
                text = {
                    "{C:attention}ボスブラインド{}は1つおきに{C:attention}最終ボスブラインド{}へ置き換わる",
                    "最終ボスブラインドを倒すと{C:dark_edition,T:tag_negative}ネガティブタグ{}を獲得",
                },
            },
            sleeve_paperback_potters = {
                name = "陶工のスリーブ",
                text = {
                    "最初からすべてのカードが{C:attention}セラミックカード{}",
                    "ブラインド{C:attention}開始時{}に",
                    "{C:Money}所持金{}が{C:red}0{}になる",
                },
            },
            sleeve_paperback_potters_buff = {
                name = "陶工のスリーブ",
                text = {
                    "バウチャー{C:money,T:v_seed_money}#1#{}と{C:money,T:v_money_tree}#2#{}を持ってランを開始",
                },
            },
            sleeve_paperback_proud = {
                name = "プラウドスリーブ",
                text = {
                    "{C:hearts}ハート{}、{C:diamonds}ダイヤ{}、{C:spades}スペード{}、",
                    "{C:clubs}クラブ{}、{C:paperback_crowns}クラウン{}、{C:paperback_stars}スター{}の",
                    "全カードでランを開始",
                },
            },
            sleeve_paperback_proud_buff = {
                name = "プラウドスリーブ",
                text = {
                    "開始時の{C:attention}エース{}はすべて{C:dark_edition}ポリクローム{}",
                },
            },
            sleeve_paperback_shimmering = {
                name = "きらめくスリーブ",
                text = {
                    "所持している{C:attention}罪{}の種類ごとに",
                    "消耗カードスロット{C:attention}+#1#{}",
                    "ジョーカースロット{C:red}#2#{}",
                    "{C:paperback_ego_gift}E.G.Oギフト抽出パック{}の出現率が{C:attention}5倍",
                },
            },
            sleeve_paperback_shimmering_buff = {
                name = "きらめくスリーブ",
                text = {
                    "ジョーカースロット{C:red}#2#{}",
                    "{C:paperback_ego_gift}E.G.Oギフト{}を売るとジョーカースロット{C:attention}+#1#{}",
                },
            },
            sleeve_paperback_silver = {
                name = "シルバースリーブ",
                text = {
                    "バウチャー{C:paperback_minor_arcana,T:v_paperback_celtic_cross}#1#{}と",
                    "{C:paperback_minor_arcana,T:c_paperback_nine_of_cups}#2#{}を持ってランを開始",
                },
            },
            sleeve_paperback_silver_buff = {
                name = "シルバースリーブ",
                text = {
                    "バウチャー{C:paperback_minor_arcana,T:v_paperback_soothsay}#1#{}を持ってランを開始",
                },
            },
            sleeve_paperback_sudsy = {
                name = "泡立ちスリーブ",
                text = {
                    "{C:attention}ボスブラインド{}を倒すたびに",
                    "ジョーカースロット{C:attention}#1#{}",
                    "手札サイズ{C:attention}#2#{}",
                    "{C:inactive,s:0.85}（手札サイズの減少は合計#3#まで）",
                },
            },
            sleeve_paperback_sudsy_buff = {
                name = "泡立ちスリーブ",
                text = {
                    "{C:attention}ボスブラインド{}を倒すたびに",
                    "{C:attention,T:tag_top_up}#1#{}を獲得",
                },
            },
        },
        Spectral = {
            c_paperback_apostle_of_cups = {
                name = "カップの使徒",
                text = {
                    "選択した{C:attention}プレイングカード{}が",
                    "{C:dark_edition}ネガティブ{}になる",
                    "ジョーカースロット{C:attention}#1#{}",
                },
            },
            c_paperback_apostle_of_pentacles = {
                name = "ペンタクルの使徒",
                text = {
                    "選択したカード{C:attention}#1#{}枚に",
                    "{C:paperback_platinum}プラチナクリップ{}を付ける",
                },
            },
            c_paperback_apostle_of_swords = {
                name = "ソードの使徒",
                text = {
                    "選択した{C:attention}ジョーカー{}を破壊する",
                    "アンティ{C:attention}#1#{}",
                },
            },
            c_paperback_apostle_of_wands = {
                name = "ワンドの使徒",
                text = {
                    "{C:legendary}レジェンダリー{}以外のジョーカーを",
                    "{C:attention}選んで{}1枚生成する",
                    "{C:inactive}（重複不可）",
                },
            },
            c_paperback_golden_bough = {
                name = "黄金の枝",
                text = {
                    "{C:attention}ボスブラインド{}を倒すたびに",
                    "{C:dark_edition}ネガティブ{}の{C:paperback_ego_gift}E.G.Oギフト{}を",
                    "ランダムに生成する",
                    "ジョーカースロット{C:red}#1#{}",
                },
            },
        },
        Tag = {
            tag_paperback_angel_investment = {
                name = "エンジェル投資タグ",
                text = {
                    "所持金{C:money}$#2#{}につき{C:money}$#1#{}を獲得",
                    "{C:inactive}（最大 {C:money}$#3#{C:inactive}）",
                    "{C:inactive}（獲得予定額 {C:money}$#4#{C:inactive}）",
                },
            },
            tag_paperback_breaking = {
                name = "破壊タグ",
                text = {
                    "{C:attention}ボスブラインド{}を無効化する",
                },
            },
            tag_paperback_dichrome = {
                name = "ダイクロームタグ",
                text = {
                    "ショップに次に並ぶ通常版のジョーカーが",
                    "無料になり、{C:dark_edition}ダイクローム{}になる",
                },
            },
            tag_paperback_divination = {
                name = "占いタグ",
                text = {
                    "{C:paperback_minor_arcana}メガ小アルカナパック{}を",
                    "無料で獲得",
                },
            },
            tag_paperback_high_risk = {
                name = "ハイリスクタグ",
                text = {
                    "{C:attention}ボスブラインド{}を選択すると",
                    "必要スコアが{C:attention}2倍{}になり",
                    "{C:money}$#1#{}を獲得",
                },
            },
        },
        Voucher = {
            v_paperback_celtic_cross = {
                name = "ケルト十字",
                text = {
                    "{C:attention}ボスブラインド{}を倒した次のショップに",
                    "{C:attention}無料{}の{C:paperback_minor_arcana}メガ小アルカナパック{}が並ぶ",
                },
            },
            v_paperback_rabbit_protocol = {
                name = "ウサギプロトコル",
                text = {
                    "{C:paperback_ego_gift}E.G.Oギフト{}を{C:attention}売却{}すると",
                    "現在の{C:attention}ボスブラインド{}を{C:attention}無効化{}する",
                },
                unlock = {
                    "1回のランで{C:paperback_ego_gift}E.G.Oギフト{}を",
                    "{C:attention}#1#{}個以上売却する",
                },
            },
            v_paperback_second_trumpet = {
                name = "第二のラッパ",
                text = {
                    "最初に獲得した{C:paperback_ego_gift}E.G.Oギフト{}で",
                    "消耗カードスロット{C:attention}+#1#{}",
                },
            },
            v_paperback_soothsay = {
                name = "予言",
                text = {
                    "{C:paperback_minor_arcana}小アルカナ{}カードが",
                    "{C:money}ショップ{}に出現するようになる",
                },
                unlock = {
                    "1回のランで{C:paperback_minor_arcana}小アルカナ{}カードを",
                    "{C:attention}#1#{}枚以上使用する",
                },
            },
        },
        paperback_ego_gift = {
            c_paperback_blue_lighter = {
                name = "青いジッポーライター",
                text = {
                    "{C:attention}ブラインド{}を選ぶと{C:paperback_ego_gift}E.G.Oギフト{}以外の",
                    "消耗カードを1枚破壊し、このギフトの倍率の乗数が{X:mult,C:white}X#1#{}分増える",
                    "{C:inactive}（現在の倍率 {X:mult,C:white}X#2#{C:inactive}）",
                },
            },
            c_paperback_broken_glasses = {
                name = "壊れた眼鏡",
                text = {
                    "カードがちょうど{C:attention}1{}枚か{C:attention}2{}枚{C:attention}破壊{}されるたびに",
                    "破壊したカードそれぞれのコピーを{C:attention}2{}枚ずつ生成",
                    "発動後、{C:green}#2#分の#1#{}の確率で{C:red}自壊{}する",
                },
            },
            c_paperback_canned_ice_cream = {
                name = "缶入りアイスクリーム",
                text = {
                    "カードが{C:attention}破壊{}されると、この{C:paperback_ego_gift}E.G.Oギフト{}は",
                    "そのカードの{C:chips}チップ{}の半分を獲得する",
                    "{C:inactive}（現在のチップ {C:chips}+#1#{C:inactive}）",
                },
            },
            c_paperback_chalice_of_trickle_down = {
                name = "滴り落ちる杯",
                text = {
                    "{C:attention}ボスブラインド{}中、得点したカードのうち",
                    "一番低いランクの半分に相当する{C:money}お金{}を獲得",
                },
            },
            c_paperback_coffee_and_cranes = {
                name = "コーヒーと折り鶴",
                text = {
                    "ラウンド終了時に{C:money}$#1#{}を獲得",
                },
            },
            c_paperback_dark_vestige = {
                name = "暗い残滓",
                text = {
                    "同じ{C:paperback_ego_gift}E.G.Oギフト{}を重複して",
                    "所持しようとした結果…",
                },
            },
            c_paperback_death_seeker = {
                name = "死を求める者",
                text = {
                    "{C:attention}強化{}カードが得点すると、",
                    "そのカードの{C:attention}ランク{}と同じ値を{C:mult}倍率{}に加える",
                },
            },
            c_paperback_decamillennial_stewpot = {
                name = "万年煮込み鍋",
                text = {
                    "ラウンドの{C:attention}最初のハンド{}がちょうど1枚なら",
                    "そのカードを破壊する",
                },
            },
            c_paperback_disk_fragment = {
                name = "ディスクの破片",
                text = {
                    "{C:attention}スモールブラインド{}か{C:attention}ビッグブラインド{}を選んだとき",
                    "所持している惑星カードがなければ、",
                    "{C:dark_edition}ネガティブ{}の{C:planet}惑星{}カードを{C:attention}#1#{}枚生成する",
                },
            },
            c_paperback_downpour = {
                name = "土砂降り",
                text = {
                    "ハンドをプレイするたびに",
                    "{C:attention}ブラインドの必要スコア{}が{C:attention}#1#%{}下がる",
                },
            },
            c_paperback_fiery_down = {
                name = "燃える羽毛",
                text = {
                    "カードを{C:attention}#1#{}枚ディスカードした後",
                    "次にプレイする{C:attention}ポーカーハンド{}のレベルを上げる",
                    "{C:inactive}（現在 #2#）",
                },
            },
            c_paperback_fluorescent_lamp = {
                name = "蛍光灯",
                text = {
                    "ディスカード{C:red}+#1#{}",
                    "空の{C:attention}ジョーカースロット{}が{C:attention}#2#{}枠あるごとに",
                    "さらにディスカード{C:red}+#1#{}",
                    "{C:inactive}（現在のディスカード {C:red}+#3#{C:inactive}）",
                },
            },
            c_paperback_hardwood_liquor_cup = {
                name = "木製の酒杯",
                text = {
                    "ラウンドの{C:attention}最後のハンド{}で{C:attention}最初{}に得点したカードは",
                    "チップ{C:chips}+#1#{}、倍率{C:mult}+#2#{}、{C:money}+$#3#{}、",
                    "または倍率{X:mult,C:white}X#4#{}のいずれかを永続的に得る",
                },
            },
            c_paperback_imposed_weight = {
                name = "課された重荷",
                text = {
                    "空のジョーカースロット1つにつき、",
                    "{C:attention}一番右の得点カード{}を{C:attention}#1#{}回再発動する",
                },
            },
            c_paperback_lightning_rod = {
                name = "避雷針",
                text = {
                    "{C:attention}手札のカード{}は{C:green}#2#分の#1#{}の確率で再発動する",
                },
            },
            c_paperback_nebulizer = {
                name = "ネブライザー",
                text = {
                    "得点するカードは{C:green}#2#分の#1#{}の確率で倍率{X:mult,C:white}X#3#{}を与える",
                },
            },
            c_paperback_patrolling_flashlight = {
                name = "巡回用懐中電灯",
                text = {
                    "各{C:attention}アンティ{}で最初に使用した消耗カードの",
                    "{C:attention}活性化{}されたコピーを生成する",
                },
            },
            c_paperback_pendant_of_nostalgia = {
                name = "郷愁のペンダント",
                text = {
                    "{C:attention}プレイングカード{}が破壊されるたびに、",
                    "ランダムな{C:tarot}タロット{}を1枚生成する",
                    "{C:inactive}（空きスロットが必要）",
                },
            },
            c_paperback_pendant_of_nostalgia_minor_arcana = {
                name = "郷愁のペンダント",
                text = {
                    "{C:attention}プレイングカード{}が破壊されるたびに、",
                    "ランダムな{C:tarot}タロット{}か{C:paperback_minor_arcana}小アルカナ{}を1枚生成する",
                    "{C:inactive}（空きスロットが必要）",
                },
            },
            c_paperback_phlebotomy_pack = {
                name = "瀉血パック",
                text = {
                    "各ラウンドのハンド{C:blue}+#1#{}",
                },
            },
            c_paperback_prestige_card = {
                name = "プレステージカード",
                text = {
                    "ショップで購入するたびに{C:green}#2#分の#1#{}の確率で",
                    "ランダムなタグを1つ生成する",
                    "{C:inactive}（ショップごとに1回まで）",
                },
            },
            c_paperback_ragged_umbrella = {
                name = "ぼろぼろの傘",
                text = {
                    "{C:attention}ハンドをプレイ{}して{C:attention}ブラインド{}を倒せなかった場合",
                    "この{C:paperback_ego_gift}E.G.Oギフト{}のチップ{C:chips}+#1#{}",
                    "{C:inactive}（現在のチップ {C:chips}+#2#{C:inactive}）",
                },
            },
            c_paperback_red_tassel = {
                name = "赤い房",
                text = {
                    "{C:attention}得点したカード{}のうちランクが最低の1枚に",
                    "永続的に倍率{C:mult}+#1#{}",
                },
            },
            c_paperback_rusty_coin = {
                name = "錆びた記念硬貨",
                text = {
                    "ラウンドの{C:attention}最初のハンド{}がちょうど1枚なら",
                    "そのカードにランダムな{C:attention}シール{}を付ける",
                },
            },
            c_paperback_smokes_and_wires = {
                name = "煙と針金",
                text = {
                    "各ラウンドの{C:attention}最後のハンド{}で",
                    "倍率{X:red,C:white}X#1#{}",
                },
            },
            c_paperback_snuffed_candlestick = {
                name = "火の消えた燭台",
                text = {
                    "各ラウンドの2回目以降、ハンドをプレイするたびに{C:money}$#1#{}を獲得",
                },
            },
            c_paperback_tango_marinade = {
                name = "タンゴマリネ",
                text = {
                    "プレイしたハンドに{C:attention}#1#{}が含まれていれば",
                    "最初に得点したカードを{C:attention}#2#{}枚再発動する",
                },
            },
            c_paperback_thrill = {
                name = "スリル",
                text = {
                    "ラウンドの{C:attention}最初のハンド{}では、このラウンドで",
                    "使った{C:attention}ディスカード{}1回につき倍率{X:mult,C:white}X#1#{}",
                    "{C:inactive}（現在の倍率 {X:mult,C:white}X#2#{C:inactive}）",
                },
            },
            c_paperback_thrill_inactive = {
                name = "スリル",
                text = {
                    "ラウンドの{C:attention}最初のハンド{}では、このラウンドで",
                    "使った{C:attention}ディスカード{}1回につき倍率{X:mult,C:white}X#1#{}",
                },
            },
            c_paperback_tomorrow_fortune = {
                name = "明日の運勢",
                text = {
                    "すべての{C:attention}ブースターパック{}のカード候補が{C:attention}#1#{}枚増える",
                },
            },
            c_paperback_vestiges_of_the_king = {
                name = "王の残滓",
                text = {
                    "{C:attention}1{}枚だけディスカードすると",
                    "そのカードにランダムな{C:paperback_minor_arcana}小アルカナ{}の強化を付ける",
                },
            },
        },
        paperback_minor_arcana = {
            c_paperback_ace_of_cups = {
                name = "カップのエース",
                text = {
                    "選んだカード最大{C:attention}#1#{}枚に{C:chips}青のクリップ{}を付ける",
                },
            },
            c_paperback_ace_of_pentacles = {
                name = "ペンタクルのエース",
                text = {
                    "選んだカード最大{C:attention}#1#{}枚を{V:1}#2#{}に変える",
                },
            },
            c_paperback_ace_of_swords = {
                name = "ソードのエース",
                text = {
                    "選んだカード最大{C:attention}#1#{}枚を{V:1}#2#{}に変える",
                },
            },
            c_paperback_ace_of_wands = {
                name = "ワンドのエース",
                text = {
                    "選んだカード最大{C:attention}#1#{}枚に{C:mult}赤のクリップ{}を付ける",
                },
            },
            c_paperback_eight_of_cups = {
                name = "カップの8",
                text = {
                    "選んだカード最大{C:attention}#1#{}枚を",
                    "選択中のカードにないスートへ変える",
                },
            },
            c_paperback_eight_of_pentacles = {
                name = "ペンタクルの8",
                text = {
                    "このランで使った{C:tarot}タロット{}と{C:paperback_minor_arcana}小アルカナ{}の",
                    "種類1つにつき{C:money}$#1#{}を獲得",
                    "{C:inactive}（獲得予定額 {C:money}$#2#{C:inactive}）",
                },
            },
            c_paperback_eight_of_swords = {
                name = "ソードの8",
                text = {
                    "選んだカード最大{C:attention}#1#{}枚に",
                    "ランダムな{C:attention}クリップ{}を付ける",
                },
            },
            c_paperback_eight_of_wands = {
                name = "ワンドの8",
                text = {
                    "{C:dark_edition}ネガティブタグ{}を生成し、{C:money}$#1#{}を失う",
                    "所持ジョーカーが{C:attention}#3#{}枚を超える分1枚につき、さらに{C:money}$#2#{}を失う",
                    "{C:inactive}（現在の費用 {C:money}$#4#{C:inactive}）",
                },
            },
            c_paperback_five_of_cups = {
                name = "カップの5",
                text = {
                    "選んだカード{C:attention}#1#{}枚を{C:attention}#2#{}に強化する",
                },
            },
            c_paperback_five_of_pentacles = {
                name = "ペンタクルの5",
                text = {
                    "選んだカード{C:attention}#1#{}枚を{C:attention}#2#{}に強化する",
                },
            },
            c_paperback_five_of_swords = {
                name = "ソードの5",
                text = {
                    "選んだカード{C:attention}#1#{}枚に、ランダムな",
                    "{C:attention}エディション{}・{C:attention}シール{}・{C:attention}強化{}のいずれかを付ける",
                },
            },
            c_paperback_five_of_wands = {
                name = "ワンドの5",
                text = {
                    "{C:attention}手札{}をすべて破壊し、所持金が{C:money}$0{}になる",
                },
            },
            c_paperback_four_of_cups = {
                name = "カップの4",
                text = {
                    "選んだカード最大{C:attention}#1#{}枚から",
                    "{C:attention}強化{}・{C:attention}シール{}・{C:attention}エディション{}を取り除く",
                    "取り除いた効果1つにつき{C:money}$#2#{}を獲得",
                },
            },
            c_paperback_four_of_pentacles = {
                name = "ペンタクルの4",
                text = {
                    "カードを{C:attention}#1#{}枚選ぶ",
                    "選ばなかった手札を1枚ずつ{C:green}#3#分の#2#{}の確率で破壊する",
                },
            },
            c_paperback_four_of_swords = {
                name = "ソードの4",
                text = {
                    "選んだカード最大{C:attention}#1#{}枚を",
                    "ランダムな{C:attention}フェイスカード{}に変える",
                },
            },
            c_paperback_four_of_wands = {
                name = "ワンドの4",
                text = {
                    "選んだカード最大{C:attention}#1#{}枚に{C:paperback_pink}ピンクのクリップ{}を付ける",
                },
            },
            c_paperback_king_of_cups = {
                name = "カップのキング",
                text = {
                    "基本ランク{C:attention}13{}種がすべてそろっている",
                    "スート1種類につき{C:money}$#1#{}を獲得",
                    "{C:inactive}（獲得予定額 {C:money}$#2#{C:inactive}）",
                },
            },
            c_paperback_king_of_pentacles = {
                name = "ペンタクルのキング",
                text = {
                    "デッキ全体の{C:attention}フェイスカード{}1枚につき{C:money}$#1#{}を獲得",
                    "{C:inactive}（獲得予定額 {C:money}$#2#{C:inactive}）",
                },
            },
            c_paperback_king_of_swords = {
                name = "ソードのキング",
                text = {
                    "選んだジョーカーの{C:money}レンタル{}と",
                    "{C:paperback_perishable}ペリシャブル{}を取り除く",
                },
            },
            c_paperback_king_of_swords_bunc = {
                name = "ソードのキング",
                text = {
                    "選んだジョーカーから{C:paperback_eternal}エターナル{}以外の",
                    "ステッカーをすべて取り除く",
                },
            },
            c_paperback_king_of_wands = {
                name = "ワンドのキング",
                text = {
                    "{C:chips}コモン{}以外のジョーカーをランダムに1枚生成",
                    "{C:inactive}（{C:legendary}レジェンダリー{C:inactive}を除く）",
                },
            },
            c_paperback_knight_of_cups = {
                name = "カップのナイト",
                text = {
                    "カードを{C:attention}#1#{}枚選ぶ",
                    "{C:attention}左{}のカードに{C:attention}右{}のカードの効果をすべてコピーする",
                    "{C:attention}ランク{}と{C:attention}スート{}はそのまま",
                    "{C:attention}右{}のカードを破壊する",
                    "{C:inactive}（ドラッグで並べ替え）",
                },
            },
            c_paperback_knight_of_pentacles = {
                name = "ペンタクルのナイト",
                text = {
                    "{C:green}リロール{}費用を{C:money}$#1#{}に戻す",
                    "{C:inactive}（現在 {C:money}$#2#{C:inactive}）",
                },
            },
            c_paperback_knight_of_swords = {
                name = "ソードのナイト",
                text = {
                    "ランダムな{C:paperback_minor_arcana}小アルカナ{}と{C:tarot}タロット{}を",
                    "1枚ずつ生成する",
                    "{C:inactive}（空きスロットが必要）",
                },
            },
            c_paperback_knight_of_wands = {
                name = "ワンドのナイト",
                text = {
                    "{C:mult}ハイリスクタグ{}を獲得する",
                },
            },
            c_paperback_nine_of_cups = {
                name = "カップの9",
                text = {
                    "選択した{C:attention}ジョーカー{}を破壊し",
                    "可能なら{C:attention}レア度{}が上の{C:attention}ジョーカー{}を生成",
                    "生成できない場合は同じレア度のものを生成",
                    "{C:inactive}（{C:legendary}レジェンダリー{C:inactive}への昇格は不可）",
                },
            },
            c_paperback_nine_of_pentacles = {
                name = "ペンタクルの9",
                text = {
                    "選んだカード{C:attention}#1#{}枚に{C:purple}紫のクリップ{}を付ける",
                },
            },
            c_paperback_nine_of_swords = {
                name = "ソードの9",
                text = {
                    "選んだジョーカーを破壊し、{C:money}$#2#{}を獲得",
                    "そのジョーカーはこのランに{C:red}再出現しない{}",
                    "{C:inactive}（{C:paperback_eternal}エターナル{C:inactive}も破壊可能）",
                },
            },
            c_paperback_nine_of_wands = {
                name = "ワンドの9",
                text = {
                    "選んだカード{C:attention}#1#{}枚を{C:attention}#2#{}に強化する",
                },
            },
            c_paperback_page_of_cups = {
                name = "カップのペイジ",
                text = {
                    "選んだカード最大{C:attention}#1#{}枚に{C:inactive}白のクリップ{}を付ける",
                },
            },
            c_paperback_page_of_pentacles = {
                name = "ペンタクルのペイジ",
                text = {
                    "選んだカード{C:attention}#1#{}枚を{C:attention}#2#{}に強化する",
                },
            },
            c_paperback_page_of_swords = {
                name = "ソードのペイジ",
                text = {
                    "選んだカード{C:attention}#1#{}枚を{C:attention}#2#{}に強化する",
                },
            },
            c_paperback_page_of_wands = {
                name = "ワンドのペイジ",
                text = {
                    "選んだカード最大{C:attention}#1#{}枚に{C:attention}オレンジのクリップ{}を付ける",
                },
            },
            c_paperback_queen_of_cups = {
                name = "カップのクイーン",
                text = {
                    "選んだカード{C:attention}#1#{}枚を{C:attention}#2#{}に強化する",
                },
            },
            c_paperback_queen_of_pentacles = {
                name = "ペンタクルのクイーン",
                text = {
                    "カードを{C:attention}#1#{}枚選び、",
                    "{C:attention}右{}のカードの{C:attention}ランク{}を{C:attention}左{}のカードにコピーする",
                    "{C:inactive}（ドラッグで並べ替え）",
                },
            },
            c_paperback_queen_of_swords = {
                name = "ソードのクイーン",
                text = {
                    "デッキ全体から、選んだカードとは異なるスートの",
                    "カード{C:attention}#1#{}枚をランダムに選ぶ",
                    "それらを選んだカードと同じ{C:attention}スート{}にする",
                },
            },
            c_paperback_queen_of_wands = {
                name = "ワンドのクイーン",
                text = {
                    "{C:green}#2#分の#1#{}の確率でランダムな{C:attention}ジョーカー{}1枚に",
                    "{C:dark_edition}ダイクローム{}を付ける",
                },
            },
            c_paperback_seven_of_cups = {
                name = "カップの7",
                text = {
                    "選んだカード最大{C:attention}#1#{}枚に",
                    "ランダムな{C:attention}強化{}を付ける",
                },
            },
            c_paperback_seven_of_pentacles = {
                name = "ペンタクルの7",
                text = {
                    "選んだカード最大{C:attention}#1#{}枚に{C:green}緑のクリップ{}を付ける",
                },
            },
            c_paperback_seven_of_swords = {
                name = "ソードの7",
                text = {
                    "選んだカード{C:attention}#1#{}枚に{C:attention}金のクリップ{}を付ける",
                },
            },
            c_paperback_seven_of_wands = {
                name = "ワンドの7",
                text = {
                    "{C:attention}破壊タグ{}を獲得する",
                },
            },
            c_paperback_six_of_cups = {
                name = "カップの6",
                text = {
                    "選んだカード{C:attention}#1#{}枚の{C:chips}チップ{}の",
                    "{C:attention}半分{}に相当する{C:money}お金{}を獲得",
                    "{C:inactive}（最大 {C:money}$#2#{C:inactive}）",
                },
            },
            c_paperback_six_of_pentacles = {
                name = "ペンタクルの6",
                text = {
                    "{C:money}投資{}、{C:money}エコノミー{}、{C:red}クーポン{}、",
                    "{C:green}D6{}、{C:attention}ジャグルタグ{}のいずれかを獲得",
                },
            },
            c_paperback_six_of_swords = {
                name = "ソードの6",
                text = {
                    "選んだカード{C:attention}#1#{}枚に{C:attention}黄のクリップ{}を付ける",
                },
            },
            c_paperback_six_of_wands = {
                name = "ワンドの6",
                text = {
                    "選んだカード{C:attention}#1#{}枚を{C:attention}#2#{}に強化する",
                },
            },
            c_paperback_ten_of_cups = {
                name = "カップの10",
                text = {
                    "選んだカード{C:attention}1{}枚に{C:green}#2#分の#1#{}の確率で",
                    "{C:dark_edition}ポリクローム{}を付ける",
                },
            },
            c_paperback_ten_of_pentacles = {
                name = "ペンタクルの10",
                text = {
                    "{C:money}$#1#{}～{C:money}$#2#{}を獲得",
                },
            },
            c_paperback_ten_of_swords = {
                name = "ソードの10",
                text = {
                    "選んだカードと{C:attention}同じランク{}のカードを",
                    "デッキ全体からすべて{C:attention}破壊{}する",
                },
            },
            c_paperback_ten_of_wands = {
                name = "ワンドの10",
                text = {
                    "カードを{C:attention}#1#{}枚選ぶ",
                    "{C:attention}右端の2枚{}を破壊し、その{C:chips}チップ{}を{C:attention}左端{}のカードに加える",
                    "{C:inactive}（ドラッグで並べ替え）",
                },
            },
            c_paperback_three_of_cups = {
                name = "カップの3",
                text = {
                    "選んだカード{C:attention}#1#{}枚に{C:paperback_black}黒のクリップ{}を付ける",
                },
            },
            c_paperback_three_of_pentacles = {
                name = "ペンタクルの3",
                text = {
                    "カードを{C:attention}#1#{}枚選ぶ",
                    "{C:attention}一番右{}のカードの{C:attention}強化{}を{C:attention}左端の2枚{}にコピーする",
                    "{C:inactive}（ドラッグで並べ替え）",
                },
            },
            c_paperback_three_of_swords = {
                name = "ソードの3",
                text = {
                    "選んだカード{C:attention}#1#{}枚を{C:attention}#2#{}に強化する",
                },
            },
            c_paperback_three_of_wands = {
                name = "ワンドの3",
                text = {
                    "選んだカード{C:attention}#1#{}枚のコピーを手札に生成する",
                },
            },
            c_paperback_two_of_cups = {
                name = "カップの2",
                text = {
                    "{C:dark_edition}ポリクローム{}、{C:dark_edition}ホログラム{}、{C:dark_edition}フォイル{}、",
                    "{C:mult}レア{}、{C:green}アンコモン{}のいずれかのタグを獲得",
                },
            },
            c_paperback_two_of_pentacles = {
                name = "ペンタクルの2",
                text = {
                    "選んだジョーカーに{C:paperback_eternal}エターナル{}を付ける",
                    "すでに付いていれば取り除く",
                },
            },
            c_paperback_two_of_swords = {
                name = "ソードの2",
                text = {
                    "選んだカード最大{C:attention}#1#{}枚を",
                    "{C:attention}最後に得点した{}カードと同じスートにする",
                    "{C:inactive}（現在 {V:1}#2#{C:inactive}）",
                },
            },
            c_paperback_two_of_wands = {
                name = "ワンドの2",
                text = {
                    "{C:attention}最も多く{}、および{C:attention}最も少なく{}プレイした役の",
                    "{C:planet}惑星{}カードをそれぞれ生成する",
                    "{C:inactive}（空きスロットが必要）",
                },
            },
        },
        texture_packs = {
            texpack_paperback_spectralsbian = {
                localization = {},
                name = "ペーパーバック",
                text = {
                    "レズビアンの旗の色のペーパーバックの{C:spectral}スペクトルカード{}",
                },
            },
            texpack_paperback_spectrans = {
                localization = {
                    j_paperback_as_above_so_below = {
                        name = "上と同様、下も同様",
                        text = {
                            "{C:attention}使徒{}で{C:attention}5{}カードのポーカーハンドをプレイすると{C:purple}タロット{}カードが",
                            "生成される。ポーカーハンドに{C:attention}ストレート{}も含まれている場合は、",
                            "代わりに{C:spectral}スペクトランス{}カードを生成する",
                            "{C:inactive}（空きスロットが必要）{}",
                        },
                    },
                    j_paperback_emf_reader = {
                        text = {
                            "ラウンドの最初の手に{C:attention}#1#{}が含まれている場合、プレイした",
                            "カードを破壊し、ランダムな スペクトランス カードを生成する",
                        },
                    },
                    j_paperback_first_contact = {
                        text = {
                            "{C:attention}#1#{}[{C:inactive}#2#{}] のスコアを獲得した{C:paperback_dark_suit}ダークスート{}ごとに、ランダムな",
                            "スペクトランス カードを生成する",
                            "{C:inactive}（空きスロットが必要）{}",
                        },
                        unlock = {
                            "1 回の実行で{C:attention,E:1}#1#{}{C:spectral,E:1}スペクトランス{}のカードを使用する",
                        },
                    },
                    j_paperback_ghost_cola = {
                        text = {
                            "このカードを売却すると、{C:attention}#1#{}とランダムな スペクトランス カードが",
                            "生成される",
                            "{C:inactive}（空きスロットが必要）{}",
                        },
                    },
                    j_paperback_oujia_board = {
                        text = {
                            "スペクトランスカードがショップに登場する場合があります。",
                            "ジョーカーは得点する前にシャッフルされる",
                        },
                        unlock = {
                            "{C:attention,E:1}#1#{}{C:spectral,E:1}スペクトランス{}カードを使用する",
                        },
                    },
                    j_paperback_planchette = {
                        text = {
                            "スペクトランス カードを使用すると、このジョーカーは{X:mult,C:white}X#1#{}の倍率を",
                            "獲得する",
                            "{C:inactive}（現在{X:mult,C:white}X#2#{}{C:inactive}倍率）{}",
                        },
                        unlock = {
                            "1 回の実行で{C:attention,E:1}#1#{}{C:spectral,E:1}スペクトランス{}のカードを使用する",
                        },
                    },
                    j_paperback_sinister_minds = {
                        name = "シニスター・マインド",
                        text = {
                            "{C:attention}#7#{}をプレイすると、得点した全カードを{C:attention}#1#{}回再発動",
                            "{C:spectral}スペクトランス{}カードを{C:attention}#4#{}枚使うと再発動回数が{C:attention}#3#{}増える",
                            "{C:inactive}（次の強化まで{C:attention}#8#{C:inactive}枚必要）",
                        },
                    },
                    j_paperback_thornring = {
                        text = {
                            {
                                "{C:attention}#1#{}がプレイされると、プレイしたハンドを破壊し、ランダムな",
                                "スペクトランス カードを生成する",
                                "{C:inactive}（空きスロットが必要）{}",
                            },
                            {
                                "* {C:red}#2#{}残り",
                            },
                        },
                    },
                    j_paperback_touch_tone_joker = {
                        text = {
                            "アルカナ、セレスティアル、または スペクトランス パックを開くときに、",
                            "その中の{C:attention}最初のカード{}を消耗カードに引きます",
                            "{C:inactive}（空きスロットが必要）{}",
                        },
                    },
                    j_paperback_war_without_reason = {
                        unlock = {
                            "{C:attention,E:1}#1#{}{C:spectral,E:1}スペクトランス{}カードを使用する",
                        },
                    },
                },
                name = "ペーパーバックスペクトランス",
                text = {
                    "ペーパーバックの{C:spectral}スペクトルカード{} （トランスフラグカラー",
                    "付き）",
                },
            },
        },
    },
    misc = {
        challenge_names = {
            c_paperback_all_smiles = "オールスマイル",
            c_paperback_borderline = "境界線",
            c_paperback_foodie = "食通",
            c_paperback_hard_cover = "ハードカバー",
            c_paperback_hide_and_seek = "かくれんぼ",
            c_paperback_joker_of_the_day = "今日のジョーカー",
            c_paperback_suburbia_overture = "サバービア序曲",
            c_paperback_trial_of_cups = "カップの試練",
            c_paperback_trial_of_pentacles = "ペンタクルの試練",
            c_paperback_trial_of_swords = "剣の試練",
            c_paperback_trial_of_wands = "ワンドの試練",
            c_paperback_white_nights_and_dark_days = "白夜と暗い日",
        },
        dictionary = {
            b_paperback_ego_gift_cards = "E.G.Oギフト",
            b_paperback_minor_arcana_cards = "小アルカナ",
            k_paperback_ego_gift = "E.G.Oギフト",
            k_paperback_ego_sin_envy = "嫉妬",
            k_paperback_ego_sin_gloom = "憂鬱",
            k_paperback_ego_sin_gluttony = "暴食",
            k_paperback_ego_sin_lust = "色欲",
            k_paperback_ego_sin_madness = "狂気",
            k_paperback_ego_sin_none = "残滓",
            k_paperback_ego_sin_pride = "傲慢",
            k_paperback_ego_sin_sloth = "怠惰",
            k_paperback_ego_sin_wrath = "憤怒",
            k_paperback_minor_arcana = "小アルカナ",
            paperback_and_spacer = "、",
            paperback_art_credit = "アート：",
            paperback_broken_ex = "壊れた！",
            paperback_clippy_msg_1 = "ファイルを保存しますか?",
            paperback_clippy_msg_2 = "クリッピーです！",
            paperback_clippy_msg_3 = "こんにちは！",
            paperback_clippy_msg_4 = "キーボードがオンになっています！",
            paperback_clippy_msg_5 = "お手伝いします！",
            paperback_clippy_msg_6 = "私に聞いて！",
            paperback_clippy_msg_7 = "去るべきでしょうか？",
            paperback_clippy_msg_8 = "マウスがオンになっています!",
            paperback_clippy_msg_full = "ストレージがいっぱいです！",
            paperback_code_credit = "コード：",
            paperback_comma_spacer = "、",
            paperback_confessed_ex = "告白されました！",
            paperback_consumed_ex = "消費された！",
            paperback_copy_ex = "コピー！",
            paperback_corroded_ex = "腐食した！",
            paperback_da_capo_Clubs = "動き 1",
            paperback_da_capo_Diamonds = "動き 3",
            paperback_da_capo_Hearts = "動き 4",
            paperback_da_capo_None = "フィナーレ！",
            paperback_da_capo_Spades = "動き 2",
            paperback_dark = "ダーク",
            paperback_der_freischutz_fire = "火...",
            paperback_destroyed_ex = "破壊されました！",
            paperback_determination_ex = "んがぁぁぁ！",
            paperback_dev_aa7 = "aa7_2k03",
            paperback_dev_ari = "ari",
            paperback_dev_b = "B",
            paperback_dev_dowfrin = "Dowfrin",
            paperback_dev_dylan_hall = "Dylan Hall",
            paperback_dev_ejwu = "ejwu2",
            paperback_dev_infinityplus = "InfinityPlus05",
            paperback_dev_larantula = "Larantula",
            paperback_dev_metanite = "metanite64",
            paperback_dev_nether = "Nether",
            paperback_dev_nevernamed = "NeverNamed",
            paperback_dev_oppositewolf = "OppositeWolf770",
            paperback_dev_papermoonqueen = "PaperMoonQueen",
            paperback_dev_scruby = "S_C_R_U_B_Y",
            paperback_dev_shizi = "Shizi",
            paperback_dev_srockw = "Srock",
            paperback_dev_thermo = "ThermoDyn",
            paperback_dev_vitellary = "vitellary",
            paperback_doubled_ex = "倍増！",
            paperback_downgrade_ex = "ダウングレード！",
            paperback_edition_ex = "版！",
            paperback_ego_gift_pack = "E.G.Oギフト抽出",
            paperback_enhanced_ex = "強化されました！",
            paperback_fall_ex = "秋！",
            paperback_forlorn_destruction = "ごめん...",
            paperback_freezer_ex = "ディナータイム！",
            paperback_goner_ex = "ゴナー！",
            paperback_hamsa_reverse = "逆さま！",
            paperback_hatred_death_ex = "恐怖",
            paperback_inactive = "非アクティブな",
            paperback_investment_ex = "投資！",
            paperback_jestosterone_ex = "マスク！",
            paperback_jestrogen_ex = "フェム！",
            paperback_light = "ライト",
            paperback_melted_ex = "溶けた！",
            paperback_minor_arcana_pack = "小アルカナパック",
            paperback_music_credit = "作曲：",
            paperback_none = "なし",
            paperback_off_switch_ex = "スイング！",
            paperback_one_shift_more_false = "ビート！",
            paperback_one_shift_more_true = "心臓！",
            paperback_plague_quote_10_1 = "使徒は尋ねた。「なぜわたしたちには姿を現し、",
            paperback_plague_quote_10_2 = "世には姿をお見せにならないのですか」",
            paperback_plague_quote_11_1 = "これからは、誰もわたしを煩わせないでほしい。",
            paperback_plague_quote_11_2 = "わたしはこの身にあの方の印を負っているのだから。",
            paperback_plague_quote_12_1 = "わたしがあなたがた十二人を選んだのではないか。",
            paperback_plague_quote_12_2 = "それなのに、あなたがたのうち一人は悪魔だ。",
            paperback_plague_quote_1_1 = "この岩の上にわたしの教会を建てる。",
            paperback_plague_quote_1_2 = "地獄の門もそれには打ち勝てない……",
            paperback_plague_quote_2_1 = "それはいつ起こるのですか。",
            paperback_plague_quote_2_2 = "あなたの到来と時代の終わりには、どんな兆しがあるのですか。",
            paperback_plague_quote_3_1 = "天から火を呼び降ろして",
            paperback_plague_quote_3_2 = "彼らを滅ぼしましょうか。",
            paperback_plague_quote_4_1 = "使徒たちをボアネルゲスと名付けた。",
            paperback_plague_quote_4_2 = "それは「雷の子ら」という意味である。",
            paperback_plague_quote_5_1 = "父をお示しください。",
            paperback_plague_quote_5_2 = "そうすれば、わたしたちは満足します。",
            paperback_plague_quote_6_1 = "ある人を見かけ、「わたしについて来なさい」と言った。",
            paperback_plague_quote_6_2 = "使徒は立ち上がり、その後について行った。",
            paperback_plague_quote_7_1 = "使徒はしばらくの間、魔術を使い、",
            paperback_plague_quote_7_2 = "人々を驚かせていた。",
            paperback_plague_quote_8_1 = "使徒はほかの弟子たちに言った。",
            paperback_plague_quote_8_2 = "「わたしたちも行って、あの方と共に死のう」",
            paperback_plague_quote_9_1 = "そこで使徒は言った。「あなたはあの方の子、",
            paperback_plague_quote_9_2 = "あなたは王です」",
            paperback_plus_consumable = "消耗カード+1",
            paperback_plus_minor_arcana = "小アルカナ+1",
            paperback_plus_odds = "確率の分子+1",
            paperback_plus_tag = "タグ+1",
            paperback_polychrome_ex = "多色！",
            paperback_prevented_ex = "阻止されました！",
            paperback_proceed_ex = "進む",
            paperback_punch_card_active = "友達に教えてください！",
            paperback_punch_card_ex = "間違ったワープです！",
            paperback_rare_ex = "レア！",
            paperback_red_ex = "超秘密！",
            paperback_reduced_ex = "減少！",
            paperback_saved_determination = "保存したユーザー：",
            paperback_saved_unholy_alliance = "保存したユーザー：",
            paperback_superhot_false = "HOT",
            paperback_superhot_true = "SUPER",
            paperback_supplies_ex = "用品！",
            paperback_swoon_ex = "気絶",
            paperback_tipsy_ex = "ほろ酔い！",
            paperback_too_hot_ex = "暑すぎる！",
            paperback_too_late_ex = "遅すぎる！",
            paperback_ui_artists = "アーティスト",
            paperback_ui_custom_suits_enabled = "追加スートを有効にする",
            paperback_ui_developers = "開発者",
            paperback_ui_enable_blinds = "ブラインドを有効にする",
            paperback_ui_enable_editions = "エディションを有効にする",
            paperback_ui_enable_ego_gifts = "E.G.Oギフトを有効にする",
            paperback_ui_enable_enhancements = "強化を有効にする",
            paperback_ui_enable_minor_arcana = "小アルカナを有効にする",
            paperback_ui_enable_paperclips = "クリップを有効にする",
            paperback_ui_enable_ranks = "追加ランクを有効にする",
            paperback_ui_enable_spectrals = "スペクトルカードを有効にする",
            paperback_ui_enable_tags = "タグを有効にする",
            paperback_ui_enable_vouchers = "バウチャーを有効にする",
            paperback_ui_info = "(i)",
            paperback_ui_info_expanded = "( i )",
            paperback_ui_localization = "ローカリゼーション",
            paperback_ui_lock_cards = "すべてのアイテムをロックする",
            paperback_ui_no_requires_restart = "再起動不要",
            paperback_ui_paperclips = "クリップ",
            paperback_ui_plague_doctor_quotes = "ペスト医師の引用を表示",
            paperback_ui_remaining_hands = "残りハンド数",
            paperback_ui_requires_restart = "再起動が必要",
            paperback_ui_select = "選択",
            paperback_ui_show_credits = "クレジットを表示",
            paperback_ui_unlock_cards = "すべてのアイテムのロックを解除する",
            paperback_ui_upgrade_indicators = "アップグレード表示を有効にする",
            paperback_warning_ex = "警告！",
            paperback_watch_ex = "時計！",
            paperback_whitebeard_death_ex = "震撼！",
        },
        labels = {
            paperback_black_clip = "黒のクリップ",
            paperback_blue_clip = "青のクリップ",
            paperback_corroded = "侵食",
            paperback_dichrome = "ダイクローム",
            paperback_energized = "活性化",
            paperback_gold_clip = "金のクリップ",
            paperback_green_clip = "緑のクリップ",
            paperback_orange_clip = "オレンジのクリップ",
            paperback_pink_clip = "ピンクのクリップ",
            paperback_platinum_clip = "プラチナクリップ",
            paperback_purple_clip = "紫のクリップ",
            paperback_red_clip = "赤のクリップ",
            paperback_temporary = "一時的",
            paperback_white_clip = "白のクリップ",
            paperback_yellow_clip = "黄のクリップ",
        },
        poker_hand_descriptions = {
            paperback_Spectrum = {
                "異なるスートのカード5枚",
            },
            ["paperback_Spectrum Five"] = {
                "同じランクのカード5枚。すべて異なるスート",
            },
            ["paperback_Spectrum House"] = {
                "スリーカードとペア。5枚すべて異なるスート",
            },
            ["paperback_Straight Spectrum"] = {
                "ランクが連続するカード5枚。すべて異なるスート",
            },
        },
        poker_hands = {
            paperback_Spectrum = "スペクトラム",
            ["paperback_Spectrum Five"] = "スペクトラムファイブ",
            ["paperback_Spectrum House"] = "スペクトラムハウス",
            ["paperback_Straight Flush (Rapture)"] = "ラプチャー",
            ["paperback_Straight Spectrum"] = "ストレートスペクトラム",
            ["paperback_Straight Spectrum (Royal)"] = "ロイヤルスペクトラム",
        },
        ranks = {
            paperback_Apostle = "使徒",
        },
        suits_plural = {
            paperback_Crowns = "クラウン",
            paperback_Stars = "スター",
        },
        suits_singular = {
            paperback_Crowns = "クラウン",
            paperback_Stars = "スター",
        },
        v_dictionary = {
            paperback_a_ante = "アンティ #1#",
            paperback_a_completion = "#1#/#2#",
            paperback_a_discards = "ディスカード+#1#",
            paperback_a_discards_minus = "ディスカード-#1#",
            paperback_a_dollars = "$#1#",
            paperback_a_dollars_minus = "-$#1#",
            paperback_a_hands_minus = "ハンド-#1#",
            paperback_a_minus_consumable_slot = "消耗カードスロット-#1#",
            paperback_a_odds = "確率の分子+#1#",
            paperback_a_plus_cards = "#2#+#1#",
            paperback_a_plus_consumable_slot = "消耗カードスロット+#1#",
            paperback_a_plus_tags = "タグ+#1#",
            paperback_a_round_minus = "残りラウンド-#1#",
            paperback_prince_of_darkness = "倍率+#1#、チップ+#2#",
        },
        v_text = {
            ch_c_cup_trial_1 = {
                "{C:attention}ボスブラインド{}を倒すと、{C:attention}破壊{}",
            },
            ch_c_cup_trial_2 = {
                "一番左の{C:attention}ジョーカー{}を選択し、新しいものを作成する",
            },
            ch_c_cup_trial_3 = {
                "できれば同じレア度以上のもの",
            },
            ch_c_cup_trial_4 = {
                "{C:inactive}({}{C:legendary}レジェンド{}{C:inactive}){}にはアップグレードできません",
            },
            ch_c_paperback_2x_blind_size = {
                "{C:red}X2{}ベースブラインドサイズ",
            },
            ch_c_paperback_banned_non_common_jokers = {
                "すべての{C:attention}非共通{}ジョーカーは禁止されています",
            },
            ch_c_paperback_banned_vanilla_jokers = {
                "すべての{C:attention}ベース{}ジョーカーは禁止されています",
            },
            ch_c_paperback_non_faces_banned_ante = {
                "すべての{C:attention}非フェイスカード{}は、アンティ4後に{C:red}デバフ{}になる",
            },
            ch_c_paperback_only_food_jokers = {
                "すべての{C:attention}非食品{}ジョーカーは禁止されています",
            },
            ch_c_sword_trial_1 = {
                "デッキ内の5 {C:attention}最下位{}のカードは次のとおり。",
            },
            ch_c_sword_trial_2 = {
                "{C:attention}ボスブラインド{}が敗北すると、{C:attention}破壊{}",
            },
            ch_c_wand_trial = {
                "{C:attention}ボスブラインド{}を倒すと、1 {C:attention}ジョーカースロット{}を獲得する",
            },
        },
    },
}
