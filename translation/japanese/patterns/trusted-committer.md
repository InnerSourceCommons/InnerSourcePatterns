## Title

信頼できるコミッター

## Patlet

多くのInnerSourceプロジェクトは、以下のような状況に陥ります。
彼らは一貫して貢献者からフィードバック、機能、およびバグフィックスを受け取ります。
このような状況で、プロジェクトのメンテナは、単一の貢献以上に貢献者の仕事を認識し、報酬を与える方法を模索します。
このような状況において、プロジェクトメンテナは、単一の貢献以上の貢献者の仕事を認識し、それに報いる方法を探します。

## Problem

- プロジェクトメンテナーは、プロジェクトをサポートする能力を拡張する方法を見つけたい
- プロジェクトメンテナーは、プロジェクトが提供する価値を長くする方法を探したい
- プロジェクトメンテナは、頻繁に貢献する人に目に見える形で報い、彼らの価値 貢献を増幅させる力を与えたいと考えている。
- 組織内のチーム間の貢献を認識するための仕組みや言語がない

## Context

- あなたは、チーム横断的なライブラリ、サービス、または共有リソースのメンテナです。
- 定期的にコントリビューションを受ける
- 定期的に機能リクエストを受ける
- 定期的にバグフィックス依頼がある
- InnerSourceプロジェクトを通じて専門知識を身につけようとする意欲的な貢献者がいる。

## Forces

- プロジェクトのライフサイクルの間に、メンテナーの焦点は、変化するビジネスプロフェッショナルに対応するために離れてシフトすることがあります。
- 貢献者は、自分たちの貢献が目に見える形で認められ、価値を実証することを求めます。
- 小規模なチームにとって、それなりに複雑なプロジェクトを維持するのは負担が大きい
- プロジェクトの機能を大規模に開発することは、小規模なチームにとって負担となる

## Solution

### プロジェクトの信頼されるコミッターの役割を定義する

Trusted Committer が何を担当するかは、各プロジェクトとそのメンテナ次第です。Trusted Committer の役割の範囲について、プロジェクト内で文書化することを忘れないようにしましょう。明確な文書化によって、新しいコミュニティのメンバーに対する期待値を設定し、将来の候補者のために役割を確立します。

Trusted Committer の候補者を特定するためのガイドラインは以下のとおりです。

* コミュニティチャンネル（Slack、JIRA issue triaging など）に積極的に参加している人は Trusted Committer になり、コミュニティサポートにおける役割を正式に決定することができます。
* コード、ドキュメント、その他のリポジトリの変更を頻繁に提出する人。 この人物をプルリクエストに参加させることから始めましょう。この人が積極的にプルリクエストに参加している場合、プロジェクトでのさらなる協力の機会についてアプローチすることを検討してください。

### 信頼できるコミッターを正式に認定する

最初のステップは、Trusted Committer になることについて候補者にアプローチすることです。
メンテナーは候補者に Trusted Committer の役割について教育する必要があります。候補者が Trusted Committer の役割を引き受けることを期待することはありません。各候補者は
候補者は、自分がその責任を果たすために利用可能な帯域を持っているかどうかを判断する必要があります。

候補者がその役割を引き受けた場合、プロジェクトのメンテナーは以下のことを行う必要があります。
ユーザーから Trusted Committer への移行を公的に認めることです。また
また、プロジェクトの README にある Trusted Committers セクションに彼らの名前を追加するのも良いアイデアです。
に追加するのもよいでしょう。 例として

```markdown
# project-name

... your project's readme ...

## Project Leaders

### Maintainers

  - Your team

### [Trusted Committers]

  - The name of the new trusted committer

[Trusted Committers]: https://example.com/link/to/your/trusted/committer/documentation.md
```

### Maintaining Trusted Committer Relationships

Trusted Committer を正式に決めたら、 その人たちをプロジェクトの輪の中に入れておくとよいでしょう。プロジェクトの輪を保つには、プロジェクトチャンネルに招待するといった簡単なものから、企画セッションに参加させるといったものまであります。参加する機会を増やすことで、Trusted Committers が望めば Maintainer になる道も開けます。

信頼されたコミッターに情報を提供するだけでなく、定期的にチェックするのもよいでしょう。最初は一週間に一度、そして徐々に数週間に一度のペースを推奨します。これらのチェックインの目的は、Trusted Committer が新しい役割においてサポートされていると感じられるようにすることです。上司との1:1の会話と同じように、何か問題があれば、耳を傾け、共感して、トラステッドコミッターが成功するのを妨げているものを理解しようとします。プロジェクトを成功に導くために、常にトラスト・コミッターの継続的な努力に感謝し][賞賛し]、新しいチェックインの日付を設定すること。

### Sunsetting a Trusted Committer

Trusted Committer が以下のような場合、Trusted Committer を削除しなければならないことがあります。

* 参加する意思がない
* 職務を遂行することができなくなった
* 会社に雇用されていない

プロジェクトのリソースへのアクセス権を削除する計画については、両者で合意しておく必要があります。
プロジェクトの **Trusted Committer** セクションにあるエントリーを過去の貢献者のリストに移行することも含めて、両者が合意する必要があります。
過去の貢献者のリストに移行する。

アクセス権を削除する際には、[Trusted Committerの参加に公に感謝する][賞賛する]。公に謝辞を述べることで、コミュニティ内での移行と継続性を明確に伝えることができます。

## Resulting Context

### For Contributors

プロジェクトの Trusted Committer ステータスを取得することは、コミュニティプロジェクトに貢献するイニシアチブを示すことになります。このような努力は、上司との年次レビューで評価されることがあります。

### For Maintainers

プロジェクトが成熟するにつれて、メンテナはプロジェクトの重要な側面をあまりよく知らなくなることがあります。Trusted Committers はそのようなギャップを埋め、プロジェクトのあらゆる側面でより良いサービスを提供できるようにします。

健全な Trusted Committers の集団は、メンテナンス担当者が異動した場合にも責任あるスチュワードシップのための計画があることを保証します。

## Known Instances

これは試行錯誤の結果、以下の企業で成功します

- Nike
- PayPal

## Status

- Structured
- Published internally at Nike; drafted via pull-request in June of 2018.

## Authors

- [Fernando Freire]

## Acknowledgements

- [Russell Rutledge]
- [Loren Sanz]
- [Noah Cawley]
- [Jeremy Hicks]
- [Doron Katz]

[Doron Katz]: https://github.com/doronkatz
[Russell Rutledge]: https://github.com/rrrutledge
[Loren Sanz]: https://github.com/mrsanz
[Jeremy Hicks]: https://github.com/greatestusername
[Noah Cawley]: https://github.com/utanapishtim
[praise]: ./praise-participants.md
[Fernando Freire]: https://github.com/dogonthehorizon