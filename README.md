# Balatro MOD 日本語化

## Paperback v0.9.0

[Paperback v0.9.0](https://github.com/Balatro-Paperback/paperback/releases/tag/v0.9.0) 向けの日本語化ファイルです。

1. Paperback v0.9.0 を導入します。
2. [ja.lua](Paperback/localization/ja.lua) をダウンロードします。GitHubでファイルを開き、右上の **Download raw file** を選択します。
3. ダウンロードした `ja.lua` をPaperback本体の `localization` フォルダに入れます。既存の `en-us.lua` と同じ場所です。
4. Balatroを再起動し、ゲーム内の言語を日本語に設定します。

v0.9.0の同梱英語ローカライズにある全項目を収録しています。ジョーカー、小アルカナ、E.G.Oギフト、スリーブ、設定、チャレンジなどが対象です。初版を導入済みの場合は、新しい `ja.lua` で上書きしてください。

追加分は機械翻訳を下訳にし、用語や一部の効果説明を見直しました。Steamoddedでの読み込みと、変数・確率・参照先の整合性を確認済みです。ゲーム内での表示と全効果の個別校正は未実施です。

「ジョーカー」「チップ」「倍率」「スート」は [Balatro公式日本語FAQ](https://www.playbalatro.com/ja/faq/) の表記に合わせています。Paperback独自の用語は「小アルカナ」「E.G.Oギフト」「スペクトラム」「クラウン」「スター」に統一しました。

翻訳元は [v0.9.0 の英語ローカライズ](https://github.com/Balatro-Paperback/paperback/blob/v0.9.0/localization/en-us.lua) です。ライセンスは [Paperback/LICENSE](Paperback/LICENSE) を参照してください。

## JokerHub v2.0.1

1. [JokerHub v2.0.1](https://github.com/sup3p/JokerHub/releases/tag/v2.0.1) の `JokerHub-2.0.1.zip` を展開し、JokerHubを導入します。リリースの依存関係はSteamodded 1.0.0~BETA-1221a以上とLovely 0.8以上です。
2. [JokerHub用 ja.lua](JokerHub/localization/ja.lua) を開き、右上の **Download raw file** からダウンロードします。
3. `ja.lua` をJokerHub本体の `localization` フォルダに入れます。既存の `en-us.lua` と同じ場所です。
4. Balatroを再起動し、ゲーム内の言語を日本語に設定します。

ジョーカー全22種、デッキ1種、ステーク2種、チャレンジ名3件、アマミヤの能力など、リリースの英語ローカライズにある表示文をすべて収録しています。「チップ」「倍率」などは [Balatroの日本語表記](https://www.playbalatro.com/ja/faq/) に合わせています。

MODのコードに直接書かれている一部の表示（`No hand` や `Irradiated!` など）は英語で表示されます。ゲーム内での見た目は未確認です。

[翻訳元の英語ローカライズ](https://github.com/sup3p/JokerHub/blob/v2.0.1/localization/en-us.lua)

## All In Jest 0.8.0

1. [All In Jest 0.8.0](https://github.com/survovoaneend/All-In-Jest/releases/tag/0.8.0) を導入します。このリリースではSteamodded 26.1002系以降とLovely 0.10.0以上が必要です。
2. [All In Jest用 ja.lua](All-In-Jest/localization/ja.lua) を開き、右上の **Download raw file** からダウンロードします。
3. `ja.lua` をAll In Jest本体の `localization` フォルダに入れます。既存の `default.lua` と同じ場所です。
4. Balatroを再起動し、ゲーム内の言語を日本語に設定します。

0.8.0の同梱英語ローカライズにある全項目を収録しています。ジョーカーをはじめ、消耗カード、ブラインド、タグ、設定、実績などが対象です。初版を導入済みの場合は、新しい `ja.lua` で上書きしてください。

追加分は機械翻訳を下訳にし、用語や一部の効果説明を見直しました。Luaの読み込みと、変数・確率・参照先の整合性を確認済みです。ゲーム内での表示と全効果の個別校正は未実施です。MODコード内に直接書かれた一部の発動メッセージは英語で表示されます。

「チップ」「倍率」「スート」などは [Balatroの日本語表記](https://www.playbalatro.com/ja/faq/) に合わせています。翻訳元は [All In Jest 0.8.0 のローカライズ](https://github.com/survovoaneend/All-In-Jest/tree/0.8.0/localization) です。
