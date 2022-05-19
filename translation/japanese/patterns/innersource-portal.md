## Title

InnerSource Portal

## Patlet

潜在的な貢献者は、彼らが興味を持っているInnerSourceプロジェクトを簡単に見つけることができません。すべての利用可能なInnerSourceプロジェクトの情報をインデックス化するイントラネットのウェブサイトを作成することにより、あなたは貢献者が彼らに興味があるかもしれないプロジェクトについて学ぶことができ、InnerSourceプロジェクトの所有者は、外部の聴衆を引き付けることができます。

## Problem

InnerSourceプロジェクトチームは、外部からの貢献を集めることが困難であることを発見しています。

あなたの組織のInnerSourceプロジェクトは増加しているが、潜在的な貢献者は、それらを発見するための簡単な方法がありません。

## Story

あなたは、組織内のInnerSourceの練習を確立しようとしています。 あなたは、いくつかのプロジェクトがInnerSourceモデルを使用して実行されていることを知っているが、それらの存在は、他の従業員との口コミ、電子メールまたはサイドバーの会話を介してのみ伝達されています。 結果としてInnerSourceプロジェクトの所有者は、それが困難な貢献者を引き付けるために見つけるされています。 

彼らは簡単にすべての進行中のInnerSourceプロジェクトを発見することができますアクセスするために組織全体の従業員のための単一の、共有リソースはありません。 これは、深刻なすべてのInnerSourceプロジェクトの成長の可能性を制限しています。 

すべてのInnerSourceプロジェクトは、できるだけ多くの観客に彼らの可視性を高め、組織全体の貢献者を引き付けるために何ができるのでしょうか？

## Context

* あなたの組織は、InnerSourceワークスタイルを採用することに興味を持っています。
* InnerSourceプロジェクトの所有者は、彼らのプロジェクトに観客を引き付けるための方法を探しています。しかし、彼らは潜在的な貢献者に広告を出すことができるそれらを介して利用可能な通信チャネルによって制限されています。
* あなたの組織でInnerSourceプロジェクトが増加している。
* この問題をさらに深刻にしているのは、使用されている共有ソース管理アプリケーションの検索機能が非常に限られているため、InnerSourceプロジェクトを探す開発者でさえ、その場所を特定するのに苦労しているという事実です。

### Prerequisites

* 管理者は、従業員がInnerSourceプロジェクトに参加することを暗黙の了解として与えています。
* 共有ソース管理システムは、それがホストするリポジトリの内容へのプログラムによるアクセスを提供し、使用されています。
* InnerSourceのコラボレーションを促進するための責任を持つ組織内の部門があります。

## Forces

* 別々のエンジニアリングチームが、共通の課題に対してパートナーとして取り組むことの可能性が十分に発揮されていない。
* InnerSourceプロジェクトが存在することを個人が発見することは困難である。
* それはInnerSourceプロジェクトの所有者が外部の貢献者の聴衆を引き付けることが困難である。

## Solutions

InnerSourceプロジェクトの所有者が簡単に彼らのプロジェクトの可用性を宣伝することができますInnerSourceポータルイントラネットウェブサイトを作成します。

ポータルの主要なプロパティは次のとおりです。

* InnerSourceポータルへの訪問者は、すべての利用可能なプロジェクトを見るだけでなく、プロジェクト名、使用中の技術、貢献者名、スポンサー事業部などの様々な条件に基づいて、特定のプロジェクトを検索することができるようにする必要があります。 
* InnerSourceポータルを通じて表示される情報は、常にInnerSourceプロジェクトの所有者の完全な制御下にある必要があります。 好ましくは、プロジェクトリポジトリ自体に格納されている特定のデータファイルまたはメタデータから直接この情報をソーシングすることによって、。 
* プロジェクトの所有者は、プロジェクト名、信頼できる貢献者の名前、簡単な説明とコードリポジトリまたは任意のサポート文書へのリンクを含むそれらのデータファイル内のプロジェクトに関するすべての関連情報を含める必要があります。 
* （オプション）ほとんどの組織は、ポータルをイントラネットでのみ利用できるようにすることを選択しますが、いくつかの組織は、ポータルを公共のインターネット上で利用できるようにすることを選択しました。後者は、例えばブランディングや採用の目的で、ポータルにインナーソースのアプローチに関する追加情報を表示したい組織にとって興味深いものになるでしょう。

ポータルを立ち上げる際には、ポータル内に表示されるプロジェクトの数を増やすために、InnerSourceのデータファイルやコードリポジトリへのメタデータの追加を促進するコミュニケーションキャンペーンを検討する必要があります。

InnerSourceポータルの[参考実装](https://github.com/SAP/project-portal-for-innersource)はGitHub上で公開されており、コントリビューションを受け付けています。これは、インタラクティブで使いやすい方法で、組織のすべてのInnerSourceプロジェクトを一覧表示します。プロジェクトはGitHubの専用トピックを使って自己登録し、追加のメタデータを提供することができます。

[InnerSourceポータルの例](../../assets/img/portal-overview.png "Example of an InnerSource Portal")

## Resulting Context

* InnerSourceポータルは、InnerSourceプロジェクトの所有者が組織全体の聴衆に自分のプロジェクトを宣伝することが可能になりました。 この増加した可視性のために、彼らはこれまで以上に貢献者のはるかに大きなコミュニティを魅了しています。
* InnerSourceプロジェクトに参加したい人のために、InnerSourceポータルは、彼らが特定の条件に基づいて同時にすべての利用可能なInnerSourceプロジェクトを横断検索することによって、彼らが興味を持っている機会の種類を正確に発見することを可能にしました。
* これらの両方のニーズを満たすことで、InnerSourceは、組織のすべての領域が、別々に持っていなかったものを一緒に達成するために活用するための実行可能で魅力的なオプションとして確立するのに役立っています。

## Known Instances

* **A large financial services organization** has used the creation of an InnerSource Portal to provide a mechanism of advertising and discovering InnerSource projects in existence across different business units
* **SAP** promotes InnerSource projects in the InnerSource Portal - projects can self-register using GitHub topics. The [Repository Activity Score](repository-activity-score.md) defines the default order of the InnerSource projects in the portal. Also see [Michael Graf & Harish B (SAP) at ISC.S11 - The Unexpected Path of Applying InnerSource Patterns](https://www.youtube.com/watch?v=6r9QOw9dcQo&list=PLCH-i0B0otNQZQt_QzGR9Il_kE4C6cQRy&index=6). It's codebase is published as a [reference implementation](https://github.com/SAP/project-portal-for-innersource) and open for contributions.
* **Elbit Systems** has used this pattern and added gamification on top.
  * [Gamification As Means of Cultural Change and InnerSource Engagement Booster](https://www.oreilly.com/library/view/oscon-2018-/9781492026075/video321579.html) | Shelly Nizri | OSCON 2018 - Portland, Oregon
  * Of Islands, Monsters & InnerSource [(slides)](https://docs.google.com/presentation/d/1P1OCEK9B6eSrVRUclVWY6meSI-qHOBjM_UAPNvCZamU/edit#slide=id.p15), [(video)](https://drive.google.com/file/d/1pM89uHMn0vhE3ayFJDGYcCO8R0tAXXZD/view?usp=drivesdk) | InnerSource Spring Summit 2019 (Galway, Ireland)
  * The code realizing this platform has been open sourced and is available at [gitlab.com/gilda2](https://gitlab.com/gilda2)
* **American Airlines** promotes InnerSource projects via an [internal InnerSource Marketplace](https://tech.aa.com/2020-10-30-innersource/). Similarly to SAP, projects self-register by adding `innersource` as a GitHub topic. Projects are searchable and filterable by language, topics, number of open issues, etc.
* **Banco Santander** has created a public portal called [Santander ONE Europe InnerSource Community](https://innersourceportal.santander.com/) to support and increase InnerSource adoption. In addition to the catalog of projects the portal includes relevant content such as documentation, way of working, news, and events.

![Santander InnerSource Portal](../../assets/img/santander_portal.png "Banco Santander InnerSource Portal")

## References

* The InnerSource Portal pattern has been proven to work extremely well with the associated InnerSource [Gig Marketplace](./gig-marketplace.md) pattern in this context

## Status

* Structured

## Author(s)

* Stephen McCall

## Acknowledgements

* Shelly Nizri
* Melinda Malmgren
* Michael Graf
* Jesús Alonso Gutierrez
