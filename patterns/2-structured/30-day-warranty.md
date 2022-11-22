## Title

30 Day Warranty

## Patlet

When accepting contributions from outside of your own team, there is a natural aversion to taking responsibility for code not written by the team itself. Through the 30 Day Warranty the contributing team consents to provide bug fixes to the receiving team, which will increase the level of trust between both teams and makes it more likely that contributions get accepted.

## Problem

A team develops a component which is used throughout an organization.  This team resists accepting or outright rejects contributions (feature requests).  This behavior blocks progress and leads to frequent disruption from escalations.

## Context

- Teams depend on another team accepting their contributions so that a component produced by the receiving team can be used by the contributing team.
- The receiving team does not have the resources, knowledge, permission, and/or inclination to write the contributed component/feature themselves.

## Forces

- There is distrust of contributions due to a past history of cheating: teams submitted half finished contributions and subsequently filed requests for fixes that make it ready for use in production.
- If code is contributed from outside the team, the team has the natural suspicion that the other team does not know how to write code that would meet the receiving team's expectations.
- Each team looks first to help its own leaders achieve their own goals. This direction of loyalty can complicate resolution of this problem.
- There is a natural aversion to taking responsibility for code not written by oneself.
- Contributed code needs to be heavily rewritten before being accepted into the codebase.
- There is the fear of the contributors not being available for support with fixing bugs after the time on contribution.
- Teams fear contributed code will lead to high(er) maintenance costs but do not know how to control for that.
- Receiving teams may fear that teaching others how to contribute code will expose technical debt in their system and that visibility may be damaging.
- Receiving teams may not believe that they will get acceptable code no matter how much mentoring they provide.
- Either team may not feel confident in measuring risks or certifying that they are mitigated in a contribution; the system itself is somewhat brittle (may not be ways to fully test and catch all problems).

## Solution

Address the fears of both the receiving and the contributing teams by establishing a **30 day warranty period** starting with the time the contributed code goes into production. During this warranty period the contributing team consents to provide bug fixes to the receiving team.

Note that the warranty period could be 45, 60, or 100 days too. The duration may vary based upon the constraints of the project, the software life cycle of the project, commitments to customers, and other factors.

In addition it helps to provide clear [contribution guidelines](./project-setup/base-documentation.md), spelling out the expectations of the receiving team and the contributing team.

![30 Day Warranty](../../assets/img/thirtydaywarranty.jpg)

## Resulting Context

- The receiving team is willing to accept contributions and able to share the workload of initial adaptations/fixes.
- Increased transparency and fairness.
- Keeps escalations from becoming too heavyweight.

## Known Instances

- This was tried and proven successful at PayPal.
- GitHub internally uses this pattern with a modified warranty timeline of 6 weeks.
- Microsoft recommends this pattern as a principle - teams set their own specific time target matching their needs and confidence.

## Authors

- Cedric Williams

## Acknowledgement

- Dirk-Willem van Gulik
- Padma Sudarsan
- Klaas-Jan Stol
- Georg Grütter

## Status

* Structured
* Drafted at the 2017 Spring InnerSource Summit; reviewed 18 July 2017.

## Variants

- Ensure cooperation of dependent teams by making them a community by having more than one, meritocratically appointed "[Trusted Committers](./trusted-committer.md)" (TCs) take responsibility.
