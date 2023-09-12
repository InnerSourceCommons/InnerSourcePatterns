## Title

Repository Activity Score

## Patlet

Potential contributors want to find active InnerSource projects in need of their help. By calculating a repository activity score for each project, a ranked list of projects can be created (e.g. on the [InnerSource Portal](innersource-portal.md)), so that potential contributors can more easily determine which project they want to contribute to.

## Problem

**In which order** shall InnerSource projects be presented? Typical ranking KPIs like *GitHub Stars*, *Number of Forks*, *Number of Commits*, *Lines of Code*,  *Last Update* aren't sufficient to concisely indicate the activity of a project.

Active projects with a lot of traction, but also fairly new and enthusiastic projects that are in need of new contributors should be ranked higher than matured projects with little activity or in maintenance mode.

A new metric derived from several KPIs is needed to define a reliable and versatile score for a project's activity level.
It can be used to sort projects according to their activity level.

## Story

When InnerSource is practiced for a long time or scales beyond a certain number of projects (let's say 50 to give a meaningful threshold) it is hard to find the currently most popular and active InnerSource projects. Projects that exist for a long time are well-known but may no longer be very active. Fairly new projects on the other hand don't have a reputation or an active community yet.

A list of InnerSource projects should not be considered a static resource, but an exciting place to discover and explore new and active projects, just like a news page listing the most interesting topics of the day first. Thus it is beneficial when the order of the projects is regularly updated and changes according to the project's popularity and activity.

These considerations led to a first prototype to calculate a repository activity score, which worked surprisingly well and determines an ever-changing order of projects according to their activity.

## Context

Discovering InnerSource projects can be facilitated with the [InnerSource Portal](innersource-portal.md) and the [Gig Marketplace](gig-marketplace.md) pattern, or by promoting projects on other communication channels and platforms. The activity score defines a default order in which projects are presented to the community.

## Forces

Automated KPIs that can be fetched by querying the GitHub API are only part of the truth. What about code quality, the availability of good documentation, or an active and helping community that makes the project a fun place to contribute?

Such "soft" KPIs would have to be manually or semi-automatically added to the calculation and the resulting score. If tools exist that provide more context for the repository, like a code coverage reporting, they can easily be worked in.

## Sketch

![Ecosystem for the Repository Activity Score](../../assets/img/repository_activity_score.png)

A centralized approach for calculating and applying the repository activity score. For more details, see [Resulting Context](#resulting-context)

## Solutions

The repository activity score is a numeric value that represents the (GitHub) activity of an InnerSource project. It is derived automatically from repository statistics like GitHub stars, watches, and forks and may be enriched with KPIs from other tools or manual evaluations.

In addition, it considers activity parameters like last update and creation date of the repo to give young projects with a lot of traction a boost.
Projects with contributing guidelines, active participation stats, and issues (public backlog) receive a higher ranking as well.

All of this can be fetched and calculated automatically using the result set of the [GitHub search API](https://docs.github.com/en/rest/search#search-repositories) and [GitHub statistics API](https://docs.github.com/en/rest/metrics/statistics). Other code versioning systems like Bitbucket, GitLab, Gerrit can be integrated as well if a similar API is available.

The code below assumes the variable `repo` contains an entity fetched from the GitHub `search` API and the `participation` object contains an entity from the GitHub `stats/participation` API.

Manual adjustments according to soft KPIs (see [Forces](#forces)) can be made on top if needed.

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

## Resulting Context

Contributors are free to commit a part of their time to InnerSource project. They may choose to contribute to a project that they depend on for the work in their regular team anyways. However they may also choose to contribute to something completely different, based on their interests and personal development goals.

Projects can be sorted and presented by repository activity score to give a meaningful order in a portal presenting projects to potential new contributors. The score can be calculated on the fly or in a background job that evaluates all projects on a regular basis and stores a list of results.

A crawler that regularly searches all InnerSource repositories (e.g. tagged with a certain [topic](https://github.com/topics) in GitHub) can be a helpful addition as well. It provides a ranked list of projects that can be used as an input for tools like the [InnerSource Portal](innersource-portal.md), a search engine, or an interactive chat bot.

## Rationale

The repository activity score is a simple calculation based on the GitHub API. It can be fully automated and easily adapted to new requirements.

## Known Instances

* Used in SAP's InnerSource project portal to define the default order of the InnerSource projects. It was first created in July 2020 and is fine-tuned and updated frequently ever since. When proposed to the InnerSource Commons in July 2020, this pattern emerged. Also see [Michael Graf & Harish B (SAP) at ISC.S11 - The Unexpected Path of Applying InnerSource Patterns](https://www.youtube.com/watch?v=6r9QOw9dcQo&list=PLCH-i0B0otNQZQt_QzGR9Il_kE4C6cQRy&index=6).

## Status

* Structured

## Author(s)

[Michael Graf (SAP)](mailto:mi.graf@sap.com)

## Acknowledgments

Thank you to the InnerSource Commons Community for lightning-fast advice, and a lot of helpful input to feed this pattern! Especially:

* Johannes Tigges
* Sebastian Spier
* Maximilian Capraro
* Tim Yao
