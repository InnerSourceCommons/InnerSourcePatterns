## Title

Trusted Committer

## Patlet

许多内源项目会发现自己处于这样一种情况：他们不断收到来自贡献者的反馈、功能和错误修正。
在这种情况下，项目维护者会想方设法对贡献者的工作进行认可和奖励，而不仅仅是对单一的贡献认可。

## 问题

- 项目维护者希望找到方法来扩大他们支持项目的能力
- 项目维护者希望找到方法来延长项目所提供的价值。
- 项目维护者希望能明显地奖励经常性的贡献者，并授权他们扩大其价值贡献。
- 缺乏对组织内各团队贡献的认可机制和语言
  
## 上下文

- 你是一个跨团队的运行库、服务或共享资源的维护者
- 你经常收到别人的贡献
- 您定期收到功能请求
- 您经常收到修复错误的请求
- 有积极的贡献者希望通过内源项目培养专业技能

## 约束

- 在一个项目的生命周期中，维护者可能因为自己的商业需要会转移工作重点。
- 贡献者寻求对其贡献的明显认可，以证明其价值。
- 对于一个小团队来说，维护一个具有合理复杂性的项目是很费力的。
- 对一个小团队来说，大规模地开发项目功能是很费时费力的。

## 解决方案

### 为项目定义一个 Trusted Committer 角色

Trusted Committer 处理什么是由每个项目和它的维护者决定的。确保你在项目中记录下你的 Trusted Committer 角色的范围。清晰的文件为新的社群成员设定了期望，并为未来的候选人确定了角色。

以下是识别潜在 Trusted Committer 的一些准则：

* 积极参与社区渠道（Slack、JIRA问题分流等）的人成为 Trusted Committer，从而正式确定他们在社群支持中的角色。
* 经常提交代码、文档或其他版本库修改的人。可以先从提交 Pull Request 人群中筛选。如果他们积极地提交 Pull Request，可以考虑与他们接触，探讨在项目上进一步合作的机会。

### 正式确定 Trusted Committers

第一步是与 Trusted Committer 候选人接触。维护者应该对候选人进行教育，使其了解受 Trusted Committer 的角色。我们并不期望候选人会接受 Trusted Committer 的角色。每个候选人应该评估他们是否有足够的空余时间来承担这些责任。当候选者接受了这个角色，项目维护者就应该向公众发布会从用户到 Trusted Committer 转变的消息。并将他们的名字添加到项目README中的 Trusted Committer 一栏中。如下所示：

```markdown
# 项目名

... 项目的readme ...

## 项目成员 

### 维护者

  - 你的团队

### [Trusted Committers]

  - 新的 trusted committer成员

[Trusted Committers]: https://example.com/link/to/your/trusted/committer/documentation.md
```

### 维护 Trusted Committer 关系

一旦你正式确定了一个新的Trusted Committer，在你持续迭代项目的时候需要保证Trusted Committer也能持续获得项目进展的信息。
让他们真正参与到项目进来，可以是简单地邀请他们加入你的项目沟通群，也可以是让他们参与你的计划会议。
更多的参与机会使 Trusted Committer 有机会成为维护者，如果他们愿意的话。

除了让 Trusted Committers 了解情况外，还需要定期检查 （Trusted Committers 的状态）。建议的节奏是先从每周开始，然后逐渐发展到每隔几周。
这些检查的目的是为了确保 Trusted Committers 在他们的新角色中感到被支持。就像与你的经理进行1对1的交流一样，如果有任何问题，倾听和同情，试图了解是什么阻碍了受托承诺者的成功。
始终[感谢 Trusted Committers 在使项目成功方面的持续努力][praise]，并确定一个新的检查日期。

### Trusted Committer的退出

有些时候，Trusted Committer需要退出 ，例如如果 Trusted Committer。

* 不再愿意参与
* 不再能够履行其职责
* 不再受雇于该公司

双方应商定一个取消项目资源访问权的计划，包括将他们在项目的 **Trusted Committer** 部分的条目进行修改，将其加入到过去的贡献者名单。
在取消访问权时，[公开感谢 Trusted Committer 的参与][praise]。公开承认可以确保社群内过渡和连续性的清晰沟通。

## 结果

### 对于项目贡献者

获得一个项目的 Trusted Committer  资格，表明了对社区项目的主动贡献。对这些努力的认可可以在与经理的年度评审中使用。

### 对于项目维护人员

随着项目的成熟，维护者对项目的关键方面可能变得不那么熟悉。Trusted Committers 可以填补这些空白，确保项目的各个方面随着时间的推移可以得到更好的服务。一组健康的 Trusted Committer 可以确保在项目维护者转行时有一个负责任的管理计划。

## 已知实例

已经在以下公司尝试并证明是成功的

- Nike
- PayPal
- Mercado Libre - 在 `CONTRIBUTING.md` 文件加入了一段，用来描述谁是Trusted Committer。

![Mercado Libre 在贡献文档中描述 Trusted Committer](../../../assets/img/mercadolibre-trusted-committers.png "Mercado Libre 在贡献文档中描述 Trusted Committer")

## 状态

- 结构化
- 在耐克公司内部发布；2018年6月通过 pull-request 草案.

## 作者

- [Fernando Freire]

## 鸣谢

- [Russell Rutledge]
- [Loren Sanz]
- [Noah Cawley]
- [Jeremy Hicks]
- [Doron Katz]

## 翻译

- **2022-12-01** 翻译[姜宁]
- **2022-12-03** 校对[龙文选]

[Doron Katz]: https://github.com/doronkatz
[Russell Rutledge]: https://github.com/rrrutledge
[Loren Sanz]: https://github.com/mrsanz
[Jeremy Hicks]: https://github.com/greatestusername
[Noah Cawley]: https://github.com/utanapishtim
[praise]: ./praise-participants.md
[Fernando Freire]: https://github.com/dogonthehorizon
[姜宁]: https://github.com/willemjiang
[龙文选]: https://github.com/hncslwx
