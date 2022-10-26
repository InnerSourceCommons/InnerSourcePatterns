## Title

Document your Guiding Principles

## Patlet

The usual InnerSource explanation of "applying open source best practices inside an organisation" does not work well with people lacking an open source background.
As a remedy the most important principles of InnerSource get documented and published widely.

## Problem

The organisation is trying to roll out InnerSource at a larger scale.
The initiative started among open source enthusiasts.
The goal is now to get buy-in from people that are lacking open source experience.
For that audience the typical slogan of "applying open source best practices" is no longer sufficient to transport the message of what InnerSource is, which problems it solves and which tools it uses for solving these issues.
As a result InnerSource adoption in the organisation slows down.
Teams develop diverging ideas of what the goals of InnerSource is about and how to best implement it leading to confusion when contributors are starting to cross team boundaries.

## Story

Early experiments in an organisation have shown that open source collaboration best practices can be beneficial.
The next step now is to move the initiative to teams and individuals lacking a deep background in open source.

The goal now is to clearly communicate the goals of the InnerSource initiative
as well as a clear path towards achieving these goals.

## Context

* InnerSource as a term is circulating among employees.
* The initiative started among open source enthusiasts.

## Forces

* Teams have trouble communicating exactly what the important aspects of InnerSource are.
* People lacking open source experience fail to understand what it means to bring open source best practices into the organisation.
* On a daily basis teams trying to follow InnerSource best practices have a hard time deciding if what they are doing is inline with general InnerSource values.

## Solution

Those driving the InnerSource initiative in the organisation need to help the teams and individuals that are lacking a deep background in open source, and therefore have a less intuitive understanding of InnerSource.

Clarity should be provided to teams and individuals by documenting these two areas:

1. **Purpose** - Why does the organisation want to adopt InnerSource?
2. **Principles** - Which InnerSource principles will help to address these challenges?

The following sections provide more details about both of these, meant as possible starting points to document them for your organization.

### Why does the organisation want to adopt InnerSource?

In the past InnerSource has proven to be successful to solve several issues commonly found in organisations.

However which organizational challenges does your organization hope to improve upon using InnerSource?

Instead of going for generalizations, try to exactly identify the solutions that match the challenges of your organisation - preferably with those affected by the change you want to see.

Some challenges that others have addressed by following InnerSource best practices:

* Reduce development silos caused by excessive ownership culture.
* Increase innovation speed by reducing time spent solving similar issues by fostering healthy code reuse.
* Increase development speed by better cross-team collaboration.
* Solve project/ team dependencies beyond "wait it out" and "build workarounds", thereby reducing engineering bottlenecks.
* Increase quality.
* Increase employee happiness.
* To increase success of new hires.
* To build actionable documentation.

### Which InnerSource principles will help to address these challenges?

Once teams understand which problems InnerSource will help them address, the next step is to explain which principles help address these challenges.

Based on basic open source development principles the following guidelines have been proven successful:

(1) Code must be transparently hosted within the organisation

Source code, documentation, data relevant for project development must be available and easy to find for anyone in the organisation.

(2) Contributions over feature requests

All stakeholders of a project act as potential contributors and are being treated and supported as such.
Contributions remain suggestions instead of requirements.
Coordination before a contribution helps avoid wasted effort.
Projects provide contribution guidelines to avoid friction.

(3) Mistakes are opportunities for learning

With work visible across the entire organisation any mistake is visible to everyone.
As a result a culture must be established in which mistakes are opportunities for learning instead of failure that should be avoided at all cost.

(4) Written over verbal communication

For projects that span multiple teams, potentially on diverging meeting schedules, it needs to be possible to collaborate asynchronously.
The goal for InnerSource projects is to recruit new contributors.
For that, potential future contributors need to be able to follow the project progress on a self serve basis with a very low barrier to entry.
If project relevant communication happens through synchronous communication, arguments discussed need to be made transparent in the written channel - decisions should be finalized only there.
As a side effect this leads to passive base documentation that is very valuable for any newcomer to the project.

(5) Allow written advice to accumulate in a persistent, searchable archive

All project communication, in particular decisions taken and discussions leading up to those decisions, need to be archived.
It must be possible to reference communication via stable URLs.
Previous communication needs to be stored in a way that can easily be searched.

Two caveats though:

1. This does not replace structured documentation. It can serve as a starting point to collect structured documentation though.
2. There are exceptions to the rule of everything being written and accessible to the entire organisation: People related discussions as well as security related discussions are sensitive and should not be held in public.

(6) Reward Trusted Committership

All contributions (e.g. source code, documentation, bug reports, input to discussions, user support, marketing) are welcome and are being rewarded.
Those showing support for the project are being invited as [Trusted Committers](../2-structured/trusted-committer.md).
All Trusted Committers of a project are published.

## Resulting Context

* Organisation members understand which challenges they can address by applying InnerSource best practices.
* Organisation members lacking prior open source experience understand the basic values and principles of InnerSource projects.
* Organisation members lacking prior open source experience are able to check their daily activities against a set of common established values.
* The organisation's development practices become more similar to open source projects thus making it easier for organisation members to participate in open source projects.

## Known Instances

### Europace AG

The InnerSource principles listed in the Solution above are mostly based on Europace's experience.
For more details see [Europace InnerSource Prinzipien](https://tech.europace.de/post/europace-inner-source-prinzipien/) (in German).

### GitHub

#### Purpose

Often at GitHub we work in a model where teams contribute features to areas outside their area of responsibility. Common examples include sales engineering contributing features to unblock a sale, Special Projects contributing urgently needed, high impact features across the product, and a team working across multiple areas to deliver a feature.

#### Principles

Overall the principles outlined in this doc are to avoid increasing tech debt and support burden for the owning team. Oftentimes help is being lent to a team because they are behind due to support and maintenance costs in their area of responsibility and they do not have bandwidth to contribute to the feature. Any new features done by another team that add to that support burden or tech debt means even less time for the owning team to work on new features, so we want to make sure they are done right.

At the same time, we strive to be a company where engineers freely work across boundaries, and business priorities often require that we contribute to areas outside our core areas of ownership.

A good summary of the principles is to leave the area in as good as or better shape than you found it.

With that in mind, here are principles we agree on:

- Avoid minimum viable products (MVP) that accrue feature debt. It is ok to ship an MVP to get customer feedback, but the contributing team must be committed to finishing the feature set. Examples include:
  - Commitment to go beyond MVP to a solution that will satisfy most customers.
  - Full support for administration of new features (e.g. support in the settings UI vs. just doing a command line).
  - Surface features in both the UI and API vs. only deliver an API (or vice versa)
  - Ensuring features work in cloud and local server environments.
- Support the feature work up to and beyond its deployment to production
  - Coordinate incremental rollout
  - Handle support tickets
  - Plan time to address customer feedback (features and bugs)
- Build features in the right way (do not accrue tech debt)
  - Agree on requirements and solution with Product and Engineering teams
  - Proper architecture and design
  - Make sure data is stored properly to avoid later data migrations.
  - Appropriate telemetry is in place
  - Appropriate test coverage is in place
  - Supported on cloud and local production environments (including setup, configuration, backup / restore, migrations, etc.)
  - Bugs fixed
  - Documentation updated

#### Engagement

We use an engagement model because we like to lay out what concrete steps can be taken by a team when contributing features to areas outside their area of responsibility.

A typical engagement model at GitHub looks like this:

- Get approval on the feature set and rollout plan from the product owner.
- Get approval on engineering design, including addressing the non-functional requirements (telemetry, test coverage, multi-environment testing and support) from the engineering owner (typically engineering manager and director).
- Do code reviews along the way, along with reviewing any new or changed requirements.

### Robert Bosch GmbH

#### Purpose

Fostering collaboration, learning and innovation is the main focus of the Bosch InnerSource initiative (BIOS).

#### Principles

To that end, Bosch applied the following principles:

- **Openness**: We lower the barriers for entry into BIOS communities as much as we can.
- **Transparency**: We are radically transparent and share our work products, our communication, and our decision making with all associates in the company.
- **Voluntariness**: The decision to join and contribute to a BIOS community is left to each associate. Associates should work within BIOS because they are intrinsically motivated, not because their manager told them so.
- **Self-Determination**: BIOS communities are free to choose what to work on, when they work and what tools and processes they use to work.
- **Meritocracy**: Power is vested in BIOS project members based on their merits, that is, based on the quality and quantity of their contributions.

![BIOS Principles](../../assets/img/bios-principles.png)

The principles _Openness_, _Transparency_ and _Voluntariness_ helped grow diverse communities of intrinsically motivated associates.
_Meritocracy_ has proven to be an effective motivation for making great contributions.
_Self-Determination_ allowed the communities to use their limited time for contributions in the most effective and efficient way.

## Status

Structured

## Authors

* Isabel Drost-Fromm
* Georg Grütter

## Acknowledgements

* Zack Koppert - for sharing GitHub's approach in the Known Instances

## Alias

Explicit InnerSource Principles
