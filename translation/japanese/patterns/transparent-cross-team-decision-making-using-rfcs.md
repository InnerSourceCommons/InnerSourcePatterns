## Title

RFCを用いたチーム横断的な意思決定の透明化

## Patlet

高い参加率を達成し、関係者全員にとって最良の意思決定を行いたいInnerSourceプロジェクトは、ソフトウェアのライフサイクル全体を通して参加型のシステムを構築する方法を見つける必要があります。内部のRFC（Requests for Comments）ドキュメントを公開することで、設計プロセスの早い段階から議論を行うことができ、関係者全員が高いコミットメントを持ってソリューションを構築できる可能性が高まります。

## Problem

InnerSourceプロジェクトが健全であるためには、相当な数の貢献者が必要です。例えば、互いに互換性のない機能をプロジェクトに追加したり、アーキテクチャを不健全に肥大化させたりする可能性があります。

このような意見の相違や誤解をプロセスの後半で発見することは、例えば、ソフトウェアがすでに構築された後では、非常にコストがかかる。このような意見の相違は、関係者全員のフラストレーションにつながり、プロジェクトにおけるコラボレーション文化の健全性を損なう可能性さえある。このような不一致が表面化する一般的な状況は、変更要求の作成者とプロジェクトのメンテナが、提案された変更が全くなされるべきでないことに本質的に同意しないため、非常に長い間オープンになっている変更要求（プルリクエスト）です。

InnerSourceプロジェクトでは、プロジェクトが社内の複数のチームによってメンテナンスされている場合、この状況はより頻繁に発生します。

## Story

プロジェクト、または複数のプロジェクトで構成されるアプリケーションは、各チームがプロジェクトまたはアプリケーションのさまざまな領域を所有している、いくつかの異なるチームによって維持されます。これらのチームはお互いの領域に対してInnerSourceの貢献をしていますが、より大きな横断的な変更は、各チームのテクニカルリーダーが協力して行うか、まったく行われません。その結果、ほとんどのエンジニアは大規模で横断的な変更を行うことができず、イノベーションとコラボレーションの機会が減少してしまいます。

RFCのプロセスとテンプレートを導入することで、チームや個人は、透明性のある意思決定プロセスを通じて、大規模で横断的な変更を提案する権限を与えられ、チーム間で非同期的に協議が行われます。その結果、イノベーションが促進され、コラボレーションが緊密になり、知識がより広まることになります。このためには、あらゆるレベルのあらゆる分野から賛同を得ること、そして、人々がオープンにアイデアを提案し、議論できるような心理的安全性の高い環境を整えることが必要です。

どのようなプロセスでもそうですが、これは継続的に改善されなければなりません。RFCのテンプレートやプロセスを変更して、包括的、協調的、かつ効果的なものにする必要があるかもしれません。

## Context

- InnerSourceプロジェクトは多くのチームによって共有されています。
- 建築家グループは十分な時間がなく、またすべてのケースで適切な判断を下すのに十分なドメイン固有の知識もないため、包括的な設計上の決定を常に中央の組織（建築家のグループなど）から行うことはできない。
- あるプロジェクトの方向性については、さまざまなタイプのユーザーが意見を述べます。そのようなユーザーは以下の通りです。開発者、プロダクトオーナー、プロダクトマネージャーなど。
- 参加者全員と頻繁に同期ミーティングを開くことが不可能なため、少なくとも部分的には非同期で意思決定を行う必要がある。
- 決定事項を文書化したい、つまり口頭だけでなく文書で確認したい。

# Forces

- ほとんどの場合、関係者はかなり迅速に決定を下したい（例：先行設計の時間がかなり制限される）。
- 関係者の多くにとって、（すでに実装されていない）物事を書き留めることは新しいスキルであることが多い。

## Sketch

![RFC process used at Uber's BaseUI project (open source example)](../../../assets/img/rfc-process-uber-baseui.png)

## Solutions

私たちは、チーム横断的な意思決定プロセスの透明性を高めるために、RFC的なプロセスを選択しました（[Requests for Comments][requests-for-comments]もご参照ください）。

このソリューションの重要な要素は以下の通りです。

- RFCを発行する場合(および発行しない場合)の説明
- RFC文書のテンプレート
    - RFCの作成者に、自分の提案を多角的に検討するよう促すこと。
    - ハイレベルでアクセスしやすい概要と、詳細で深い説明の両方を促すこと。
- RFCを取り巻くよく知られた軽量なプロセス。
    - RFCを公開し、すべての関係者と共有する方法 (例: Slack、メーリングリスト)
    - RFCに対するフィードバックをどのように収集するか
    - どのようにフィードバックを取り込むか
    - RFCを結論や決定に向けてどのように進めるか（例：関連する指名されたメンテナがサインオフすること）
    - 適切なツールの選択 (例: 非エンジニアはソースコントロールツールにアクセスできないかもしれません)
- RFCのテンプレートとプロセスを繰り返し使用することを約束すること

### Examples/Templates

- [Rust][rust] is a good Open Source example of RFC template and process, and has been the basis for many other RFC processes.
- [Genericised BBC iPlayer & Sounds RFC template](templates/rfc.md), originally based on the [Rust][rust] template

## Resulting Context

RFCのようなプロセスを導入することで、チーム横断的な意思決定プロセスがより透明化され、すべての人の声を聞くことができるようになり、価値があることが証明されました。

観察可能なポジティブな効果

- 多くのチームに影響を与える意思決定プロセスの民主化**（チームリーダーの負担も軽減される）
- 複数のチームと地域をまたいでうまく機能する、オープンな非同期コミュニケーション方法**。
- 個人とチーム**に大規模な変化をもたらす力を与える
- 決定事項の記録**は、人々が文脈を参照するために参照することができます。
- 経験豊富なエンジニアは、会議に出席する必要がなく、非同期かつ遠隔で解決策に貢献できるため、その影響力を拡大することができます。
- 用語の整合性** 例えば、"システムテストとは何か "といったテスト用語を明確にすることである。
- プロセスの整合性** 例：時間外サポートプロセスの明示
- RFCを書くことで、著者は通常よりも自分自身に挑戦することになるので、**思考がより明確になる**。

RFCのアプローチには、私たちが指摘したいリスクもあります。

- 例えば、RFCで決定されたことに異議を唱える人がいるかもしれません。しかし、意思決定のプロセスを文書化することは、このようなシナリオにおいても有益です。なぜなら、ある決定がいつ、なぜなされたかを人々に示すことができるからです。
- 設計案（アーキテクチャ、プロトコルなど）を前もって書き上げることは、滝のような設計の要素があり、多くの開発チームが好む反復的な開発アプローチには適さない。覚えておいてください: 「包括的な文書よりも実用的なソフトウェア」([Agile Manifesto](https://agilemanifesto.org/))。RFCプロセスは可能な限り軽量であるべきです。
- RFCは大きくなりすぎて扱いにくくなる可能性があります。これはしばしば、長いコメントスレッドやそれを取り巻く議論に表れます。そのような状況では、ワーキンググループや直接のミーティングのような同期的なコミュニケーションでRFCを補完することを決定することがあります。しかし、ミーティング中にすべての情報を共有するのではなく、ミーティングの前にRFCを読むことができるので、時間はまだ節約されています。

## Rationale

RFCs haven proven themselves in the Open Source world for many years. This is true both for the Internet as a whole where RFCs have been instrumental in developing standards (e.g. see [30 Years of RFCs][30-years-of-rfcs]), as well for other Open Source projects that have adapted this method to promote transparent decision making in their community (e.g. [RUST][rust], [ZeroMQ][zeromq]).

In the context of InnerSource, other companies have shared their experiences with RFC-like approaches too, such as [Uber][uber] and [Europace][europace].

Also for decision making outside of pure software design decisions, transparent decision making models can be effective e.g. when working towards an Open Organization. For an example see Red Hat’s [Open Decision Framework][open-decision-framework] (released publicly on June 7, 2016).

## Known Instances

- **BBC iPlayer & Sounds** - As presented at the ISC Fall Summit 2020 [Using Internal RFCs to Enhance Collaboration][bbc].
- **Europace** - As described in Open Organization: [Setting cross-team standards and best practices in the open][europace].
- **Uber** - According to this blog post by Gergely Orosz: [Scaling Engineering Teams via RFCs: Writing Things Down][uber].
- **Google Design Docs** - As described in this blog post by Malte Ubl [Design Docs at Google][google]

## Status

Structured

## Author(s)

- Tom Sadler
- Sebastian Spier

## Aliases

- [Design Docs][google]
- Architecture Decision Record (ADRs) - Not necessarily a direct alias, as they can sometimes be used very differently e.g. RFCs for seeking input and building consensus, ADRs for recording decisions and implementation detail

[requests-for-comments]: https://en.wikipedia.org/wiki/Request_for_Comments
[30-years-of-rfcs]: https://www.rfc-editor.org/rfc/rfc2555.txt
[rust]: https://github.com/rust-lang/rfcs
[zeromq]: https://rfc.zeromq.org
[uber]: https://blog.pragmaticengineer.com/scaling-engineering-teams-via-writing-things-down-rfcs/
[europace]: https://github.com/open-organization/open-org-distributed-work-guide/blob/master/drostfromm-remote-first-through-openess.md#setting-cross-team-standards-and-best-practices-in-the-open
[open-decision-framework]: https://www.redhat.com/en/about/press-releases/red-hat-releases-open-decision-framework-spur-transparent-and-inclusive-leadership
[bbc]: https://www.youtube.com/watch?v=U6zlghE0HcE
[google]: https://www.industrialempathy.com/posts/design-docs-at-google/
