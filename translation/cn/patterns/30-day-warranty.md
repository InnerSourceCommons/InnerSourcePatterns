## 标题

30天保修

## Patlet

当接受来自自己团队以外的贡献时，人们自然不愿意为非本团队自己编写的代码负责。通过30天保证，贡献团队同意向接受团队提供错误修复，这将增加两个团队之间的信任度，使贡献更有可能被接受。

## 问题

一个团队开发了一个在整个组织中使用的组件。 这个团队抵制接受或直接拒绝贡献（功能请求）。 这种行为阻碍了正常的项目研发，并导致了事态升级使得项目开发受到影响。

## 上下文

- 团队依赖另一个团队接受他们的贡献，以便接收团队生产的组件能够被贡献团队使用。
- 接收团队没有资源、知识、许可和/或倾向于自己编写贡献的组件/功能。

## 约束

- 由于过去的作弊历史，人们对贡献存在不信任：团队提交了半成品的贡献之后，通过提出后续的修复请求，使其可以在生产中使用。
- 如果代码是由团队以外的人贡献的，团队自然会怀疑其他团队不知道如何编写符合接收团队期望的代码。
- 每个团队首要考虑的是帮助自己的领导实现自己的目标。这样忠诚度会使这个问题的解决变得复杂。
- 人们对承担非自己编写的代码的责任有一种自然的厌恶。
- 贡献的代码在被代码库接纳之前需要进行大量的重写。
- 人们担心贡献者在贡献被接纳之后无法提供修复错误的支持。
- 团队担心贡献的代码会导致高额的维护成本，并担心如何控制这些维护成本。
- 接收团队可能会担心，教别人如何贡献代码会暴露他们系统中的技术债务，并引发其他的伤害。
- 接收团队可能不相信，无论他们提供何种程度的指导，都能得到可接受的代码。
- Either team may not feel confident in measuring risks or certifying that they are mitigated in a contribution; the system itself is somewhat brittle (may not be ways to fully test and catch all problems). 大家对衡量风险或证明风险在贡献中得到缓解缺乏信心；系统本身的脆弱性（可能没有办法完全测试和捕捉所有问题）。

## 解决方案

通过建立一个**30天的保证期**来解决接收团队和贡献团队的担忧，保证期从贡献的代码投入生产时开始计算。在这个保证期内，贡献团队承诺向接收团队提供问题修复。

请注意，保证期也可以是45、60或100天。持续时间可以根据项目的限制、项目的软件生命周期、对客户的承诺和其他因素而变化。

此外，提供明确的[贡献指南](./base-documentation.md)，阐明接收团队和贡献团队的期望，也是有帮助的。

![30 Day Warranty](../../../assets/img/thirtydaywarranty.jpg)

## 结果 Resulting Context

- 接收团队愿意接受贡献，并能分担初步改编/修复的工作量。
- 增加透明度和公平性。
- Keeps escalations from becoming too heavyweight. 使维护工作不至于变得过于沉重。

## 已知实例

- 这在 PayPal 得到了成功的尝试和证明。
- GitHub 内部使用这种模式，修改后的保证时间线为6周。
- 微软推荐这种模式作为一个内部原则--团队设定自己的具体时间目标，与他们的需求和信心相匹配。

## 作者

- Cedric Williams

## 致谢

- Dirk-Willem van Gulik
- Padma Sudarsan
- Klaas-Jan Stol
- Georg Grütter

## 状态

* Structured
* Drafted at the 2017 Spring InnerSource Summit; reviewed 18 July 2017.

## 变体

- 确保相互由依赖关系团队的合作，让他们成为一个社区，由一个以上的、以择优任命的"[trusted-committer](./trusted-committer.md)"（TCs）负责。

## 翻译

[姜宁](https://github.com/willemjiang)