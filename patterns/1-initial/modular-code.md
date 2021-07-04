## Title

Modular Code

## Patlet

The lack of modularization in the software architecture prevents reuseability, and with that the ability to reap the benefits of InnerSource. By helping the teams to understand the benefits of modularization, and making time to work towards that goal, more InnerSource collaboration can happen and the software architecture overall can be improved.

## Problem

Engineering does not want to spend the extra resources needed to develop modular components. This applies to managers and developers alike. As a result, fewer components end up being reused, leading to duplication of work.

## Context

* There is no corporate mandate for modularized code.
* This is a new product/new code, not a legacy product/code.
* There is an available repository for sharing code.
* Making code modular takes extra effort and time to develop.
* Time commitments might already have been made for customer deliveries (not changeable).

## Forces

* There is a learning curve to writing code that can be reused.
* Extra documentation is required for reusable code.
* Some companies have a common components group that develops reusable code, but others feel that such components should be developed by those business lines that are using the components and a library of common components could be established.
* Developers might not know how to write modular code.

* Might be a fear that if not done properly, quality might be impacted.
* Developers might have no incentive to write modular code (due to their tight schedules and lack of a mandate).
* If there is frequent turnover of team members, modularization may not be a priority.
* You might be dealing with legacy systems (can't be simply refactored or rewritten).
* Requirements might be different for writing modular code.
* Architectural constraints might impact modularity.
* Developers who develop monolithic code bases might lack the perspective of how modularity might improve how they work.
* Level of communication between teams can impact ability/inclination to modularize.

## Solutions

* Provide incentives to teams to invest in modular code. Modular code is far more reusable. This could work well for large teams when working on modularized projects; team members can focus on their smaller assigned tasks.
    - Developers could get an opportunity to increase their influence in the organization.
    - Modular code makes the pathway to open source smoother.
    - Modular code facilitates division of labour (as required for work in larger teams, or as an open source project)
    - Modular projects enable team members to focus on their own smaller assigned tasks.
    - Modular code makes Agile implementation easier.
    - Modular efforts increase autonomy and accountability for Engineers, which can raise satisfaction and quality.
* Select certain "success projects," teams that will develop reusable code and demonstrate the long term success. This can help motivate others (they see what is possible and what is in it for them). Transparency is critical.
* Offer education. Modular code is well-understood; there is a lot of literature in favor of this.
* Acknowledge and drive acceptance for the cost of modularization. Build time into the release schedule for this.
* Companies moving to use more open source code will appreciate modularity more over time.
* Mitigate risk and fear of quality degradation from accepting InnerSource contributions.
* Establish a checklist of elements to be checked off to classify a component as reusable.
    - There could be requirements on tests, tools and documentation before considering a component as reusable
    - Introduce refactoring as organic effort and strive for it to become part of the culture. Refactoring leads to more modular code and reduction of technical debt.
* Establish standards on testing methodology, labeling of repos.

## Resulting Context

**Pattern Idea**: Time is spent making the shared code modular so it can be reused.  

## Known Instances

Elements of the resolution have been proven by various companies.

## Status

Initial

## Authors  

* Tim Yao, Nokia
* Erin Bank, CA Technologies
* Keerthi Surapaneni
