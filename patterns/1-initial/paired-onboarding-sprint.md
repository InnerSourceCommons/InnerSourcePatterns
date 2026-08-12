## Title

Paired Onboarding Sprint

## Patlet

Potential contributors who already depend on a shared project often stall before their first contribution - not for lack of ability, but because starting feels too costly to attempt alone. Pair a high-value potential contributor with a host-team engineer for a dedicated, bounded sprint to make their first real contribution together.

## Problem

Potential contributors who already use a shared project are often the best future contributors, but self-service onboarding material alone rarely converts them. Common blockers aren't knowledge gaps a README can fix - they're activation-energy problems: not knowing where to start, not having time to learn an unfamiliar codebase alone, assuming their own team won't prioritize the work, or not wanting to take on open-ended maintenance. An interested, capable person can stay stuck at "aware and willing" indefinitely without ever attempting a first contribution.

## Story

GitLab's DevRel Engineering team runs a program called Co-create. They identify a "high-value contributor" - someone already actively using GitLab's own tooling, with a clear ongoing need - and send one of their engineers to spend a dedicated week working alongside that person on a real feature. The engineer provides a clear guide through the codebase and the entire contribution process, not just pair-programming the code itself. By the end of the week the contributor has independent momentum: a real contribution in flight, a working understanding of how to contribute again unassisted, and in some cases the start of a path to mentoring other contributors themselves.

## Context

- A shared project already has self-service onboarding material (docs, good-first-issues, a portal) but conversion from "aware and interested" to "actually contributed" stays low.
- Some potential contributors are identifiable in advance as high-value - people already depending on or using the project - rather than random newcomers.
- The host team has enough capacity to dedicate one engineer's time for a bounded period.
- The barrier is activation energy and structural friction, not a lack of technical ability or interest.

## Forces

**Host-team time cost vs. contributor lifetime value** - a dedicated engineer-week is a real cost, weighed against a contributor who may go on to contribute (and mentor others) indefinitely.

**Selecting who gets this treatment** - not every potential contributor can receive a dedicated sprint, so the host team must judge who is high-value enough to justify the investment.

**Risk of a one-off** - the contributor could complete the sprint but never contribute again without a clear handoff back to the project's normal self-service paths.

## Solutions

Identify a specific, already-engaged potential contributor - not a cold newcomer - who has a clear need the project could meet. Assign one host-team engineer to work with them for a bounded period (GitLab uses one week) on a real feature or fix the contributor actually cares about. Provide a guide through the whole contribution workflow, not just the code: where things live, how review works, who to ask. At the end, make sure the contributor leaves with independent momentum - a merged or nearly-merged contribution, a working understanding of how to contribute again alone, and ideally an on-ramp toward mentoring future contributors themselves.

## Resulting Context

The contributor is meaningfully more likely to keep contributing on their own, and the host team gains a return contributor without needing ongoing dedicated support. Some sprint participants go on to mentor other contributors, extending the pattern's value beyond the original pairing. This works best as a complement to self-service onboarding (see [InnerSource Portal](../2-structured/innersource-portal.md), [Standard Base Documentation](../2-structured/base-documentation.md)) rather than a replacement for it - the sprint is reserved for the highest-value candidates, not a scalable default path for every contributor.

## Rationale

Self-service onboarding assumes the only barrier is information: if the docs are good enough, people will find their own way in. But for a contributor who is already interested and capable, the real barrier is often activation energy - the first contribution feels too costly to attempt alone, so it never gets attempted. A dedicated, bounded, human-guided sprint directly removes that activation-energy barrier for the contributors most worth the investment, converting passive users into active contributors and, sometimes, into future mentors themselves.

## Known Instances

* **GitLab** - GitLab's "Co-create" program identifies high-value potential contributors (people already using GitLab's own tooling) and sends an engineer to spend a dedicated week guiding them through their first real contribution, followed by support as they build independent momentum. See: [Break the contribution wall](https://www.youtube.com/watch?v=d3igPlTr4Ag) (InnerSource Commons, 2026, by Raimund Hook).

## Status

* Initial
* One known instance (GitLab) as of August 2026 - not yet validated across multiple organizations.

## Authors

* TBD

## Related Patterns

* [InnerSource Portal](../2-structured/innersource-portal.md) - self-service discovery this pattern complements rather than replaces.
* [Standard Base Documentation](../2-structured/base-documentation.md) - the self-service onboarding path most contributors should still use; this pattern is for the subset worth a dedicated sprint.
* [Trusted Committer](../2-structured/trusted-committer.md) - sprint participants who go on to mentor others are a natural path toward this role.
