## Title

リポジトリアクティビティスコア

## Patlet

潜在的なコントリビューターは、彼らの助けを必要とするアクティブなInnerSourceプロジェクトを見つけたいと思っています。各プロジェクトのリポジトリ活動スコアを計算することで、プロジェクトのランク付けされたリストを作成することができます（例：[InnerSource Portal](innersource-portal.md) ）、そのため、潜在的コントリビューターは、彼らがコントリビュートしたいプロジェクトをより簡単に決定できます。

## 問題

**InnerSourceのプロジェクトはどのような順番で表示されるのでしょうか？GitHub Stars*, *Number of Forks*, *Number of Commits*, *Lines of Code*, *Last Update* などの典型的なランキング KPI は、プロジェクトの活動状況を簡潔に示すには十分ではありません。

活発なプロジェクトはもちろん、新しいコントリビューターを必要としているかなり新しく熱心なプロジェクトも、成熟したプロジェクトで活動が少ないものやメンテナンス中のものよりも上位にランクされるべきです。

プロジェクトの活動レベルについて、信頼性が高く汎用性のあるスコアを定義するために、いくつかのKPIから派生した新しい評価指標が必要である。
この指標は、プロジェクトの活動レベルに応じて、プロジェクトを分類するために使用される。

## 物語

InnerSourceが長い間実践されているか、プロジェクトの特定の数（意味のある閾値を与えるために50としましょう）を超えてスケールしている場合、それは現在最も人気のあるとアクティブInnerSourceプロジェクトを見つけることは困難である。長い間存在するプロジェクトはよく知られていますが、もはや非常にアクティブではないかもしれません。一方、かなり新しいプロジェクトは、まだ評判や活発なコミュニティを持っていません。

InnerSource プロジェクトのリストは、静的なリソースと考えるべきではありませんが、ちょうどその日の最も興味深いトピックを最初にリストするニュースページのように、新しいアクティブなプロジェクトを発見し探索するためのエキサイティングな場所です。したがって、プロジェクトの順序が定期的に更新され、プロジェクトの人気と活動に応じて変更された場合、それは有益である。

このプロトタイプは驚くほどうまく機能し、プロジェクトの活動状況に応じて常に変化する順序を決定します。

## 状況

InnerSourceプロジェクトの発見は、[InnerSource Portal](innersource-portal.md) と [Gig Marketplace](gig-marketplace.md) パターンで促進されるか、他のコミュニケーションチャンネルやプラットフォームでプロジェクトを促進することで可能になります。活動スコアは、プロジェクトがコミュニティに提示されるデフォルトの順序を定義しています。

## ブロッカーとなりうるちから  (Forces)

GitHub API で取得できる自動化された KPI は、真実の一部でしかありません。コードの品質や優れたドキュメントの有無、活発で助け合うコミュニティなど、そのプロジェクトが楽しくコントリビュートできる場所であるかどうかはどうでしょうか。

このような「ソフトな」KPIは、手動または半自動で計算と結果のスコアに追加する必要があります。もし、コードカバレッジレポートのような、リポジトリにより多くのコンテキストを提供するツールがあれば、簡単に取り入れることができます。

## スケッチ

リポジトリ活性度スコアのエコシステム](../../assets/img/repository_activity_score.png)

リポジトリ活性度スコアの計算と適用を一元化したもの。詳しくは、【結果コンテキスト】(#resulting-context)をご覧ください。

## ソリューション

リポジトリ活性度スコアは、InnerSourceプロジェクトの（GitHub）活性度を表す数値です。GitHubスター、ウォッチ、フォークなどのリポジトリ統計から自動的に導き出され、他のツールからのKPIや手動評価でリッチ化されることもあります。

さらに、最終更新日やレポの作成日などの活動パラメータを考慮し、多くのトラクションを持つ若いプロジェクトに活力を与えます。
コントリビューションガイドライン、積極的な参加統計、課題（公開バックログ）を持つプロジェクトも、より高いランキングを受け取ります。

これらはすべて、[GitHub search API](https://docs.github.com/en/rest/search#search-repositories) と [GitHub statistics API](https://docs.github.com/en/rest/metrics/statistics) の結果セットを使って自動的に取得・計算することが可能です。BitBucket、Gitlab、Gerritのような他のコード・バージョニング・システムも、同様のAPIがあれば統合することが可能です。

以下のコードでは、変数 `repo` に GitHub `search` API から取得したエンティティを、`Participation` オブジェクトに GitHub `stats/participation` API から取得したエンティティを格納していると仮定しています。

必要であれば、ソフトKPI（ [Forces](#forces) を参照）に従って手動で調整することもできます。

``` javascript
// calculate a virtual InnerSource score from stars, watches, commits, and issues
function calculateScore(repo) {
    // initial score is 50 to give active repos with low GitHub KPIs (forks, watchers, stars) a better starting point
    let iScore = 50;
    // weighting: forks and watches count most, then stars, add some little score for open issues, too
    iScore += repo.forks_count * 5;
    iScore += (repo.subscribers_count ? repo.subscribers_count : 0);
    iScore += repo.stargazers_count / 3;
    iScore += repo.open_issues_count / 5;

    // updated in last 3 months: adds a bonus multiplier between 0..1 to overall score (1 = updated today, 0 = updated more than 100 days ago)
    let iDaysSinceLastUpdate = (new Date().getTime() - new Date(repo.updated_at).getTime()) / 1000 / 86400;
    iScore = iScore * ((1 + (100 - Math.min(iDaysSinceLastUpdate, 100))) / 100);

    // evaluate participation stats for the previous  3 months
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
    // give projects with contribution guidelines (CONTRIBUTING.md) file a static boost of 100
    iScore += (repo._InnerSourceMetadata.guidelines ? 100 : 0);
    // build in a logarithmic scale for very active projects (open ended but stabilizing around 5000)
    if (iScore > 3000) {
        iScore = 3000 + Math.log(iScore) * 100;
    }
    // final score is a rounded value starting from 0 (subtract the initial value)
    iScore = Math.round(iScore - 50);
    // add score to metadata on the fly
    repo._InnerSourceMetadata.score = iScore;

    return iScore;
}
```

## 結果の状況

コントリビューターは、InnerSourceプロジェクトに自分の時間の一部をコミットするために自由である。彼らはとにかく彼らの通常のチームでの作業のために依存しているプロジェクトにコントリビュートすることを選択することがあります。しかし、彼らはまた、彼らの興味や個人的な開発目標に基づいて、完全に異なるものにコントリビュートすることを選択することができます。

プロジェクトは、リポジトリ活動スコアでソートして表示することができ、新しいコントリビューターの候補にプロジェクトを提示するポータルで意味のある順序を与えることができます。スコアはその場で計算することもできますし、定期的にすべてのプロジェクトを評価し、結果のリストを保存するバックグラウンドジョブで計算することもできます。

定期的にすべてのInnerSourceリポジトリ（例：GitHubで特定の[topic](https://github.com/topics)でタグ付けされたもの）を検索するクローラーも有用な追加機能になりえます。これは、[InnerSource Portal](innersource-portal.md) のようなツール、検索エンジン、または対話型チャットボットの入力として使用できるプロジェクトのランク付けされたリストを提供するものです。

## Rationale

リポジトリ活性度スコアは、GitHub API に基づくシンプルな計算です。完全に自動化することができ、新しい要件にも簡単に対応することができます。

## 事例

* SAPのInnerSourceプロジェクトポータルで、InnerSourceプロジェクトのデフォルトの順序を定義するために使用されます。2020年7月に初めて作成され、それ以来、頻繁に微調整や更新が行われている。2020年7月にInnerSourceCommonsに提案したところ、このパターンが出現した。また、[Michael Graf & Harish B (SAP) at ISC.S11 - The Unexpected Path of Applying InnerSource Patterns](https://www.youtube.com/watch?v=6r9QOw9dcQo&list=PLCH-i0B0otNQZQt_QzGR9Il_kE4C6cQRy&index=6) もご参照ください。

## ステータス

* Structured

## 著者(s)

[Michael Graf (SAP)](mailto:mi.graf@sap.com)

## 謝辞

Thank you to the InnerSource Commons Community for lightning-fast advice, and a lot of helpful input to feed this pattern! Especially:

* Johannes Tigges
* Sebastian Spier
* Maximilian Capraro
* Tim Yao
