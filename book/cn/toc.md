# 目录

<!--
Do not edit toc.md directly!!!
Instead edit toc_template.md
-->

<!--
  NOTE:
  Paths in here are relative to this file, and not relative to the root specified in .gitbook.yaml.
-->

* [概述](./introduction.md)
* [目录](./toc.md)
* [模式探索](./explore-patterns.md)
* [为这本书做贡献](./contribute.md)

![内源模式脑图](../../pattern-categorization/innersource-program-mind-map.png)

## 模式 <a id="p"></a>

* [30天质量保证](../../translation/cn/patterns/30-day-warranty.md) - 当接受来自自己团队以外的贡献时，人们自然不愿意为非本团队自己编写的代码负责。通过30天质量保证，贡献团队同意向接受团队提供错误修复，这将增加两个团队之间的信任度，使贡献更有可能被接受。
* [共同需求](../../translation/cn/patterns/common-requirements.md) - 共享资源库中的共同代码并不能满足所有想要使用它的项目团队的需求；这可以通过需求调整和重构来解决。
* [沟通工具](../../translation/cn/patterns/communication-tooling.md) - 一个内源项目在原始开发团队之外被使用，但用户在获得帮助和与项目团队联系时遇到困难。我们的想法是建立和记录标准的沟通工具，使讨论变得可见、存档和可搜索。
* [合同贡献者](../../translation/cn/patterns/contracted-contributor.md) - 想为内源做出贡献的同事被他们的直线管理部门劝阻。通过正式的合同和协议提供相关的支持。
* [核心团队](../../translation/cn/patterns/core-team.md) - 即使内源项目被广泛需要，贡献和使用也可能因为该项目难以合作而受到阻碍。建立一个核心团队，专门负责处理项目的基本项目。他们的工作使贡献者能够添加和使用为其方案提供价值的功能。
* [跨团队项目评估](../../translation/cn/patterns/crossteam-project-valuation.md) - 很难推销跨团队内源项目的价值，这些项目并没有对公司收入提供直接影响。这里有一个数据驱动的方式来代表你的项目，既能阐明其价值，又能放大其价值。
* [专职的社群领袖](../../translation/cn/patterns/dedicated-community-leader.md) - 选择同时具备沟通和技术能力的人领导社区，以确保成功启动内源计划。
* [记录你的指导原则](../../translation/cn/patterns/document-your-guiding-principles.md) - 通常内源对 "在组织内部应用开源最佳实践 "的解释对缺乏开源背景的人并不奏效。作为一种补救措施，内源最重要的原则被记录下来并广泛发布。
* [零工市场](../../translation/cn/patterns/gig-marketplace.md) - E建立一个市场，通过创建一个内部网站，将特定的内源项目需求列为 "Gig"，并明确规定时间和技能要求。 这将使管理人员能够更好地了解员工的时间承诺和专业利益，从而增加获得批准做出内源贡献的可能性。
* [内源许可协议](../../translation/cn/patterns/innersource-license.md) - T两个属于同一组织的法律实体希望相互分享软件源代码，但他们担心在法律责任或跨公司审计方面的影响。
* [内源门户](../../translation/cn/patterns/innersource-portal.md) - 潜在贡献者不能轻易发现他们感兴趣的内源项目。通过创建一个索引所有可用的内源项目信息的内部网站，你可以让贡献者了解他们可能感兴趣的项目，也可以让内源项目所有者吸引外部受众。
* [问题追踪的用户案例](../../translation/cn/patterns/issue-tracker.md) - InnerSource的维护团队不仅未能使计划和进度透明，也未能使变化的背景透明。通过增加项目问题跟踪的使用案例，使其同时服务于头脑风暴、实施讨论和功能设计，就可以解决这个问题。
* [成熟度模型](../../translation/cn/patterns/maturity-model.md) - 团队已经开始采用内源。这种做法正在向多个部门蔓延。然而，人们对什么是内源项目的理解各不相同。解决方案是提供一个成熟度模型，让团队通过自我检查，发现他们还没有意识到的模式和做法。
* [赞美参与者](../../translation/cn/patterns/praise-participants.md) - 在内源贡献之后，感谢贡献者的时间和努力是很重要的。这个模式给出了指导，不仅有效地承认了贡献，而且还吸引了贡献者和其他人的进一步参与。
* [代码仓活跃度评分](../../translation/cn/patterns/repository-activity-score.md) - 潜在贡献者希望找到需要他们帮助的活跃内源项目。通过计算每个项目的资源库活动得分，可以创建一个项目的排名列表（例如在内源门户网站上），这样潜在的贡献者可以更容易地确定他们想要贡献的项目。
* [评审委员会](../../translation/cn/patterns/review-committee.md) - 内源的工作模式与更多的传统方法截然不同，对开发人员和管理人员都是如此。通过建立一个评审委员会，作为内源计划和所有参与该计划的业务部门高级经理之间的接口，后者更有可能熟悉该计划并支持它，因为它为他们提供了一定程度的监督和控制，而不会助长微管理。
* [服务和库](../../translation/cn/patterns/service-vs-library.md) - DevOps环境中的团队可能不愿意在共同的代码库上跨团队工作，因为对谁将负责响应服务停机的问题不明确。解决办法是认识到，通常情况下，要么在独立的环境中部署相同的服务，在服务停机时有独立的问题处理升级链，要么将大量的共享代码分解到一个库中，并在此基础上进行协作。
* [标准基础文档](../../translation/cn/project-setup/patterns/base-documentation.md) - 内源项目的新贡献者很难搞清楚谁在维护这个项目，应该做什么，以及如何贡献。在README.md/CONTRIBUTING.md等标准文件中提供文档，可以为新的贡献者提供一个自助服务过程，这样他们就可以自己找到最常见问题的答案。
* [已试验开始](../../translation/cn/patterns/start-as-experiment.md) - 将你的内源计划作为一个有时间限制的实验开始，使不熟悉内源的管理人员更容易认可和支持这项计划。
* [使用RFC来做跨部门的透明决策](../../translation/cn/patterns/transparent-cross-team-decision-making-using-rfcs.md) - 内源项目如果想实现高参与率并为每个参与者做出尽可能好的决策，就需要想办法在整个软件生命周期中建立参与式系统。发布内部请求评论（RFC）文件，可以在设计过程的早期进行讨论，并增加建立具有所有参与方高度承诺的解决方案的机会。
* [Trusted Committer](../../translation/cn/patterns/trusted-committer.md) - 许多内源项目会发现自己处于不断收到贡献者的反馈、功能和错误修正的情况。在这种情况下，项目维护者会寻求方法来认可和奖励贡献者的工作，而不是单一的贡献。

## 附录

* [模式模板](../../meta/pattern-template.md)
* 额外
  * [README 模板](../../translation/cn/templates/README-template.md)
  * [CONTRIBUTING 模板](../../translation/cn/templates/CONTRIBUTING-template.md)

## 资源

* [本书在 GitHub 代码仓地址](https://github.com/InnerSourceCommons/InnerSourcePatterns)
* [InnerSource Commons](http://innersourcecommons.org)
