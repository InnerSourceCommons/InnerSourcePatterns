## Title

Group Support

## Patlet

What happens if a team or individual no longer supports an InnerSource project?
Keep the project alive by forming a group of interested individuals.

## Problem

* A popular InnerSource project is orphaned.
* There isn't an obvious home for it to land.

## Story

A library of UI widgets is used by over 50 projects throughout the company.
The funding for the team that owns the library runs out and the team disbands.
At first, no one notices, but after a while whenever someone asks "who owns it" there isn't an answer.
What will happen next?
Will new teams shy away from using it?
Will the project stagnate and linger until its users eventually are forced to move on to something else?
What a shame if that were to happen to a perfectly good and useful project!

## Context

* Popular InnerSource project.
* Consumed as a build-time dependency (e.g. code module).
* No one is actively supporting it.
* The company cannot assign a team to support.

## Forces

* No one is assigned by their day job to work on it.
* Everyone is busy.
* High cost to migrate off the project.

## Solutions

Call for interested volunteers from anywhere in the company to form a group of [Trusted Committer][]s to support the project.
You may need to reach out to specific individuals based on commit or usage history.
It is important that there are enough so that the burden on each can be reasonably small.

When forming, this group should identify or create [Standard Base Documentation][] and [Communication Tooling][].

The group should do its best to manage these aspects of the project:

* **Maintenance**.  If the project is flat-out broken for the standard use case, then fix it.
Keep the project up-to-date as the dependencies and frameworks it uses continue to evolve.
* **Onboarding**.  If someone has a question about how to use the project, make sure they get a reasonable answer.
* **Updates**.  If someone wants to add new feature to the project, give them the design and technical support necessary for them to build it so that it both works for them and is a good addition to the project.
Review incoming pull requests in a timely manner.

Since this group is comprised of volunteers, it is important to communicate that support is "best effort" only.
Accordingly, this model of support is not well-suited for run-time critical, production projects like live APIs.
It is better suited for projects that are consumed at build-time like libraries/packages/modules.
The group is not expected to implement any new functionality for others.

## Resulting Context

* There is some fragile support for the InnerSource project.
* In the long-term the group support is likely to dissolve again at some point. If the project continues in the long run, then use this period of stable group support to find a long-lived way to support it (e.g. [Core Team][]).

## Rationale

People generally want to help.
If there is personal outreach for someone to join as a [Trusted Committer][], there are generally a number of people that will say "yes".
Feeling part of a group and being given some structure and responsibility generally motivates people to try their best, which many times ends up being enough.

## Known Instances

* WellSky

## Status

Structured

## Author

[Russell R. Rutledge][]

[Russell R. Rutledge]: https://github.com/rrrutledge
[Standard Base Documentation]: ../2-structured/project-setup/base-documentation.md
[Communication Tooling]: ../2-structured/project-setup/communication-tooling.md
[Trusted Committer]: ../2-structured/trusted-committer.md
[Core Team]: ../2-structured/core-team.md
