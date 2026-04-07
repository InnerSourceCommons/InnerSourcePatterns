## Title

InnerSource Hackathon

## Patlet

Only InnerSource enthusiasts practice InnerSource during the early stages of adoption, while most engineering teams lack the time or motivation to try it.
Hosting a company-wide hackathon focused on InnerSource contributions provides a safe space for engineers to experiment with InnerSource practices and produces tangible contributions to InnerSource projects.

## Problem

The company wants to adopt InnerSource as a software development methodology but only those familiar with open source principles or those who understand the benefits of InnerSource adopt it. It results in just a handful of InnerSource projects and is difficult to scale beyond that.

## Context

The senior leadership believes in InnerSource and wants to drive it throughout the company. The engineers who are familiar with open source principles and/or understand the benefits of InnerSource are the early adopters. There is success with these initial pilot projects and teams.

Now the next step is to drive it across the company. There might be reluctance from engineering teams due to various factors like:

* not familiar with InnerSource or open source practices
* not enough time to prioritize InnerSource, given the regular work deliverables
* reluctance to changing ways of working when everything works well already
* unclear return on investment for the upfront setup costs that an InnerSource project takes

Even when teams slowly start adopting InnerSource and open up their repositories, there are not many contributors. It is challenging to build a community around those projects, in spite of publishing the projects in an [InnerSource Portal](../2-structured/innersource-portal.md). This could be due to various reasons like:

* engineers do not have time to explore new InnerSource projects and contribute, outside regular work deliverables
* no additional incentive to this effort apart from being acknowledged
* lack of motivation by middle management

In organizations where developers charge time to specific contracts or projects (e.g. consulting firms, government contractors, nonprofits), the barrier is even higher: if InnerSource is not part of the funded tasking, it simply does not happen.

## Forces

Apart from the reasons listed in the Context section, there are other factors from different entities that prevent teams from adopting InnerSource like:

* From middle management: perception of no direct benefit to the team apart from team skill development and individual growth; eventually resulting in no motivation by the middle management to the engineers in trying out InnerSource ways of working.
* From engineers: investing time to try new ways of working when there is already time and resource constraint for regular work deliverables; it is also challenging to balance both and show outcomes in both; this curbs motivation from the engineers as there is little safe space to experiment.
* From senior leadership: not prioritizing investment in InnerSource ways of working such as it being part of long term goals or objectives.

For those new to InnerSource or any technology/methodology, there is a need for safe space to try and experiment without definite outcomes in the initial stages. These factors and forces hinder such an experiment ground.

## Solution

Organize a company-wide hackathon focused on InnerSource. An InnerSource hackathon provides a safe space for engineers to try and contribute to InnerSource projects without any presumption and prejudice. It could be a 1 or 2 day event.

It can preferably be organized by an InnerSource Program Office (ISPO), if it exists in the organization, or by the Open Source Program Office (OSPO), if OSPO also drives InnerSource within the company. It can also be organized by a software best practices team, a developer experience team, or any central team or group of individuals who believe in InnerSource.

### Preparation

A successful hackathon requires preparation in several areas:

* **Funding**: Secure a charge code or budget that participants can bill their time against, removing the barrier of contract-based time allocation. Even funding for 20-30 attendees for a single day is sufficient to start.
* **Awareness**: Send out emails, post in messaging channels, and leverage existing developer community channels. Consider sending an opening survey to gauge existing knowledge of InnerSource and understand what languages and skills participants bring.
* **Task preparation**: Reach out to maintainers of existing InnerSource projects and ask them to identify features that need to be implemented or issues that contributors could work on. Document each task with the languages involved, skills required, background context, clear definition of done, and the impact the contribution will have. Making the impact visible helps participants feel good about their contributions.
* **Task boards**: Organize all tasks in a central location (e.g. a task board) where participants can browse and select tasks. Include a task flowchart with links to all relevant repositories and resources.
* **Access**: Ensure participants have the necessary permissions to repositories and resources before the event to avoid bottlenecks on the day.

### Participation

All engineers in the organization can participate in the hackathon. The participants can be new to InnerSource or InnerSource practitioners already. They can participate individually or as a team. Participating as a team also provides a safe environment; for example, those who are new to InnerSource can team up with InnerSource practitioners.

There could be one or more categories to participate as follows:

* **Contribute to an existing InnerSource project**: InnerSource project owners list features in issues as a prerequisite before the hackathon and participants can contribute during the event.
* **Start a new InnerSource project**: Either start a new project from scratch as InnerSource or make an existing project InnerSource ready.
* **Participate as a mentor**: Participants can also mentor new InnerSource practitioners, providing knowledge transfer or coaching during the event. Having at least one maintainer from every participating project available for Q&A is highly valuable.

### Event Format

The event could be held virtually, in person, or as a hybrid event. A hybrid format allows broader participation but requires extra effort to ensure collaboration across geographically dispersed sites.

A typical event day includes:

1. **Introduction**: Provide an overview of InnerSource for newcomers, introduce the available projects and tasks, and show participants where to find the task boards and resources.
2. **Work session**: Have an open communication channel (e.g. a video call or chat room) where participants can ask questions and get help. Maintainers and organizers should be available throughout.
3. **Closing**: Thank participants, share early results, and distribute a closing survey to capture feedback and metrics.
4. **Follow-up**: Work with participants who did not finish their tasks to close out remaining work. Coordinate with project maintainers to review and merge outstanding pull requests.

The winners and participants should be recognized and acknowledged in a company-wide forum at the end of the hackathon (see [Praise Participants](../2-structured/praise-participants.md)). This is important as it keeps motivating them and more engineers to adopt and practice InnerSource going forward.

Such an event provides a safe space for engineers who want to adopt or contribute to InnerSource but did not have the time and motivation to do it, or for those who kept putting it off due to higher priority work deliverables. From a middle management point of view, 1 or 2 days for such an event is not much of an ask and hence they are more likely to accept.

## Resulting Context

* There is increased adoption of InnerSource by providing such a safe platform to try and experiment combined with recognition and support by the senior leadership and middle management.
* More InnerSource projects are published within the company.
* The InnerSource projects receive more contributions.
* Communities start to form around these InnerSource projects.
* This happens not only during the event but continues after the event too, with the hackathon participants acting as InnerSource ambassadors in their teams.
* It also helps ISPO and OSPO spread awareness about InnerSource best practices quickly, across the whole engineering community in the organization.
* Such an event also gives more exposure to projects that were developed to solve the needs of a specific team but turns out that many teams have similar requirements.

All these help scale InnerSource in the organization.

## Related Patterns

* [Start as an Experiment](../2-structured/start-as-experiment.md) - a hackathon can serve as a low-risk experiment to demonstrate the value of InnerSource to management.
* [Praise Participants](../2-structured/praise-participants.md) - recognizing contributors during and after the hackathon helps sustain momentum.
* [InnerSource Portal](../2-structured/innersource-portal.md) - a portal helps participants discover projects to contribute to during the hackathon, and helps them stay engaged afterward.
* [Dedicated Community Leader](../2-structured/dedicated-community-leader.md) - the hackathon organizers often serve as community leaders who sustain InnerSource adoption after the event.
* [Gig Marketplace](../2-structured/gig-marketplace.md) - a gig marketplace can help match participants with tasks during the hackathon based on their skills and interests.

## Known Instances

* **IKEA** (Ingka Group)
* **The Aerospace Corporation** organized an internal InnerSource contribution festival inspired by open source contribution festivals at conferences like KubeCon/CloudNativeCon. Aerospace is a Federally Funded Research and Development Center (FFRDC) where developers charge time to government contracts, making InnerSource adoption especially challenging because work not embedded in funded tasking does not happen. The event was organized by a software best practices team and held as a hybrid event (virtual and in-person in El Segundo, California). They secured dedicated funding so that all 31 participants across 21 departments could charge their time to the event. Tasks were prepared with project maintainers, documented with clear definitions of done and impact statements, and organized on task boards. At least one maintainer from every participating project was available for Q&A throughout the day. During and shortly after the event, 15 tickets were closed. Notably, one developer used the event to contribute a feature he needed back to an internal library rather than forking it — a direct demonstration of InnerSource solving the "fork storm" problem the company had been experiencing. Two-thirds of participants had never heard of InnerSource before the event, yet 100% of survey respondents agreed that InnerSource would have a positive impact on development and wanted to participate in a future event. Traffic to the company's internal documentation site nearly doubled in the month following the event. See: [Kickstarting InnerSource with a Contribfest](https://www.youtube.com/watch?v=J5KeCHFbnWA) (InnerSource Commons Summit 2025 talk by Tren Baumgarten and Caroline Jones).

## Status

* Structured

## Author(s)

* Shanmugapriya Manoharan

## Acknowledgments

* Tren Baumgarten and Caroline Jones (The Aerospace Corporation) for sharing their experience at the InnerSource Commons Summit.
