## Title

Core Team

## Patlet

Is your InnerSource project difficult for people to work with,
yet no one is interested in making it better?
Establish a core team to take care of those fundamental items so that contributors can focus on adding features that provide value to them.

## Problem

* It is difficult to contribute to the project.
This could be due to things like:
  * Can't run the project locally.
  * Poor documentation.
  * Convoluted code.
  * Lack of adequate testing.
* It is difficult to use the project.
Some possible causes:
  * Poor documentation (again).
  * Frequent bugs.
  * Unintuitive setup.

## Story

There's a central project that everyone depends on.
What a great candidate for InnerSource!
Unfortunately, the project has grown organically, with various contributions and additions just slapped on.
Now it's an icky, black morass of code that no one understands and everyone is afraid to touch.
It's clearly due for an overhaul, but even though everyone needs it and wants it, no one takes the time to work on it.

## Context

* Project is full of tech debt.
* Many teams use the project.
* Tech debt slows adoption and iteration on the project.

## Forces

* Everyone is busy.
* Each contributing team prioritizes work that results in an immediate payoff for that team.
* As the project grows the natural trend is for the project to become more difficult to use and to modify.

## Solution

Form a core team whose job it is to maintain the project in a state so that others can easily onboard to it and contribute to it.
This core team does the work that is necessary for a healthy usage and contribution ecosystem yet tends to be work that is not prioritized as a contribution.
Some main catogories of this type of work include communication, local environment, and devops infrastructure.
Here are some specific examples:
* Production bugs
* Documentation.
* Onboarding tutorials and examples.
* Automated testing.
* CI/CD.
* Local environment.
* Modularization.
* Versioning.
* Monitoring.
* Trailblazing new classes/categories of features.

Each of these items is very important to a healthy product ecosystem, yet is unlikely to be prioritized regularly as a contribution.

Due to their central role, core team members should nearly always be [Trusted Committers](https://patterns.innersourcecommons.org/p/trusted-committer) as well.
While the [Trusted Committer] focuses mostly on facilitating others' contribution and use of the project, a core team member regularly contributes to the project as well.
The core team doesn't have its own business agenda that determines its contibutions.
They decide what to contribute based on what will most help others to use and contribute to the project.

A good way to continually remind the core team of this goal is to have them report regularly on the number of active teams using the project and the number of off-team contributions to the project.
Continual focus on these metrics and effort to help them improve will naturally drive the core team to prioritize generally the right work to create a thriving InnerSource ecosystem around their project.

## Resulting Context

* Many teams use and contribute to the project.
* It is easy to use and contribute to the project.
* Core team has their success defined in terms of others' interaction with and response to their project.

## Rationale

Separating out a core team and tasking them in this way 

Explains why this is the right solution; using totally different words WHY this solution balances these forces and this context to solve this problem.
Can expand on what-if's or theories.

## Known Instances (optional)

Where has this been seen before?
Helps to reinforce that this is a REAL pattern and that you match the context.

May mention:

* A particular business
* Anonymized instances ex: "3 companies have proven that this is a good solution" or "A large financial services org...".

## Status (optional until merging)

General pattern status is stored in GitHub's Label tagging - see any pull request.
Note that this GitHub label tagging becomes less visible once the pattern is finalized and merged, so having some information in this field is helpful.

You might store other related info here, such as review history: "Three of us reviewed this on 2/5/17 and it needs John's expertise before it can go further."

## Author(s) (optional)

Often, this is yourself;
If you need to, find someone in the InnerSource Commons to be the nominal author (As Told To);
Could also be no-one if you do not want to take on authorship (common with a donut looking for a solution)

## Acknowledgements (optional)

Include those who assisted in helping with this pattern - both for attribution and for possible future follow up.
Though optional, most patterns should list who helped in their creation.

## Alias (optional)

If this pattern is also known under a different name than what is listed unter **Title**, please list those alternative titles here.
e.g. if the pattern is named after the problem it solves, a helpful alias might be one that describes the solution that is applied.


[Trusted Committers]: https://patterns.innersourcecommons.org/p/trusted-committer
[Trusted Committer]: https://patterns.innersourcecommons.org/p/trusted-committer
