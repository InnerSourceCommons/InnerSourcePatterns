## Title

InnerSource Guidance Group

## Patlet

A highly divergent set of development standards in different teams can slow down collaboration betweens these teams. A InnerSource Guidance Group that establishes broad governance and behavioral guidelines can help to reduce these frictions.

## Problem

Without a set of organizational standards, [Trusted Committers](../2-structured/trusted-committer.md), and individual teams, are free to set their own standards, which is a step in the right direction.  

However, team standards could be highly variant and further diverge over time as they evolve and adapt to new needs and forces.  This can lead to confusion and frustration as contributors submit code across team and functional boundaries.

The business is interested in establishing a set of agreed-upon standard operating procedures that guide teams, while still providing sufficient autonomy to meet the parochial needs of individual teams.

## Context

A company is planning to introduce InnerSource as a strategic initiative. They are faced with reforming and steering the behavior of developers and engineers toward a common goal.  In general functional groups and teams within the company adhere to a broad spectrum of standards regarding tools, development languages, collaboration models, engagement models, documentation models, etc.

The company recognizes the value of the Trusted Committer role as a situational leader for a team that sets and enforces team standards, code contribution standards, contribution agreements, PR management, etc. however the company is interested in establishing organizational guidelines as well that steer and focus Trusted Committers and the teams they represent.

As an example, the breadth of languages used within an engineering and operations organization could include, powershell, bash shell, perl, tcl, python, golang, java, shell augmented with sed and awk and jq, etc. and the organization wants to standardize as much as possible on a subset of these languages so that the ability to collaborate between teams is maximized.

## Forces

- Separate engineering and development teams establish development standards that may be highly divergent from other teams. (Effect: This limits the ability to collaborate.)
- People move between teams, and responsibility for specific initiatives change over time. (Effect: The ability of the organization to adapt to variant team norms results in decreased development velocity.)

## Solutions

Recognize that Trusted Committers are both **situational leaders** and **subject matter experts** representing their team. Establish an InnerSource Guidance Group as a “committee” attended and chaired by Trusted Committers. Charter this InnerSource Guidance Group with establishing company and/or organizational guidelines.

- The “committee” is scheduled periodically as necessary by the Trusted Committers – twice a week, once a month, quarterly, etc.
- The goal is to establish general direction, or a highway, while leaving freedom for individual teams to adapt to local needs, or side streets
- Trusted Committers establish organization guidelines that become templates for [Contribution Agreements](../2-structured/project-setup/base-documentation.md)
- Trusted Committers collaborate on and refine guidelines asynchronously via passive documentation and the establishment of organizational patterns.
    - This guideline definition project itself can be run as an InnerSource project, accepting contributions from anywhere in the organization.
    - By running this as a collaborative documentation project, it can role-model and verify the behaviors that they want to promote for other InnerSource projects as well.
- The InnerSource Guidance Group is responsible for communicating general guidelines to upper management
- This also ensures that teams and functional groups have a recurring touchpoint with other team and functional groups – establishing trust and insight into the overall organizational needs and requirements

## Resulting Context

TBD

## Known Instances

- A large, highly regulated, financial organization is planning to implement a Trusted Committer Steering Group to provide broad guidelines and guard rails as part of their InnerSource initiative.

## Rationale

Empowering Trusted Committers as representatives on behalf of their teams propagates ownership of the overall InnerSource strategy as it deploys and evolves in an organization and ensures that a baseline level of governance and standardization occurs.

## Author(s)

- Tim Tyler <ttyler01@gmail.com>

## Acknowledgements

- Tim Yao
