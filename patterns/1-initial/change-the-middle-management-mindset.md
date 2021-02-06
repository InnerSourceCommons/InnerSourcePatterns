## Title

Changing the Middle-Management Mindset

## Patlet

TBD

## Problem

* Key problem: the willingness to allocate resources
* Embedded accountability problem: they can't account for the time they spend and put it in their objectives. Need some metric to make it clear it is worthwhile. Has to become a KPI for them.

## Context

* top down InnerSource support. Embedded in their objectives? Trickling down? Top level management has determined a new KPI around InnerSource and it is cascaded down to middle-management? No.
    - a vacuum between top down support and the objectives for developers
    - top down support but no one knows what that means
* developer wants to stand up and be a part of IS projects
* there is no incentive that fits into the middle-management objectives
* difficult for middle-management to understand how to enable InnerSource; how to work for controlling the direct output of one team to trying to embrace and let evolve an IS community?

* Developers contribute and PO/PM or scrum master finds out and puts a wall between developers and the IS project
* Middle-management agrees but P0 or P1 gets in the way
* They would rather duplicate than reuse and collaborate; rewriting the fast and easy way is prioritized over participating in a reusable collaboration.
* Not yet having a majority microservices architecture is not a factor.
* For code changes beyond bug fixes

## Sketch

![How to help Middle Managers actively support InnerSource projects involving their people](http://teiru.net/images/middle_management_sketch_img_2257.jpg)

## Forces

* Organizational goals rarely happen with Middle-Management; they write their own goals (or their bosses do); otherwise incentivization happens through budget. Centralized incentivization is very difficult (their other goals will suffer). KPIs tied to people's bottom line can be effective.
* Educational component: propensity is to blame evil middle-management; they may not know how it works and need to understand it. What benefit they will have for having their people
* Managers are afraid of having people stolen from them, of having priorities that aren't theirs, of becoming irrelevant.
* Managers might fear that this will become the wild west (we're the only ones who really care)
* How to manage priorities in such a bazaar?
* Middle-management lacks understanding of what IS implies
* Middle-management has the ability to learn about IS (formalized training)

## Solution

* OKR = objective key result - bigger picture. The best tool ever to get serious traction across business organizations. We are one team; creating durable teams horizontally across BUs. Tie middle-management into the OKRs; they can tie these into their L2s they write (WAgile: quarterly we do big planning sessions, L2s are a quarterly goal).  Epic for a year, L2 for a quarter.
* Similarly we have goals cascaded down from management levels. Really high level goals have no bearing on daily work of low level developers, but they have traceability to the highest. If you can have IS high level goals cascaded down, you could justify the time.
* Can't get the buzz for IS, but can get buzz for reuse and collaboration (and can measure and show these). Defining the EOL processes. Have incorporated these into the End of Life processes. Majority of the EOLs are due to redundancy. Can counter Middle-Management fear. Fear that they will go away; we clearly define what pieces are theirs to see if there are ways to put competing solutions together. We can EOL something and reuse/collaborate and stop wasting resources. Plays really well to management.

* Find Trusted Evangelists -
* Performance management needs to include IS
* OKR/cascading KPIs (proven solution, known to work)
    - OKR are bigger picture than KPIs (defined measurement)
    - need accountability that transcends from top level goals
    - existing goals don't have a cross-BU aspect the way IS does. If we get that, then I can honestly speak to what I'm doing as an individual developer
    - shows actual proof of top down support
* Events like three day hackathons where the top down people tell middle-managers that their developers have three free days (middle-managers can't say they don't have support)
    - ShipIt Day has a competitive nature (people choose the one idea that is best; everyone else walks away with nothing). Shows an appetite, but not extended out to everybody perpetually. A bit self-defeating.
    - We have innovation days (10% time set aside on calendars, broadcast, you can participate). Choose amongst a few and you get three days to form a new team, work on things together. Hackathon for customer-facing or internal projects (prototypes). Could have an IS day where the metric is: Did you work on someone else's code base? Stand it up and then it becomes available for others to use. Come over to collaborate. Opening an issue=1 point; filing a PR= 5 points; 20 points for merging a PR. Then have an award (two weeks off at Hawaii, all paid with your family; or 3-6 months off to work on your own innovative products; or 6 months part time). Every year could have 1-10 people for IS awards--recognition from the CEO.
* Fellows program if you can achieve guest TC; you get one day a week to do cross-platform work (they report on it as a measurement of success rather than a measurement of loss). Planning is good as a part of resource allocation (might have to change expectations; we're one team, a whole group).
* Champions program recruited from any group: could be a Middle-Management champion who has gone through the process before. See who are the new believers. Could put badges on people's names in the directory. Could do cardboard cut-outs of the champion with an IS t-shirt ;-)

* Built-into the whole design of IS process. Delivery teams don't own any code themselves; they change code amongst the product teams. Middle Management for product teams know that requests will come in for their code to be changed. They need to have their developers provide mentorship to the delivery team developers. We have different BLs; each is represented by a delivery team. Product teams focus on larger architectural decisions, ensure that the delivery teams don't mess too much with the Products.
    - We had globalization teams responsible for countries; had constraints (compliance) for each country. Those teams are always good about IS. But for some reason they went away (restructuring).

* Architectural solutions
    - Microservices architecture: creates incentive organizationally for people to collaborate. If a bug occurs, then it creates a problem for the users.
        - but it might be violating an SLA if the bug isn't being fixed
        - the problem comes with feature requests or affects design (going beyond bug fixes)
    - Developing platforms is an ideal IS use case (hackathon to build applications on top)
    - SW Architects have to have an IS mentality and work together.
        - newer companies with open source developers have that mindset

* Empowering Middle Management - IS readiness checklist; Middle Management should partner with their developers. What are the opportunities out there. Can we come up with justification for you to spend any time on this (how does this tie together with our KPIs)

## Resulting Context

* **Support for IS is automatic, standard and expected from Middle Management.**
* More measurement is required; measurement becomes more sophisticated (easier to measure your own stuff; harder to measure others). Keeping track of time spent in projects.
* Better training for Middle Management in negotiation and facilitation will be needed.
* Engineering cost vs. benefit - you will support others; other teams will allow you to make PRs and this will save you time (a balance in the long run.)

## Known Instances

TBD

## Status

Initial

## Authors

* Silona Bonewald
* Max Capraro, FAU
* Sarah Doire, CH Robinson
* Eric Knudtson, Intuit
* Christopher Litsinger, Comcast
* Don McBride, Nokia
* Stephen McCall, Fidelity Investments
* Andrea Peruffo, Nokia
* Tim Yao, Nokia
