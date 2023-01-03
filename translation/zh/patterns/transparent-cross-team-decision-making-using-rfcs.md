## Title

利用RFC进行透明的跨团队决策

## Patlet

内源项目如果想实现高参与率，并为每个参与者做出最好的决定，就需要想办法在整个软件生命周期中建立易于参与式的环境。发布内部征求意见稿（RFC）文件，可以在设计过程的早期就进行讨论，并促进在参与各方在高参与度下建立解决方案的机会。

## 问题

为了使内源项目健康发展，它持续需要大量的贡献者。这些贡献者（或团队）可能对给定的项目有不同的要求。例如，他们可能想在项目中添加彼此不兼容的功能，或导致架构的不健康的膨胀。

在过程的后期发现这种分歧或误解，例如，一旦软件已经建成，就会付出很大的代价。这些分歧可能会导致所有参与方的挫败感，甚至会破坏项目中合作文化的健康。常见的分歧是，一个变更请求（pull request）被搁置了很久，因为变更请求的作者和项目的维护者基本上都不同意进行拟议的变更。

对于内源项目来说，当项目由公司内的多个团队一同维护时，这种情况更经常发生，即共享所有权。

## 故事

一个项目，或由多个项目组成的应用程序，由许多不同的团队维护，每个团队负责不同的项目或应用程序的不同领域。这些团队确实对彼此的领域做出了内源的贡献，但更大的、跨领域的变化只由团队的技术负责人共同推动，或者根本就没有发生。这导致大多数工程师无法实现大规模、跨领域的变革，减少了创新和合作的机会。

通过实施RFCs的流程和模板，团队和个人被授权通过一个透明的决策过程提出大型的、跨领域的变化，并在各团队之间进行异步磋商。这促进了更大的创新，更紧密的合作，以及更多的知识传播。这有赖于各层级的所有专家的认同，以及一个心理安全的环境，以便人们可以公开提出和辩论想法。

像任何过程一样，这必须被不断地改进。可能需要对RFC模板或流程进行修改，以确保其具有包容性、协作性和有效性。

## 背景

- 一个内源项目由许多团队共同拥有。
- 最重要的设计决策不可能一直由一个中央机构（例如一组架构师）做出，因为他们既没有足够的时间，也没有足够的特定领域的知识来在所有情况下做出好的决策。
- 各种类型的用户对某个项目的发展方向有意见。这样的用户可能是：开发人员、产品负责人、产品经理等。
- 决策需要以异步的方式做出，至少部分是这样，因为经常召集所有参与者的同步会议是不可行的
- 希望记录所做的决定，即确保这些决定是书面的，而不仅仅是口头的。

## 约束

- 大多数时候，相关各方都希望能很快做出决定（例如，前期的设计时间相当有限）
- 对许多参与的人来说，把事情写下来（在没有实施的情况下）往往是一种新的技能。
  
## 素描

![在Uber的BaseUI项目中使用的RFC流程（开放源码的例子）](../../../assets/img/rfc-process-uber-baseui.png)

## 解决方案

我们选择了一个类似于RFC的程序来增加我们跨团队决策过程的透明度（也见[请求评论][requests-for-comments]）。

该方案的重要内容有：

- 关于何时发布RFC（以及何时不发布）的描述
- 一个RFC文件的模板
    - 应该促使RFC作者从多个角度考虑他们的建议
    - 既要提示高层视角的概述，又要提示详细的深入解释
- 一个众所周知的、围绕RFC的轻量级过程，例如
    - 如何发布RFC并与所有利益相关者分享（如Slack、邮件列表）。
    - 如何收集对RFC的反馈
    - 如何在反馈中工作
    - 如何将RFC推向一个结论或决定（例如，相关的指定维护者签字）。
    - 选择适当的工具（例如，非开发人员可能无法使用源代码控制工具）。
- 承诺对RFC模板和流程进行迭代

### 示例/模版

- [Rust][rust]是一个很好的RFC模板和流程的开源例子，也是许多其他RFC流程的基础。
- [通用化的BBC iPlayer & Sounds RFC模板](../templates/rfc.md)，最初基于[Rust][rust]模板

## 结果

实施类似于RFC的流程被证明是有价值的，因为它使跨团队的决策过程对每个人来说都更加透明，使所有的声音都能被听到。

可观察到的积极效果。

- **决策过程的民主化**，影响到许多团队的决策（同时也减轻了团队负责人的负担）。
- **一个开放的异步沟通方法**，在多个团队和地区都能很好地运作。
- **赋予个人和团队**大规模变革的能力
- **记录所做的决定**供人们参考，以了解情况
- **扩大有经验的工程师的影响**，因为他们可以通过异步和远程方式为解决方案做出贡献，而不需要在会议上出现。
- **统一术语**，例如，通过阐明我们的测试术语，如 "什么是系统测试"，来实现术语的统一。
- **统一流程**，例如，明确说明下班后的支持流程。
- **更清晰的思路**，因为写RFC使作者比平时更多的挑战自己。

RFC方法也有我们想要指出的风险。

- 它并不总是有效的！例如，有些人可能仍然反对已经通过RFC做出的决定。然而，在这些情况下，将决策过程写成文字仍然是有益的，因为你可以指出人们是在什么时候和为什么做出某个决定的。
- 将设计方案（架构、协议等）写在前面，有一种瀑布式的设计元素，不适合许多开发团队喜欢的迭代式开发方法。记住："工作的软件胜过全面的文档"（[敏捷宣言](https://agilemanifesto.org/)）。RFC过程应该尽可能的轻巧。
- 一个RFC可能会变得很大，太不方便了。这往往表现在冗长的评论和围绕RFC的讨论。在这种情况下，我们可能会决定用同步交流的方式来补充RFC，比如工作小组和面对面的会议。但时间仍然可以节省，因为人们可以在会议之前阅读RFC，而不是在会议期间分享所有的信息。

## 原理

多年来，RFC在开源世界中证明了自己。对于互联网整体而言，RFC在制定标准方面发挥了重要作用（例如，见[30 Years of RFCs][30-years-of-rfcs]），对于其他开源项目也是如此，它们采用这种方法来促进社区的透明决策（例如，[RUST][rust]，[ZeroMQ][zeromq]）。

在内源的背景下，其他公司也分享了他们在类似RFC方法方面的经验，例如[Uber][uber]和[Europace][europace]。

对于纯粹的软件设计决策之外的决策，透明的决策模型也是有效的，例如在努力实现开放组织的时候。一个例子见Red Hat的[Open Decision Framework][open-decision-framework]（2016年6月7日公开发布）。

## 已知实例

- **BBC iPlayer & Sounds** - 如2020年ISC秋季峰会[利用内部RFCs加强合作][bbc]所述。
- **Europace** - 如在开放组织中所述。[在开放中设置跨团队的标准和最佳实践][europace]。
- **Uber** - 根据Gergely Orosz的这篇博文：[通过RFCs扩展工程团队：将事情写下来][uber]。
- **Google Design Docs** - 根据Malte Ubl的博文[Google的Design Docs][google]的描述。
- **DAZN** (10/2021) - DAZN做出技术决定的一种方式是通过RFCs。RFCs仅用于适用于工程范围内流程的决定！RFCs存在于GitHub中。RFCs存在于GitHub仓库中，然后技术标准逐渐被他们的工具和工程师所采用。一个RFC可以由任何工程师提出，并由所有工程师投票表决。如果支持率超过反对率，RFC就会被采纳。值得注意的是，RFC的投票过程至今没有因为任何争议的决定引发"压力测试"。- 正如Lou Bichard在这篇博文中所描述的：[建立一个DX团队：经验教训][dazn]

## 状态

结构化

## 作者

- Tom Sadler
- Sebastian Spier

## 别名

- [设计文档][google]
- 架构决策记录（ADR）--不一定是直接的别名，因为它们有时会有非常不同的使用方式，例如，RFC用于寻求意见和建立共识，ADR用于记录决策和实施细节。

## 翻译校对

- **2022-12-01** 翻译[姜宁][willem]
- **2022-12-11** 校对[龙文选][hncslwx]

[requests-for-comments]: https://en.wikipedia.org/wiki/Request_for_Comments
[30-years-of-rfcs]: https://www.rfc-editor.org/rfc/rfc2555.txt
[rust]: https://github.com/rust-lang/rfcs
[zeromq]: https://rfc.zeromq.org
[uber]: https://blog.pragmaticengineer.com/scaling-engineering-teams-via-writing-things-down-rfcs/
[europace]: https://github.com/open-organization/open-org-distributed-work-guide/blob/master/drostfromm-remote-first-through-openess.md#setting-cross-team-standards-and-best-practices-in-the-open
[open-decision-framework]: https://www.redhat.com/en/about/press-releases/red-hat-releases-open-decision-framework-spur-transparent-and-inclusive-leadership
[bbc]: https://www.youtube.com/watch?v=U6zlghE0HcE
[google]: https://www.industrialempathy.com/posts/design-docs-at-google/
[dazn]: https://medium.com/dazn-tech/building-a-dx-team-lessons-learned-4a66446088bc
[willem]: https://github.com/willemjiang
[hncslwx]: https://github.com/hncslwx
