## Title

Mananging capacity for reviewing contributions

## Patlet

Reviewing InnerSource contributions takes time and effort. This should be reflected in capacity planning, especially for larger contributions. Expectations and available capacity should be transparent so that contributors understand when their contributions will be reviewed and released.

## Problem

Large InnerSource contributions are causing delays to other work in the team and/or contributons are taking longer to be released than expected. Reviewing contributions may be significant invisible work, not tracked in a team's agile development process.

## Story

The BBC's connected TV application are built by a number of teams, each with different areas of responsibility. They work on each other's areas of the codebase via InnerSource on a regular basis.

The team reapsonsible for the build process for the JavaScript bundles received a major pull request, changing how depedencies were bundled. This PR introduced a new build time dependency, a new strucutre to the deployed JavaSctipt bundles, and touched 503 files, with 6,699 lines of code added and 2,828 lines of code deleted. A contribution of this size required signicant time to code review, test, and ensure the team understood the new tooling snd structure introduced. Normally, InnerSource contriobutions would be reviewed ad-hoc, but the team estimated that this review process would take days rather than hours. Reviewing this PR would have delayed the team's other work, so the team raised this with the team lead, delivery manager, and product manager, to prioritise this work against other work. Time was set aside to review this contribution at future date.

This process was formalised in the team:
* Larger contributions have a ticket created on the team's backlog and included in prioritisation disacussion alongside other tickets. The contributor will be informed of the priority call and given an estimate as to when it will be reviewed and released.
* Smaller contributions can still be reviewed ad-hoc.

## Context

Maintainers of a successful InnerSource project are finding it difficult to review contributions, especially large contributions. They do not want to disrupt their team's other work, but also want to support contributions by reviewing/releasing them in a timely fashion.

## Forces

* Contributors expect timely feedback on their contributions
* Maintaining team are expected to deliver other work alongside reviewing contributions
* Missing communication between contributors and maintainers on expectations/lead time for contributions to be reviewed/released
* Tension in prioritising InnerSource contributions against other work

## Solutions

* Reviewing larger contributions is tracked in the team's ticketing system/bug tracker (e.g. Jira, GitHub issues)
* Maintaing team is given time to review larger contributions in team capacity planning
* Reviewing contributions is prioritised against other work (e.g. in sprint planning)
* Maintainers communicate their capacity for reviewing contributions, the priority of contributions, and an estimate of when a contribution will be reviewed/released
* Maintaing team has a service level objective (SLO) (e.g. 2 working days) for contributions receiving initial feedback

## Resulting Context

Maintaining team understands the overhead of reviewing large contributions and is given capacity to do so. Delivery and product managers are better able to plan, estimate, and track other work in the team by accounting for the time taken to review InnerSource contributions. Contributors understand when their contribution will be reviewed and released, and how long before the maintainers will provide initial feedback.

## Rationale (optional)

Explains why this is the right solution; using totally different words WHY this solution balances these forces and this context to solve this problem.
Can expand on what-if's or theories.

## Known Instances

BBC iPlayer & Sounds

## Status (optional until merging)

General pattern status is stored in GitHub's Label tagging - see any pull request.
Note that this GitHub label tagging becomes less visible once the pattern is finalized and merged, so having some information in this field is helpful.

You might store other related info here, such as review history: "Three of us reviewed this on 2/5/17 and it needs John's expertise before it can go further."

## Author(s)

Tom Sadler

## Acknowledgments

Clare Dillon
