## Title

Transitioning Contractor Code to InnerSource Model

## Patlet

Contract developers are often not motivated to engage in InnerSource activities, which may be beyond the scope of their contract. This patlet describes how you can focus on transitioning the contractor project after the fact to an InnerSource project.

## Problem

Contractor developers are often not motivated (through forces described below) to not engage in InnerSource activities. Once delivered, and even if the code is made visible, their projects are often less likely to be part of successful InnerSourced engagements.

## Context

This problem exists where an organization either:

- out-sources the development of a well defined project or
- engagages external firms for staff augmentation and has mixed teams of permanent employees with a large percentage of contract staff. This issue may occur less often in a mixed team where InnerSource principles and ways of working are already established within the organization, but the forces described below are still often at play.

## Forces

Contractor Motivation and Constraints:

- Often contracts with third-party developers are very focused on delivering an end result in the fastest possible fashion. As a result, all InnerSource activities (e.g. responding to third-party PRs) are considered to be distractions or something that will “slow down” ultimate delivery.
- There is also often a concern that accepting code from other parts of the business might introduce security risks, scope creep or other issues that would subsequently have to be resolved by the contract team.
- Above and beyond the idea that InnerSource may slow down the project, there is often an additional concern that accepting PRs from other parts of the company may “muddy the waters” when it comes to assessing what parts of the project were completed/delivered by the contracted developers.

All of the above can mean that even if an individual contract developer wants to engage in InnerSource, there are system-level constraints pushing them not to.

It should be noted that the above scenario is indirectly impacted by:

- The norms around defining Statements of Work for third party contractors
- Pressures to reduce contractor costs during procurement
- Ability to tie contributions to payment at a granular level.

It could also be noted that the contractor motivations in this instance is almost like a more extreme instance of the oft-reported organizational/budgetary constraints that might exist for some internal business units. (Not sure if this is relevant, but it does seem to be an extreme case of what is reported as common objections even in internal teams).

## Solutions

At the outset of the project, clearly define:

- That the code will be made visible by default.
- How the project will be transitioned to an InnerSource project. (Zack can add more explicit details here)

It is noted that this practice can work very well where there is a high trust relationship between the contracting team and the contractors. Perhaps they have worked closely together before, or have a pre-existing relationship. Further patterns that explore how to build trust between teams might enhance this pattern.

## Resulting Context

This particular pattern does not attempt to change the initial behavior of the contract development team (in terms of their potential lack of engagement with the InnerSource process). However, the end result is that the project does become part of the InnerSourced projects for the company after the fact.

## Known Instances

GitHub has seen this approach work with their US government agency customers.

## Status (optional until merging)

TBD

## Author(s)

Clare Dillon (v.0 assuming others will add themselves in this section as we flesh it out).

## Acknowledgements

Particular thanks to Zack Koppert for sharing his experiences in this area and to Gil Yehuda for raising the issue in the InnerSource Slack channel.

This pattern was extracted from a conversation on the topic held with the following folks:

- Brittany Istenes
- Clare Dillon
- Cristina Coffey
- Derek Murawsky
- Gil Yehuda
- Zack Koppert

