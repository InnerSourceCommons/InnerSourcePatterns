## Title

代码仓活跃度评分

## Patlet

潜在的贡献者希望找到需要他们帮助的活跃的内源项目。通过计算每个项目的代码库活跃度评分，可以创建一个项目的排名列表（例如在[内源门户网站](innersource-portal.md)上），这样潜在的贡献者可以更容易地确定他们想要贡献的项目。

## 问题

内源项目应以**何种顺序**呈现？典型的排名指标，如*GitHub星数*、*复刻（fork）数*、*提交数*、*代码行*、*最后更新*，都不足以简明地表明项目的活动。

活跃的项目有很多吸引力，但也有相当新的和热情的项目，需要新的贡献者，应该比活动很少或处于维护模式的成熟项目排名更高。

为了给项目的活动水平定义一个可靠的、通用的分数，我们需要一个从几个KPI中得出的新指标。
它可以被用来根据项目的活动水平进行分类排序。

## 故事

当内源实践了很长时间，或者规模超过了一定数量的项目（比方说50个，给一个有意义的门槛），就很难找到目前最流行和最活跃的内源项目。存在了很长时间的项目是众所周知的，但可能不再是非常活跃的。另一方面，相当新的项目还没有声誉或活跃的社区。

内源项目列表不应该被认为是一个静态资源，而是一个发现和探索新的和活跃的项目的令人兴奋的地方，就像一个新闻页面首先列出当天最有趣的话题一样。因此，当项目的顺序定期更新，并根据项目的受欢迎程度和活动情况而改变时，这是很有好处的。

这些考虑导致了第一个计算代码库活跃度评分的原型，它的效果出乎意料地好，并根据项目的活动提供不断变化的排名顺序。

## 背景

发现内源项目可以通过[内源门户网站](innersource-portal.md)和[零工市场](gig-marketplace.md)模式，或者通过在其他交流渠道和平台上推广项目来实现。活跃度评分定义了项目被展示给社区的默认顺序。

## 约束

通过查询GitHub的API可以自动获取到和代码开发相关的关键绩效指标。那么如何评价，代码质量、良好文档的可用性，或者使项目成为一个有趣的贡献场所的活跃和互助的社区呢？

这些 "软"的关键绩效指标必须手动或半自动地添加到计算中，并得出分数。如果有工具可以为代码库提供更多的背景，如代码覆盖率报告，它们可以很容易地被加入。

## 素描

![代码仓活跃度评分的生态系统](../../../assets/img/repository_activity_score.png)

一个集中的方法来计算和应用代码仓活跃度评分。更多细节，见[结果](#结果)

## 解决方案

代码仓活跃评分是一个数值，代表内源项目的（GitHub）活跃度。它是由GitHub星数、关注和复刻等代码仓库统计数据自动得出的，并可以用其他工具或人工评估的KPI来进行补充。

此外，它还考虑了活动参数，如 repo 的最后更新和创建日期，以便为具有大量吸引力的年轻项目提供助力。
拥有贡献指南、积极参与的统计数据和问题（公共backlog）的项目也会获得更高的排名。

所有这些都可以通过[GitHub搜索API](https://docs.github.com/en/rest/search#search-repositories)和[GitHub统计API](https://docs.github.com/en/rest/metrics/statistics)的结果集来自动获取和计算。如果有类似的API，其他代码版本系统如BitBucket、Gitlab、Gerrit也可以被整合。

下面的代码假设变量`repo`包含一个从GitHub`search`API获取的实体，`participation`对象包含一个来自GitHub`stats/participation`API的实体。

如果需要，可以根据软的关键绩效指标（见[约束](#约束)）在上面进行手动调整。

``` javascript
// 从标星、关注、提交和问题中计算出一个虚拟的内源分数
function calculateScore(repo) {
    // 初始分值为50分，作为GitHub KPI（复刻、观察者、标星）较低的活跃仓库一个的起点
    let iScore = 50;
    // 权重：复刻和关注最多，然后是星标，对没有关闭的问题也加一些小分
    iScore += repo.forks_count * 5;
    iScore += (repo.subscribers_count ? repo.subscribers_count : 0);
    iScore += repo.stargazers_count / 3;
    iScore += repo.open_issues_count / 5;

    // 在过去3个月内更新：给总分增加一个0...1的奖励乘数（1=今天更新，0=100天以前更新）
    let iDaysSinceLastUpdate = (new Date().getTime() - new Date(repo.updated_at).getTime()) / 1000 / 86400;
    iScore = iScore * ((1 + (100 - Math.min(iDaysSinceLastUpdate, 100))) / 100);

    // 评估过去3个月的参与统计
    repo._InnerSourceMetadata = repo._InnerSourceMetadata || {};
    if (repo._InnerSourceMetadata.participation) {
        // 平均提交量：为总分增加一个0...1的奖励乘数（1=每周提交量大于10，0=每周提交量小于3）
        let iAverageCommitsPerWeek = repo._InnerSourceMetadata.participation.slice(-13).reduce((a, b) => a + b) / 13;
        iScore = iScore * ((1 + (Math.min(Math.max(iAverageCommitsPerWeek - 3, 0), 7))) / 7);
    }

    // 加分计算
    // 所有在前一年更新的资源库都将获得最大1000的加分，并按上次更新后的天数递减
    let iBoost = (1000 - Math.min(iDaysSinceLastUpdate, 365) * 2.74);
    // 根据资源库的创建日期，逐步缩小加分的规模，与 "真实 "的参与统计相混合
    let iDaysSinceCreation = (new Date().getTime() - new Date(repo.created_at).getTime()) / 1000 / 86400;
    iBoost *= (365 - Math.min(iDaysSinceCreation, 365)) / 365;
    // 在总评分中加分
    iScore += iBoost;
    // 给予有意义的描述的项目以50的静态加分
    iScore += (repo.description?.length > 30 || repo._InnerSourceMetadata.motivation?.length > 30 ? 50 : 0);
    // 给予有贡献指南（CONTRIBUTING.md）文件的项目以100的静态加分
    iScore += (repo._InnerSourceMetadata.guidelines ? 100 : 0);
    // 为非常活跃的项目建立一个对数表（不限，但稳定在5000左右）
    if (iScore > 3000) {
        iScore = 3000 + Math.log(iScore) * 100;
    }
    // 最终得分是一个从0开始的四舍五入值（减去初始值）
    iScore = Math.round(iScore - 50);
    // 为元数据添加分数
    repo._InnerSourceMetadata.score = iScore;

    return iScore;
}
```

## 结果

贡献者可以自由地将他们的一部分时间投入到内源项目中。他们可以选择为一个他们在常规团队中依赖的项目做出贡献。然而，他们也可以根据自己的兴趣和个人发展目标，选择为一些完全不同的项目做贡献。

项目可以按照资源库活动得分进行分类和展示，在向潜在的新贡献者展示项目的门户中给出一个有意义的顺序。分数可以即时计算，也可以在后台工作中计算，定期评估所有项目并存储结果列表。

一个定期搜索所有内源仓库的爬虫（例如在GitHub中被标记为某个[主题](https://github.com/topics)）也可以是一个有用的补充。它提供了一个经过排序的项目列表，可以作为[内源门户](innersource-portal.md)、搜索引擎或互动聊天机器人等工具的输入。

## 原理

仓库活跃评分是一个基于GitHub API的简单计算。它可以完全自动化，并容易适应新的需求。

## 已知实例

* 在SAP的内源项目门户中使用，用于定义内源项目的默认展示顺序。它首次创建于2020年7月，此后经常进行微调和更新。在2020年7月向 InnerSource Commons 提出时，出现了这种模式。另见[Michael Graf & Harish B (SAP) at ISC.S11 - 不知不觉实现了一个内源模式](https://www.youtube.com/watch?v=6r9QOw9dcQo&list=PLCH-i0B0otNQZQt_QzGR9Il_kE4C6cQRy&index=6)。

## 状态

* 结构化

## 作者

[Michael Graf (SAP)](mailto:mi.graf@sap.com)

## 致谢

感谢 InnerSource Commons社区光速提供的建议，以及大量有益的意见，不断完善这个模式。特别感谢：

* Johannes Tigges
* Sebastian Spier
* Maximilian Capraro
* Tim Yao

## 翻译校对

* **2022-12-08** 翻译[姜宁](https://github.com/willemjiang)
* **2022-12-16** 校对[龙文选](https://github.com/hncslwx)
  