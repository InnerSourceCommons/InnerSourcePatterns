# Trusted Committers

Trusted Committers (TCs) are those members of our working group who have elevated rights and direct write access to this repository.

> Trusted Committers act as stewards of the working group and community. They aim to make consensus-based decisions in the best interest of the working group.

They also act as the guardians of this repository: TCs react to, referee, and give feedback about incoming contributions.

For further information about the concept, also see the [Trusted Committer Pattern](patterns/2-structured/trusted-committer.md).

## Current Trusted Committers

* [@yuhattor](https://github.com/yuhattor) (added 2022-07-21)
* [@robtuley](https://github.com/robtuley) (added 2022-02-15)
* [@spier](https://github.com/spier) (added 2020-12-11)
* [@lenucksi](https://github.com/lenucksi) (added 2020-04-24)
* [@NewMexicoKid](https://github.com/NewMexicoKid) (added 2017-03-02)
* [@cewilliams](https://github.com/cewilliams) (added 2017-03-02)

## Hall of Fame (aka Alumni)

While Trusted Committers are in principle appointed for lifetime, interests or priorities of a TC can change and they might not have enough time any more to contribute to the project.

In those cases we ask them if we should move them to the Hall of Fame. Doing so allows us to appropriately thank them for all of their fantastic contributions. When doing so we also remove them from `.github/CODEOWNERS`, so that reviews of Pull Requests aren't assigned to them anymore, and GitHub notifications are reduced. That increases the clarity for the community who to expect feedback from when creating PRs.

The alumni in the Hall of Fame can of course always start contributing again in the future and go back to being Trusted Committers if they want to.

* [@gruetter](https://github.com/gruetter) (added 2017-03-02)
* [@nyeates](https://github.com/nyeates) (added 2017-03-02)

## Process for Adding new Trusted Committers

We work based on trust: Our goal is to add most people who contributed a sizeable change - quick and early.

We follow this process:

1. Any trusted committer (TC) can nominate a new TC in the private Slack channel `#innersource-patterns-tcs`. The TC should provide the following information:
   * Name of the candidate
   * Reason for candidate
   * Github handle of the candidate
   * Slack handle of the candidate
2. Every TC can raise concerns or second the nomination in the #innersource-patterns-tcs channel.
3. If none of the existing TCs disagrees with the nomination within 72h, [lazy consensus](https://tech.europace.de/lazy-consensus-vs-explicit-voting/) is reached: The nomination is accepted.
4. The TC who nominated the candidate informs her/him in private about the nomination and its acceptance. The candidate can decide on whether to accept or reject the offer.
5. If the candidate accepts the offer, the TC who nominated the candidate, makes sure:
   1. New TC receives write access to this repository (this needs to happen first, so that step 5.iii works)
   2. New TC is added to this file (`TRUSTED-COMMITTERS.md`)
   3. New TC is added to `.github/CODEOWNERS`, so that they get notified about new PRs automatically
   4. New TC is added to the `#innersource-patterns-tcs` channel
   5. New TC is praised in the [#innersource-patterns](https://app.slack.com/client/T04PXKRM0/C2EFRTS6A) channel.

## Admins

A handful of individuals are currently the technical GitHub Admins for this repository. This includes most members of the InnerSource Commons' #tech-infra team and members of the [InnerSource Commons GitHub Organization](https://github.com/innersourcecommons).

However, please channel working group-specific requests through the trusted committers.

## References

Our trusted committer process was inspired by [this](https://tech.europace.de/voting-in-new-trusted-committers/).
