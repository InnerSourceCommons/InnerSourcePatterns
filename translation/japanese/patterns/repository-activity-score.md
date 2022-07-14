## Title

リポジトリアクティビティスコア

## Patlet

潜在的なコントリビューターは、彼らの助けを必要とするアクティブなインナーソースプロジェクトを見つけたいと思っています。各プロジェクトのリポジトリのアクティビティスコアを計算することで、プロジェクトのランク付けされたリストを作成することができます (参考: [インナーソースポータル](innersource-portal.md) )、そのため、潜在的コントリビューターは、彼らがコントリビュートしたいプロジェクトをより簡単に決定できます。

## 問題

**インナーソースのプロジェクトはどのような順番で表示されるべきでしょうか？** *GitHubのスター数*, *フォーク数*, *コミット数*, *コードの行数*, *最終更新日時* などの典型的なKPI は、プロジェクトの活動状況を簡潔に示すには十分ではありません。

活発なプロジェクトはもちろん、新しいコントリビューターを必要としているかなり新しく熱心なプロジェクトも、成熟したプロジェクトで活動が少ないものやメンテナンス中のものよりも上位にランクされるべきでしょう。

プロジェクトのアクティビティレベルについて、信頼性が高く汎用性のあるスコアを定義するために、いくつかのKPIから派生した新しい評価指標が必要になります。この指標は、プロジェクトのアクティビティレベルに応じて、プロジェクトを分類するために使用されます。

## ケーススタディ

インナーソースが長期間実践されている場合、または特定の数のプロジェクト(意味のあるしきい値を与えるために50としましょう)を超えて拡がっている場合、現在最も人気がありアクティブなインナーソースプロジェクトを見つけるのは困難です。 長い間存在するプロジェクトはよく知られていますが、もはやあまり活発ではないかもしれません。 一方、かなり新しいプロジェクトには、まだ評判や活発なコミュニティがありません。

インナーソースプロジェクトのリストは、静的なリソースと考えるべきではありませんが、ちょうどその日の最も興味深いトピックを最初にリストするニュースページのように、新しいアクティブなプロジェクトを発見し探索するためのエキサイティングな場所です。したがって、プロジェクトの順序が定期的に更新され、プロジェクトの人気と活動に応じて変更された場合、それは有益であると言えます。

これらの考慮事項を加味し、リポジトリアクティビティスコアを計算する最初のプロトタイプが開発されました。
このプロトタイプは驚くほどよく機能し、プロジェクトの活動状況に応じて常に変化する順序を決定することができます。

## 状況

インナーソースプロジェクトの発見は、[インナーソースポータル](innersource-portal.md) と [ギグマーケットプレイス](gig-marketplace.md) パターンで促進されるか、他のコミュニケーションチャネルやプラットフォームでプロジェクトを促進することで可能になります。アクティビティスコアは、プロジェクトがコミュニティに提示されるデフォルトの順序を定義しています。

## 組織に働く力学

GitHub API で取得できる自動化された KPI は、全ての事柄のうち一部しか示せていません。コードの品質や優れたドキュメントの有無、活発で助け合うコミュニティなど、そのプロジェクトが楽しくコントリビュートできる場所であるかどうかも重要な事項です。

このような「ソフトなKPI」は、手動または半自動で計算と結果のスコアに追加する必要があります。もし、コードカバレッジレポートのような、リポジトリにより多くのコンテキストを提供するツールがあれば、簡単に取り入れることができます。

## スケッチ

![リポジトリ活性度スコアのエコシステム](../../../assets/img/repository_activity_score.png)

こちらはリポジトリアクティビティスコアの計算と適用をまとめたものです。詳しくは、[結果の状況](#結果の状況)をご覧ください。

## ソリューション

リポジトリアクティビティスコアは、インナーソースプロジェクトの(GitHub)活性度を表す数値です。GitHubスター、ウォッチ、フォークなどのリポジトリ統計から自動的に導き出され、他のツールからのKPIや手動評価で付加情報が足されることもあります。

さらに、最終更新日やレポの作成日などの活動パラメータを考慮し、多くのトラクションを持つ若いプロジェクトに活力を与えます。
コントリビューションガイドライン、積極的な参加統計、課題(公開バックログ)を持つプロジェクトも、より高いランキングを受け取ります。

これらはすべて、[GitHub search API](https://docs.github.com/en/rest/search#search-repositories) と [GitHub statistics API](https://docs.github.com/en/rest/metrics/statistics) の結果を使って自動的に取得・計算することが可能です。BitBucket、Gitlab、Gerritのような他のコード・バージョニング・システムも、同様のAPIがあれば統合することが可能です。

以下のコードでは、変数 `repo` に GitHub `search` API から取得したエンティティを、`Participation` オブジェクトに GitHub `stats/participation` API から取得したエンティティを格納することを仮定しています。

必要であれば、ソフトKPI([組織に働く力学](#組織に働く力学)を参照)に従って手動で調整することもできます。

``` javascript
// スター数、ウォッチ数、コミット数、およびイシュー数から仮想のInnerSourceスコアを計算します。
function calculateScore(repo) {
    // 初期スコアは 50 にします。GitHub の KPI (フォーク数、ウォッチャ数、スター数) が低い、アクティブなレポジトリをより良いスタート地点にするためです。
    let iScore = 50;
    // 重み付け：フォーク数とウォッチ数で最もポイント付けし、次にスター数でポイント付け。オープンなイシューの数でも若干のスコアを加える。
    iScore += repo.forks_count * 5;
    iScore += (repo.subscribers_count ? repo.subscribers_count : 0);
    iScore += repo.stargazers_count / 3;
    iScore += repo.open_issues_count / 5;

    // 過去3ヶ月以内に更新されたもの：総合スコアに0～1の乗数を加える（1＝本日更新、0＝100日以上前に更新されたもの）
    let iDaysSinceLastUpdate = (new Date().getTime() - new Date(repo.updated_at).getTime()) / 1000 / 86400;
    iScore = iScore * ((1 + (100 - Math.min(iDaysSinceLastUpdate, 100))) / 100);

    // 過去3ヶ月の参加状況を評価する
    repo._InnerSourceMetadata = repo._InnerSourceMetadata || {};
    if (repo._InnerSourceMetadata.participation) {
        // average commits: adds a bonus multiplier between 0..1 to overall score (1 = >10 commits per week, 0 = less than 3 commits per week)
        let iAverageCommitsPerWeek = repo._InnerSourceMetadata.participation.slice(-13).reduce((a, b) => a + b) / 13;
        iScore = iScore * ((1 + (Math.min(Math.max(iAverageCommitsPerWeek - 3, 0), 7))) / 7);
    }

    // boost calculation:
    // all repositories updated in the previous year will receive a boost of maximum 1000 declining by days since last update
    let iBoost = (1000 - Math.min(iDaysSinceLastUpdate, 365) * 2.74);
    // gradually scale down boost according to repository creation date to mix with "real" engagement stats
    let iDaysSinceCreation = (new Date().getTime() - new Date(repo.created_at).getTime()) / 1000 / 86400;
    iBoost *= (365 - Math.min(iDaysSinceCreation, 365)) / 365;
    // add boost to score
    iScore += iBoost;
    // give projects with a meaningful description a static boost of 50
    iScore += (repo.description?.length > 30 || repo._InnerSourceMetadata.motivation?.length > 30 ? 50 : 0);
    // 貢献ガイドライン(CONTRIBUTING.md)ファイルを持つプロジェクトに、100の加算点を固定して加える。
    iScore += (repo._InnerSourceMetadata.guidelines ? 100 : 0);
    // 非常に活発なプロジェクトは、対数スケールで構成する（発散的だが5000前後で安定する）
    if (iScore > 3000) {
        iScore = 3000 + Math.log(iScore) * 100;
    }
    // 最終スコアは0から始まる四捨五入された整数とする（初期値を差し引いた値）
    iScore = Math.round(iScore - 50);
    // メタデータにスコアを直接追加する
    repo._InnerSourceMetadata.score = iScore;

    return iScore;
}
```

## 結果の状況

コントリビューターは、時間の一部をインナーソースプロジェクトに自由にコミットできます。 彼らはまっさきに彼ら自身のチームの仕事において使っているプロジェクトへのコントリビューションを選ぶかもしれません。しかし、人によってはそれぞれの興味や個人的な開発目標に基づいて、まったく異なる何かにコントリビュートすることを選択するかもしれません。

プロジェクトはリポジトリアクティビティスコアで並べ替えて表示できるため、ポータルで意味のある順序を指定して潜在的な新しいコントリビューターに見てもらうことができます。スコアは、プロジェクト進行中に計算することも、すべてのプロジェクトを定期的に評価して結果のリストを保存するバックグラウンドジョブで計算することもできます。

定期的にすべてのインナーソースリポジトリ(例: GitHubで特定の[トピック](https://github.com/topics)でタグ付けされたもの）を検索するクローラーも有用な追加機能になりえます。これは、[インナーソース ポータル](innersource-portal.md)のようなツール、検索エンジン、または対話型チャットボットでランク付けされたプロジェクトリストを探せるようにするツールも候補になり得ます。

## 理論的解釈

リポジトリアクティビティスコアは、GitHub API に基づくシンプルな計算です。完全に自動化することができ、新しい要件にも簡単に対応することができます。

## 事例

* SAPのインナーソースポータルで、インナーソースプロジェクトのデフォルトの順序を定義するために使用されています。2020年7月に初めて作成され、それ以来、頻繁に微調整や更新が行われています。2020年7月にこのことを InnerSourceCommons に提案したところ、このパターンが確立しました。また、[Michael Graf & Harish B (SAP) at ISC.S11 - The Unexpected Path of Applying InnerSource Patterns](https://www.youtube.com/watch?v=6r9QOw9dcQo&list=PLCH-i0B0otNQZQt_QzGR9Il_kE4C6cQRy&index=6) もご参照ください。

## ステータス

* Structured

## # 著者

[Michael Graf (SAP)](mailto:mi.graf@sap.com)

## 謝辞

InnerSource Commons Community の迅速なアドバイス、そしてこのパターンを養うための多くの有益な意見に感謝します!

* Johannes Tigges
* Sebastian Spier
* Maximilian Capraro
* Tim Yao

## 翻訳の履歴

- **2022-06-07** - 翻訳 [Yuki Hattori](https://github.com/yuhattor)
- **2022-06-21** - レビュー [@hirotakatoya](https://github.com/hirotakatoya)
