return {
  descriptions = {
    Back = {
      b_paperback_paper = {
        name = "ペーパーデッキ",
        text = {
          "{C:legendary}Paperback{C:attention}のジョーカー{}の出現率が{C:attention}3倍",
          "ジョーカー{C:attention,T:j_paperback_shopping_center}#1#{}を持ってランを開始",
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
      bl_paperback_quarter = {
        name = "四分音符",
        text = {
          "カードが#2#分の#1#の確率で",
          "デバフを受ける",
        },
      },
      bl_paperback_half = {
        name = "二分音符",
        text = {
          "表示されている確率が",
          "すべて半分になる",
        },
      },
      bl_paperback_whole = {
        name = "全音符",
        text = {
          "このアンティで得点していない",
          "ランクのカードはデバフを受ける",
        },
      },
      bl_paperback_rest = {
        name = "休符",
        text = {
          "数字札を引くと",
          "#2#分の#1#の確率で裏向きになる",
        },
      },
      bl_paperback_flat = {
        name = "フラット",
        text = {
          "プレイしたカードの",
          "ランクが下がる",
        },
      },
      bl_paperback_sharp = {
        name = "シャープ",
        text = {
          "プレイしたカードの",
          "ランクが上がる",
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
      bl_paperback_coda = {
        name = "コーダ",
        text = {
          "カードとジョーカーを",
          "移動できない",
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
      bl_paperback_glissando = {
        name = "グリッサンド",
        text = {
          "このラウンドで得点した最高ランクより",
          "低いランクのカードはデバフを受ける",
        },
      },
      bl_paperback_misty_bass = {
        name = "ミスティ・バス",
        text = {
          "すべてのジョーカーをシャッフルし",
          "一番左のジョーカーを固定する",
        },
      },
      bl_paperback_taupe_treble = {
        name = "トープ・トレブル",
        text = {
          "強化されていないカードは",
          "デバフを受ける",
        },
      },
    },
    Joker = {
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
      j_paperback_deviled_egg = {
        name = "デビルドエッグ",
        text = {
          "各ラウンドで最初に得点したカードが",
          "{C:attention}ゴールドカード{}になる",
          "残り{C:attention}#1#{}ラウンドで食べられる",
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
      j_paperback_teapot = {
        name = "ティーポット",
        text = {
          "{C:attention}#2#{}が{C:attention}得点する{}たびに",
          "このジョーカーはチップ{C:blue}+#1#{}",
          "{C:inactive}（現在のチップ {C:blue}+#3#{C:inactive}）",
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
      j_paperback_blood_rain = {
        name = "血の雨",
        text = {
          "{C:attention}#1#{}は{C:chips}チップ{}の代わりに",
          "手札にある同カードの{C:attention}ランク{}に等しい",
          "{C:mult}倍率{}を加える",
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
      j_paperback_jestosterone = {
        name = "ジェストステロン",
        text = {
          "得点した{C:attention}#1#{}が{C:attention}#2#{}に変わる",
        },
      },
      j_paperback_jestrogen = {
        name = "ジェストロゲン",
        text = {
          "得点した{C:attention}#1#{}と{C:attention}#2#{}が",
          "{C:attention}#3#{}に変わる",
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
      c_paperback_apostle_of_wands = {
        name = "ワンドの使徒",
        text = {
          "{C:legendary}レジェンダリー{}以外のジョーカーを",
          "{C:attention}選んで{}1枚生成する",
          "{C:inactive}（重複不可）",
        },
      },
      c_paperback_apostle_of_swords = {
        name = "ソードの使徒",
        text = {
          "選択した{C:attention}ジョーカー{}を破壊する",
          "アンティ{C:attention}#1#{}",
        },
      },
      c_paperback_apostle_of_pentacles = {
        name = "ペンタクルの使徒",
        text = {
          "選択したカード{C:attention}#1#{}枚に",
          "{C:paperback_platinum}プラチナクリップ{}を付ける",
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
    Voucher = {
      v_paperback_celtic_cross = {
        name = "ケルト十字",
        text = {
          "{C:attention}ボスブラインド{}を倒した次のショップに",
          "{C:attention}無料{}の{C:paperback_minor_arcana}メガ小アルカナパック{}が並ぶ",
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
      v_paperback_second_trumpet = {
        name = "第二のラッパ",
        text = {
          "最初に獲得した{C:paperback_ego_gift}E.G.Oギフト{}で",
          "消耗カードスロット{C:attention}+#1#{}",
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
      tag_paperback_divination = {
        name = "占いタグ",
        text = {
          "{C:paperback_minor_arcana}メガ小アルカナパック{}を",
          "無料で獲得",
        },
      },
      tag_paperback_dichrome = {
        name = "ダイクロームタグ",
        text = {
          "ショップに次に並ぶ通常版のジョーカーが",
          "無料になり、{C:dark_edition}ダイクローム{}になる",
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
      tag_paperback_breaking = {
        name = "破壊タグ",
        text = {
          "{C:attention}ボスブラインド{}を無効化する",
        },
      },
    },
    Planet = {
      c_paperback_quaoar = {
        name = "クワオアー",
      },
      c_paperback_haumea = {
        name = "ハウメア",
      },
      c_paperback_sedna = {
        name = "セドナ",
      },
      c_paperback_makemake = {
        name = "マケマケ",
      },
    },
    Enhanced = {
      m_paperback_ceramic = {
        name = "セラミックカード",
        text = {
          "得点時に{C:money}$#1#{}～{C:money}$#2#{}を獲得",
          "プレイ中または手札にあるとき",
          "最終{C:mult}倍率{}が{C:chips}チップ{}を{C:attention}上回る{}と{C:red}割れる{}",
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
      m_paperback_wrapped = {
        name = "包みカード",
        text = {
          "得点時に{C:money}$#1#{}を獲得",
          "ランクもスートも持たない",
        },
      },
      m_paperback_bandaged = {
        name = "包帯カード",
        text = {
          "{C:attention}両隣{}のカードを再発動させる",
          "得点時に{C:green}#2#分の#1#{}の確率で{C:red}壊れる{}",
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
      m_paperback_stained = {
        name = "染み付きカード",
        text = {
          "ハンドをプレイした後も{C:attention}手札に残っていれば{}",
          "得点したカードに永続的に倍率{C:mult}+#1#{}",
        },
      },
      m_paperback_sleeved = {
        name = "スリーブカード",
        text = {
          "{C:attention}デバフ{}を受けず、{C:attention}裏向き{}にならない",
          "破壊されると{C:money}$#1#{}を獲得",
        },
      },
      m_paperback_antique = {
        name = "アンティークカード",
        text = {
          "チップ{X:chips,C:white}X#1#{}",
          "得点するハンドに含まれていれば",
          "チップの乗数が{X:chips,C:white}X#2#{}上昇",
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
    paperback_minor_arcana = {
      c_paperback_nine_of_cups = {
        name = "カップの9",
        text = {
          "選択した{C:attention}ジョーカー{}を破壊し",
          "可能なら{C:attention}レア度{}が上の{C:attention}ジョーカー{}を生成",
          "生成できない場合は同じレア度のものを生成",
          "{C:inactive}（{C:legendary}レジェンダリー{C:inactive}への昇格は不可）",
        },
      },
    },
    Other = {
      paperback_temporary = {
        name = "一時的",
        text = {
          "ラウンド終了時に{C:red}取り除かれる{}",
        },
      },
      paperback_energized = {
        name = "活性化",
        text = {
          "{C:attention}#1#{}や{C:attention}#2#{}でコピーできない",
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
    },
  },
  misc = {
    suits_singular = {
      paperback_Crowns = "クラウン",
      paperback_Stars = "スター",
    },
    suits_plural = {
      paperback_Crowns = "クラウン",
      paperback_Stars = "スター",
    },
    ranks = {
      paperback_Apostle = "使徒",
    },
    poker_hands = {
      paperback_Spectrum = "スペクトラム",
      ["paperback_Straight Spectrum"] = "ストレートスペクトラム",
      ["paperback_Straight Spectrum (Royal)"] = "ロイヤルスペクトラム",
      ["paperback_Spectrum House"] = "スペクトラムハウス",
      ["paperback_Spectrum Five"] = "スペクトラムファイブ",
      ["paperback_Straight Flush (Rapture)"] = "ラプチャー",
    },
    poker_hand_descriptions = {
      paperback_Spectrum = {
        "異なるスートのカード5枚",
      },
      ["paperback_Straight Spectrum"] = {
        "ランクが連続するカード5枚。すべて異なるスート",
      },
      ["paperback_Spectrum House"] = {
        "スリーカードとペア。5枚すべて異なるスート",
      },
      ["paperback_Spectrum Five"] = {
        "同じランクのカード5枚。すべて異なるスート",
      },
    },
    dictionary = {
      k_paperback_minor_arcana = "小アルカナ",
      b_paperback_minor_arcana_cards = "小アルカナ",
      paperback_minor_arcana_pack = "小アルカナパック",
      k_paperback_ego_gift = "E.G.Oギフト",
      b_paperback_ego_gift_cards = "E.G.Oギフト",
      paperback_ego_gift_pack = "E.G.Oギフト抽出",
      paperback_consumed_ex = "消費された！",
      paperback_reduced_ex = "減少！",
      paperback_plus_minor_arcana = "小アルカナ+1",
      paperback_plus_consumable = "消耗カード+1",
      paperback_plus_tag = "タグ+1",
    },
    labels = {
      paperback_blue_clip = "青のクリップ",
      paperback_red_clip = "赤のクリップ",
      paperback_orange_clip = "オレンジのクリップ",
      paperback_pink_clip = "ピンクのクリップ",
      paperback_black_clip = "黒のクリップ",
      paperback_yellow_clip = "黄のクリップ",
      paperback_gold_clip = "金のクリップ",
      paperback_white_clip = "白のクリップ",
      paperback_green_clip = "緑のクリップ",
      paperback_purple_clip = "紫のクリップ",
      paperback_platinum_clip = "プラチナクリップ",
      paperback_dichrome = "ダイクローム",
      paperback_energized = "活性化",
      paperback_temporary = "一時的",
      paperback_corroded = "侵食",
    },
  },
}
