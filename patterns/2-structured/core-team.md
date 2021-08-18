## Title

Core Team

## Patlet

Is your InnerSource project difficult for people to work with, yet no one is interested in improving it?
Establish a core team to take care of the project's fundamental items so that contributors are enabled to add and use the features that provide value to their scenarios.

## Problem

* It is difficult to contribute to the project.
This could be due to things like:
  * Can't run the project locally.
  * Poor documentation.
  * Convoluted code.
  * Inadequate testing.
* It is difficult to use the project.
Some possible causes:
  * Poor documentation (again).
  * Frequent bugs.
  * Unintuitive setup.

## Story

There's a central project that everyone depends on.
What a great candidate for InnerSource!
Unfortunately, the project has grown organically, with various contributions and additions slapped on haphazardly.
Now it's an icky, black morass of code that no one understands and everyone is afraid to touch.
It's clearly due for an overhaul, but even though everyone needs that and wants it, no one takes the time to work on it.

## Context

* Many teams use the project.
* Significant tech debt.
* Slow adoption and iteration on the project.

## Forces

* Everyone is busy.
* Each contributing team prioritizes work that results in an immediate payoff for that team.
* As the project grows the natural trend is for it to become more difficult to use and to modify.

## Solution

Form a core team whose job it is to maintain the project in a state so that others can easily onboard and contribute to it.
This core team does the work that is necessary for a healthy usage and contribution ecosystem.
This critical work tends to not be prioritized as a contribution.
Catogories of this type of work include communication, local environment, and devops infrastructure.

Here are some specific examples:

* Production bugs.
* Documentation.
* Onboarding tutorials and examples.
* Automated testing.
* CI/CD.
* Local environment.
* Modularization.
* Versioning.
* Monitoring.
* Trailblazing new classes/categories of features.

Each of these items is very important to a healthy product ecosystem, yet is unlikely to be prioritized as a contribution.

Due to their central role, core team members should nearly always fill the role of [Trusted Committers] as well.
While the [Trusted Committer] role focuses mostly on facilitating others' contribution and use of the project, a core team member regularly contributes to the project as well.
The core team doesn't have its own business agenda that determines its contibutions.
They decide what to contribute based on what will most help others to use and contribute to the project.

A good way to continually remind the core team of this goal is to have them report regularly on:

* number of active teams using the project
* number of off-team contributions to the project.

Continual focus on these metrics will naturally drive the core team to prioritize generally the right work to create a thriving InnerSource ecosystem around the project.

## Resulting Context

* Many teams use and contribute to the project.
* It is easy to use and contribute to the project.
* Core team has their success defined in terms of others' interaction with and response to their project.

## Rationale

Separating out a core team and tasking them in this way helps to fill the gaps that a successful project needs yet are left behind by contributors that are pursuing their own agenda only.
The core team fills those gaps and greases the wheels so that the contribution ecosystem remains healthy.

## Known Instances

Nike implented this pattern to manage the InnerSource effort around its reusable CI/CD pipelines.

## Status

Structured

## Author

[Russell R. Rutledge](https://github.com/rrrutledge)

[Trusted Committers]: https://innersourcecommons.org/learn/learning-path/trusted-committer/
[Trusted Committer]: https://innersourcecommons.org/learn/learning-path/trusted-committer/
