# Introduction

![](../../book/innersource-patterns-book-cover.jpg)

{% hint style="info" %}
あなたはInnerSourceパターンブックの初期リリースを読んでいると、まだ壊れたリンク、スペルミス、または他のエラーを見つけることができます。私たちは可能な限り最高の本を生成するためにそれらを修正するために役立ててください: [この本に貢献する方法を学ぶ](../../book/contribute.md).
{% endhint %}

**InnerSourceパターン集**へようこそ。

この本は、それが簡単に理解し、評価し、あなたのコンテキストでそれらを適用するために、特定の形式で体系化されたInnerSourceのベストプラクティスを含んでいます。私たちはこの形式を**パターン**と呼んでいます。

[InnerSource Commons](http://innersourcecommons.org) は、長年にわたってこれらのパターンを収集し、この本で最も成熟したパターンを公開し、コミュニティのメンバーは、パターンの使用の少なくとも1つの既知のインスタンスを使用して、それぞれのパターンをレビューしています。

この序章では、[InnerSourceとは何か](introduction.md#what-is-innersource)、[パターンとは何か](introduction.md#what-are-innersource-patterns)、そしてあなたの組織での[これらのパターンの使い方](introduction.md#how-can-you-use-innersource-patterns) について説明します。

もし、あなたが既に会社でInnerSourceを使っていて、その経験を本書に提供したいのであれば、ぜひ[Contributionを歓迎します！](../../book/contribute.md)。

## What is InnerSource?

私たちはInnerSourceを次のように定義しています。

> 組織の範囲内でソフトウェア開発のためのオープンソースの原則と実践の使用。

InnerSourceは、オープンソースソフトウェアの開発から学んだ教訓を取り、企業が社内でソフトウェアを開発する方法に適用します。開発者は世界トップクラスのオープンソースソフトウェアに取り組むことに慣れてきているため、これらのプラクティスをファイアウォールの内側に戻し、企業がリリースを躊躇するようなソフトウェアに適用したいという強い希望があります。

InnerSourceは、主にクローズドソースソフトウェアを開発している企業にとって、サイロの解消、社内コラボレーションの促進および拡大、新しいエンジニアのオンボーディングの加速、そしてオープンソースの世界にソフトウェアを還元する機会の特定に役立つ素晴らしいツールになり得るのです。

## What are InnerSource Patterns?

パターンとは、あるコンテキストの中で、問題に対する再現可能で実績のある解決策を記述する方法です。パターンは、問題の制約を理解するために、ソリューションの実装中にあなたを支援する単純な形式に従って、あなたがバランスをとる必要がある力、および結果のコンテキストを理解する - ソリューションを適用することによって作成された状況。

パターンは、InnerSource Commonsの参加者がInnerSourceの実践を改善し、簡潔に情報を共有するための方法を提供することができます。パターンは、タイトル、問題提起、コンテキスト、フォース、ソリューションを主なセクションとして分けられています。

* [`What are patterns?` Youtube videos](http://bit.ly/innersource\_patterns\_videos) - Watch a set of 2-5 min youtube videos explaining InnerSource Patterns
* [Pattern Discussion Webinar](https://youtu.be/i-0IVhfRVFU) - We held a webinar 2017-03-16 to live-discuss a donut pattern (go to 24:30 for the discussion). This is an illustration of the review process we follow. Also see the [June 1, 2017 O'Reilly Webinar on InnerSource Patterns](http://www.oreilly.com/pub/e/3884).
* [Pattern Template](../../meta/pattern-template.md) - View a skeleton inner source pattern to get an idea on what goes into a new pattern!
* [Introduction to InnerSource Patterns (2016 Fall Summit presentation)](https://drive.google.com/open?id=0B7\_9iQb93uBQbnlkdHNuUGhpTXc) - _Tim Yao and Padma Sudarsan_ (PDF). Detailed pattern background and examples -- Get a detailed understanding of why and how to interact with our patterns. Also see the [Introduction to InnerSource Patterns (2017 Fall Summit)](https://drive.google.com/open?id=0B7\_9iQb93uBQWmYwMFpyaGh4OFU) _Tim Yao and Bob Hanmer_ (PDF).

## How can you use InnerSource Patterns?

パターンは考えて使わなければならない。無差別に適用することはできない。ほとんどの場合、与えられた解決策を自分の状況に合わせる必要がありますが、パターンで与えられている情報、コンテキスト（動かせない制約）とフォース（変更可能な制約、互いにバランスをとる制約）の定義が、これを行うのに役立つはずです。また、特定の企業/組織に適用され、パターンに追加しなければならない追加の制約（企業のコンテキストと企業の力）があるかどうかを判断する必要があることに注意してください（一種のフィルターとして）。これらの追加制約により、追加のソリューションステップを適用する必要があるかもしれません。

パターンフォームは、実績のある解決策を記述するのに便利ですが、パターンがまだ確立されていない新しい解決策_のブレインストーミングにも使用できます。これは、パターンの解剖学が、問題を構造的に考えるための枠組みを提供するためです。また、InnerSource Commonsのコミュニティに助けを求める方法として、_donut pattern_（問題、文脈、力、結果の文脈のフィールドを埋め、解決策は空白にする）を作ることもできます（実証済みの解決策を見つけたり、試してみたいことをブレインストーミングしたりするためです）。

## How to Contribute?

Please refer to: [Contribute to this book](../../book/contribute.md)

## Credits

この本は、世界中から無数の[オープンソースコントリビューター]（https://github.com/InnerSourceCommons/InnerSourcePatterns/graphs/contributors）の仕事の長年の結果である。彼らの会社で直面した課題、およびInnerSourceは、それらの課題に対処するためにそれらを助けた方法をオープンに共有する彼らの意欲は、この本は彼らのInnerSourceの旅に他の人のためのそのような貴重なリソースとなります。

我々は、特にInnerSourceパターンワーキンググループに言及したい。彼らは、InnerSourceパターンの品質を育み、貢献するために他の人を支援してきました。最後に、彼らはまた、この本に利用可能なパターンの選択をコンパイルしています。

The title image of this book was created by [Sebastian Spier](https://spier.hu) and adapted from an image by [Tony Hisgett - Alhambra 6](https://www.flickr.com/photos/hisgett/29345405788/), available under [CC BY 2.0](https://creativecommons.org/licenses/by/2.0/).

**Thank you to all contributors! And happy InnerSource Day :)**

## Licensing

![Creative Commons License](https://i.creativecommons.org/l/by-sa/4.0/88x31.png)

InnerSourcePatterns by [InnerSourceCommons.org](http://innersourcecommons.org) is licensed under a [Creative Commons Attribution-ShareAlike 4.0 International](http://creativecommons.org/licenses/by-sa/4.0/) License.
