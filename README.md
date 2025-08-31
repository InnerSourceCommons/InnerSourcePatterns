[![Check Links](https://github.com/InnerSourceCommons/InnerSourcePatterns/actions/workflows/link-checker.yml/badge.svg)](https://github.com/InnerSourceCommons/InnerSourcePatterns/actions/workflows/link-checker.yml)
[![Pattern Syntax Validation](https://github.com/InnerSourceCommons/InnerSourcePatterns/actions/workflows/lint-patterns.yml/badge.svg)](https://github.com/InnerSourceCommons/InnerSourcePatterns/actions/workflows/lint-patterns.yml)
[![Join our Slack!](https://img.shields.io/static/v1?message=join%20chat&color=9cf&logo=slack&label=slack)](https://innersourcecommons.org/slack)

# InnerSource Patterns

<a href="https://patterns.innersourcecommons.org">
<img align="right" src="book/en/innersource-patterns-book-cover.jpg" title="The InnerSource Patterns book" alt="The InnerSource Patterns book" width="30%"></a>

This repository contains the InnerSource Patterns collected by the [InnerSource Commons][isc-website]. These patterns are InnerSource best practices codified in a specific format to make it easy to understand, evaluate, and reuse them.

If you are here for the first time, you may start by reading our most mature patterns, published at [patterns.innersourcecommons.org](https://patterns.innersourcecommons.org).

Below you find [what a pattern is](#what-are-innersource-patterns), a [list of known patterns](#list-of-patterns), and [how to use these patterns](#how-can-you-use-innersource-patterns) in your organization.

Are you already using InnerSource in your company? If you would like to share your experiences with the world, we would love to [welcome your contributions](#how-to-contribute)!

[isc-website]: http://innersourcecommons.org

## Mission Statement

Our mission

- Collect and document best practices on how to do InnerSource - in the form of patterns
- Publish the most mature patterns as an ebook

## List of Patterns

 All known patterns (grouped into three [maturity levels](./meta/contributor-handbook.md#maturity-levels)) are as follows:

### Maturity Level 3: Validated

*Note: We don't have patterns in this stage yet, but are [actively working on leveling up patterns](https://github.com/InnerSourceCommons/InnerSourcePatterns/issues/186) into this maturity.*

### Maturity Level 2: Structured

* [30 Day Warranty](patterns/2-structured/30-day-warranty.md) - *When accepting contributions from outside of your own team, there is a natural aversion to taking responsibility for code not written by the team itself. Through the 30 Day Warranty the contributing team consents to provide bug fixes to the receiving team, which will increase the level of trust between both teams and makes it more likely that contributions get accepted.*
* [Common Requirements](patterns/2-structured/common-requirements.md) - *Common code in a shared repository isn't meeting the needs of all the project-teams that want to use it; this is solved through requirements alignment and refactoring.*
* [Contracted Contributor](patterns/2-structured/contracted-contributor.md) - *Associates wanting to contribute to InnerSource are discouraged from doing so by their line management. Relief is provided by formal contracts and agreements.*
* [Dedicated Community Leader](patterns/2-structured/dedicated-community-leader.md) - *Select people with both communications and technical skills to lead the communities to ensure success in starting an InnerSource initiative.*
* [Gig Marketplace](patterns/2-structured/gig-marketplace.md) - *Establish a marketplace by creating an intranet website that lists specific InnerSource project needs as "Gigs" with explicit time and skill requirements. This will enable managers to better understand their employee’s time commitment and professional benefits thereby increasing the likelihood of garnering approval to make InnerSource contributions.*
* [Maturity Model](patterns/2-structured/maturity-model.md) - *Teams have started adopting InnerSource. The practice is spreading to multiple departments. Understanding of what constitutes an InnerSource project are wide spread though. The solution is to provide a maturity model to allow for teams to go through a self check and discover patterns and practices that they are not yet aware of.*
* [InnerSource License](patterns/2-structured/innersource-license.md) - *Two legal entities that belong to the same organization want to share software source code with each other but they are concerned about the implications in terms of legal liabilities or cross-company accounting. An InnerSource License provides a reusable legal framework for the sharing of source code within the organization. This opens up new collaboration options, and makes the rights and obligations of the involved legal entities explicit.*
* [InnerSource Portal](patterns/2-structured/innersource-portal.md) - *Potential contributors cannot easily discover InnerSource projects that they are interested in. By creating an intranet website that indexes all available InnerSource project information you enable contributors to learn about projects that might interest them and InnerSource project owners to attract an outside audience.*
* [Praise Participants](patterns/2-structured/praise-participants.md) - *Thank contributors effectively to engender further engagement from them and to encourage others to contribute*
* [Repository Activity Score](patterns/2-structured/repository-activity-score.md) - *The repository activity score is a numeric value that represents the (GitHub) activity of an InnerSource project.*
* [Review Committee](patterns/2-structured/review-committee.md) - *The InnerSource working model is a radical departure from more traditional approaches, for developers and managers alike. By establishing a review committee as an interface between the InnerSource initiative and all senior managers of business units participating in it, the latter are more likely to familiarise themselves with the initiative and support it, as it affords them a certain level of oversight and control without fostering micromanagement.*
* [Service vs. Library](patterns/2-structured/service-vs-library.md) - *Teams in a DevOps environment may be reluctant to work across team boundaries on common code bases due to ambiguity over who will be responsible for responding to service downtime. The solution is to realize that often it's possible to either deploy the same service in independent environments with separate escalation chains in the event of service downtime or factor a lot of shared code out into one library and collaborate on that.*
* [Trusted Committer](patterns/2-structured/trusted-committer.md) - *Many InnerSource projects will find themselves in a situation where they consistently receive feedback, features, and bug-fixes from contributors. In these situations project maintainers seek ways to recognize and reward the work of the contributor above and beyond single contributions.*
* [Standard Base Documentation](patterns/2-structured/base-documentation.md) - *New contributors to an InnerSource project have a hard time figuring out who maintains the project, what to work on, and how to contribute. Providing documentation in standard files like README.md/CONTRIBUTING.md enables a self service process for new contributors, so that they can find the answers to the most common questions on their own.*
* [Issue Tracker Use Cases](patterns/2-structured/issue-tracker.md) - *The InnerSource host team fails to make not only plans and progress but also context for changes transparent. This is solved by increasing the use cases for the project issue tracker to also serve brainstorming, implementation discussion, and feature design.*
* [Communication Tooling](patterns/2-structured/communication-tooling.md) - *The users of an InnerSource project have trouble getting help and getting in touch with the host team. By consistently using asynchronous communication tooling, the project makes discussions visible, archived and searchable, leading to an improved level of support for users.*
* [Cross-Team Project Valuation](patterns/2-structured/crossteam-project-valuation.md) - *It's hard to sell the value of cross-team InnerSource projects that don't provide a direct impact on company revenue. Here's a data-driven way to represent your project that both articulates its value and amplifies it.*
* [Transparent Cross-Team Decision Making using RFCs](patterns/2-structured/transparent-cross-team-decision-making-using-rfcs.md) - *InnerSource projects that want to achieve high participation rates and make the best possible decisions for everybody involved need to find ways to create participatory systems throughout the full software lifecycle. Publishing internal Requests for Comments (RFCs) documents allows for discussions early on in the design process, and increases the chances to build solutions with a high degree of commitment from all involved parties.*
* [Start as an Experiment](patterns/2-structured/start-as-experiment.md) - *Start your InnerSource initiative as a time limited experiment to make it easier for managers unfamiliar with InnerSource to endorse and support the initiative.*
* [Core Team](patterns/2-structured/core-team.md) - *Even when an InnerSource project is widely needed, contributions and usage may be hindered because the project is difficult to work with. Establish a core team that is dedicated to take care of the project's fundamental items. Their work enables contributors to add and use the features that provide value to their scenarios.*
* [Document your Guiding Principles](patterns/2-structured/document-your-guiding-principles.md) - *The usual InnerSource explanation of "applying open source best practices inside an organisation" does not work well with people lacking an open source background. As a remedy the most important principles of InnerSource get documented and published widely.*
* [Extensions for Sustainable Growth](/patterns/2-structured/extensions-for-sustainable-growth.md) - *An InnerSource project is receiving too many contributions, making maintenance difficult. By offering an extension mechanism outside of the core project, the maintainers enable scaling of project capabilities with minimal cost and maintenance overhead.*
* [Standard Release Process](patterns/2-structured/release-process.md) - *Teams may hesitate to adopt an InnerSource project if they are unsure of its maturity. To address this, consistent release notes and published artifacts are crucial. These practices showcase a strong dedication to the project, instilling confidence and assuring users of ongoing commitment to sustainable and well-managed software.*
* [Group Support](patterns/2-structured/group-support.md) - *What happens if a team or individual no longer supports an InnerSource project? Keep the project alive by forming a group of interested individuals.*
* [Explicit Governance Levels](patterns/2-structured/governance-levels.md) - *Different teams within an organization use InnerSource practices in varying ways, leading to confusion and inefficiencies due to inconsistent expectations of collaboration and contribution rights. Establish centrally documented governance levels that define the extent of influence contributing teams can have on a project, improving clarity for contributors and host teams alike.*

### Maturity Level 1: Initial

* [Modular Code](patterns/1-initial/modular-code.md) - *The lack of modularization in the software architecture prevents reuseability, and with that the ability to reap the benefits of InnerSource. By helping the teams to understand the benefits of modularization, and making time to work towards that goal, more InnerSource collaboration can happen and the software architecture overall can be improved.*
* [Improve Findability](patterns/1-initial/improve-findability.md) - *People can't find the internally developed solutions that they need due to poor naming conventions. This causes frustration in finding InnerSource solutions and a reduction in code reuse.*
* [Overcoming Project Management Time Pressures](patterns/1-initial/overcoming-project-management-time-pressures.md) - *Project management believes timeline pressure and commitments on feature content does not allow for developers to spend the time needed to develop shareable code and provide support.*
* [Introducing Metrics in InnerSource](patterns/1-initial/introducing-metrics-in-innersource.md) - *Involve all stakeholders in designing and interpreting metrics to measure the current status in terms of health and performance of the InnerSource initiative.*
* [Shared Code Repo Different from Build Repo](patterns/1-initial/shared-code-repo-different-from-build-repo.md) - *Deal with the overhead of having shared code in a separate repository that isn't the same as the project-specific one that is tied to production builds.*
* [InnerSource Portal - Hygiene](patterns/1-initial/innersource-portal-hygiene.md) - *Allow generation of an official badge for projects intending to be recognized as InnerSource project within your company.*
* [Reluctance to Receive Contributions](patterns/1-initial/reluctance-to-accept-contributions.md) - *Core owner of shared asset is reluctant to take contributions due to the required maintenance that comes with them. Summary pattern that lays out four children patterns with three to be defined.*
* [Include Product Owners](patterns/1-initial/include-product-owners.md) - *Engaging and educating Product Owners about InnerSource can help them modify their actions (e.g., in the space of KPIs) to help InnerSource collaboration work better.*
* [Assisted Compliance](patterns/1-initial/assisted_compliance.md) - *Helping repo owners be compliant by writing their CONTRIBUTING.md for them as a pull request.*
* [Open Source Trumps InnerSource](patterns/1-initial/open-source-trumps-innersource.md) - *Developers disregard InnerSource projects because they consider open source projects to be superior. Introducing a required evaluation of InnerSource projects before choosing an open source project increases the likelihood of the InnerSource projects to be adopted.*
* [Governance Level Guided Project Setup](/patterns/1-initial/governance-based-project-setup.md) - *Before publishing their first InnerSource project, a team wants to choose an appropriate Governance Level but is unsure about the impact of the different levels on their daily doing. A dedicated list of resources (best practices, recommended patterns, target maturity levels) provides specific guidance to the team and helps them to make an educated decision.*
* [Contained InnerSource](patterns/1-initial/contained-innersource.md) - *Apply InnerSource methods to facilitate collaboration in a cross-divisional project but don't invest in soliciting contributions from outside of that project.*
* [Good First Project](patterns/1-initial/good-first-project.md) - *An InnerSource program has been launched at an organization, and to get off to a successful start it requires some good first projects that lend themselves to InnerSource-style development. Assessing the InnerSource-readiness (fitness) of the candidate projects can help in selecting projects that have the potential to help demonstrate the power of InnerSource.*
* [InnerSource Guidance Group](patterns/1-initial/innersource-guidance-group.md) - *A highly divergent set of development standards in different teams can slow down collaboration between these teams. A InnerSource Guidance Group that establishes broad governance and behavioral guidelines can help to reduce these frictions.*
* [Unified Source Code Inventory](patterns/1-initial/source-code-inventory.md) - *In a large organization with different legal entities is often hard to get full visibility into all software assets, in particular all source code. This situation reduces the opportunities to increase business value and keep liability costs, such as software maintenance, under control across the organization as a whole. An organization-level source code inventory addresses these issues while exploiting opportunities to identify and support valuable InnerSource assets.*
* [Explicit Shared Ownership](patterns/1-initial/explicit-shared-ownership.md) - *A software component that several teams depend on has grown to the point where owners are no longer capable of taking full ownership. There is confusion who to involve for changes. Sharing ownership explicitly and making expected behavior visible removes ambiguity. Writing a contributions document creates a natural way to evolve ownership.*
* [Overcoming the Not-Invented-Here Mindset](/patterns/1-initial/not-invented-here.md) - *Perfectly good solutions are being rejected because of "Not Invented Here" (NIH). Engineers and their managers will choose to implement functionality themselves first, even if an alternative exists. A shift towards a culture of "Proudly Found Elsewhere" can help reduce the negative impact of NIH.*
* [Balancing Openness and Security](/patterns/1-initial/balancing-openness-and-security.md) - *While InnerSource flourishes in environments with a high degree of shared code, Security/Legal prefers the limitation of source code access to only those that need it. By making Security/Legal part of the team, introducing explicit sharing levels and security policies for shared repositories, as well as defining what qualifies as sensitive information, code sharing can be facilitated while minimizing the associated risks.*
* [Crossing the InnerSource Chasm](/patterns/1-initial/crossing-chasm.md) - *Early InnerSource experiments have been successful. Methods that were successful convincing early teams stop working though when scaling the initiative. This chasm can be crossed by using different methods to reach people at different stages of the innovation curve.*
* [Transitioning Contractor Code to InnerSource Model](/patterns/1-initial/transitioning-contractor-code-to-innersource-model.md) - *Contract developers are often not motivated to engage in InnerSource activities, which may be beyond the scope of their contract. This pattern describes how you can focus on transitioning the contractor project after the fact to an InnerSource project by setting expectations for specific InnerSource-related deliverables as part of the overall project delivery.*
* [Incubator Pipeline](/patterns/1-initial/incubator-pipeline.md) - *A team maintaining a widely shared code library wants to accept contributions from other teams, without lowering the overall quality of their library. Therefore the shared library team uses an incubator pipeline to set a lower bar for contributions to enter and a higher bar to exit and become a top-level unit in the library.*
* [InnerSource Customer Interview Questions](/patterns/1-initial/innersource-customer-interview-questions.md) - *An organization has decided to create an InnerSource program but are unsure which issues they should address first. Using a customer interview will help evaluate pain points across the organization, to prioritize the areas where InnerSource will have the biggest positive impact.*
* [Creating an InnerSource Strategy](/patterns/1-initial/creating_an_innersource_strategy.md) - *Sometimes, it is difficult to convince people of the relevance of InnerSource for your organization and/or to get support from management. Creating an InnerSource strategy, that connects your InnerSource approach and activities to the goals and the overall strategy of your organization, can help in this regard.*
* [Code of Conduct](/patterns/1-initial/code-of-conduct.md) - *Communications and interactions between collaborators are rude, not inclusive or offensive, harming and increasing the discussions without any value added. A Code of Conduct provides guidelines for establishing rules and expectations regarding behavior and interactions within the community to build stronger levels of collaboration.*
* [Trusted Committer and Contributor Retrospectives](/patterns/1-initial/cross-team-retrospectives.md) - *A host team working with contributors outside of their own line of management constantly runs into misunderstandings. As a result collaboration becomes brittle and frustrating. Setting aside time for regular retrospectives for the InnerSource team consisting of trusted committers and contributors can help make communication smooth.*
* [InnerSource Hackathon](/patterns/1-initial/innersource-hackathon.md) - *In a company, initially only InnerSource enthusiasts are interested and practicing InnerSource during the early stages of InnerSource adoption; not all engineering teams are willing or have enough time and resources to adopt InnerSource. In this scenario, it is good to provide a safe space to try and adopt InnerSource through an InnerSource Hackathon event within the company.*
* [Managing Capacity for Reviewing Contributions](/patterns/1-initial/capacity-for-contributions.md) - *Reviewing InnerSource contributions takes time and effort. This should be reflected in capacity planning, especially for larger contributions. Expectations and available capacity should be transparent so that contributors understand when their contributions will be reviewed and, if accepted, released.*
* [InnerSource Ambassadors](/patterns/1-initial/innersource-ambassador.md) - *When driving InnerSource adoption through a large, decentralized organization it is hard to understand and address the local challenges that come up in different departments and regions. Local volunteers, called InnerSource Ambassadors, provide localized support by promoting InnerSource principles and acting as a communication bridge between their teams and the ISPO.*
* [Circle Communities](/patterns/1-initial/circle-communities.md) - *InnerSource adoption is slow in organizations due to limited understanding, engagement, and contextual relevance. Circle Communities address this by fostering synchronous conversations that build connections, close knowledge gaps, and cultivate collaboration and continuous learning.*
* [Internal Developer Platform](/patterns/1-initial/internal-developer-platform.md) - *As InnerSource adoption increases throughout an organisation, it is not unusual that project teams start to face inefficiencies in scaling their efforts due to fragmented tooling, environments, and workflows. An Internal Developer Platform (IDP) provides a way to tackle this type of challenges through a centralized, self-service system that standardizes development environments and integrates tools to enhance consistency, collaboration, and developer productivity.*
* [Document Architecture Decisions](/patterns/1-initial/document-architecture-decisions.md) - *InnerSource contributors often face challenges in grasping the system's design rationale, which can result in misalignment between maintainers, contributors, and stakeholders — potentially discouraging participation. To enhance decision-making and transparency, we recommend capturing architecture decisions and their consequences in a lightweight, accessible format to streamline onboarding, clarify decisions, and support long-term project sustainability.*
* [InnerSource Incentives and Disincentives](/patterns/1-initial/incentives-and-disincentives.md) - *Lack of awareness for incentives as well well as disincentives for InnerSource contribution decrease the chances of an InnerSource project receiving contributions; this is addressed by sharing a comprehensive list of potential incentives and disincentives.*
* [Walk the InnerSource talk](/patterns/1-initial/walk-the-innersource-talk.md) - *Teams across the organization are encouraged to adopt InnerSource principles such as working openly, sharing code, and collaborating transparently. But, if the team behind the InnerSource initiative doesn’t follow these practices themselves, it undermines credibility and adoption. Therefore, this team should lead by example: documenting their decisions as code, working in the open, and treating their work as an InnerSource project to build trust and show others how it’s done.*
* [Require InnerSource before Open Source](/patterns/1-initial/innersource-before-open-source.md) - *Maintaining and managing open source projects can be challenging for organizations, due to a lack of internal infrastructure and people with the knowledge of the required collaboration practices. By requiring projects to be InnerSource before becoming open source, teams have time to establish the necessary internal support, governance, and collaboration skills needed for successful community engagement.*
* [AI Code Generation Context](patterns/1-initial/ai-code-generation-context.md) - *AI tools generate code that diverges from project standards and architectural patterns. Provide an AI Code Generation Context within the repositories to guide AI tools in producing contributions that align with existing project conventions, reducing review friction and maintaining code consistency.*

<!--
NOTE: The 'Initial' Patterns below don't have a Patlet yet, which is essential for readers to quickly browse our patterns.
This is why we keep these patterns at the bottom of the list.
-->

* [Overcome Acquisition Based Silos - Developers](patterns/1-initial/overcome-acquisition-based-silos-developer.md)
* [Overcome Acquisition Based Silos - Managers](patterns/1-initial/overcome-acquisition-based-silos-manager.md)
* [Discover Your InnerSource](patterns/1-initial/discover-your-innersource.md)
* [Junkyard Styled Inner Sourcing](patterns/1-initial/junkyard-styled-innersourcing.md)
* [Incentive Alignment](patterns/1-initial/developer-incentive-alignment-for-innersource-contribution.md)
* [Change the Developers Mindset](patterns/1-initial/change-the-developers-mindset.md)
* [Change the Middle-Management Mindset](patterns/1-initial/change-the-middle-management-mindset.md)
* [Share Your Code to Get More Done - Likely Contributors Variant](patterns/1-initial/share-your-code-to-get-more-done.md)
* [Code Consumers](patterns/1-initial/code-consumers.md)
* [Explaining InnerSource to Management by anchoring it to Agile / DevOps / Lean](patterns/1-initial/concept-anchor.md)
* [Culture Change through Hiring](patterns/1-initial/cultural-change-through-hiring.md)

#### Donuts (needing a solution)

* [How to Defeat the Hierarchical Constraints](patterns/1-initial/defeat-hierarchical-constraints.md)
* [Organizational Mindset Change](patterns/1-initial/organizational-mindset-change.md)
* [Bad Weather For Liftoff](patterns/1-initial/bad-weather-for-liftoff.md)
* [Incentive mechanisms to foster voluntary contribution](patterns/1-initial/incentive-mechanisms-for-voluntary-contribution.md)
* [Duplicated Projects](patterns/1-initial/duplicated-projects.md)
* [Sustainable InnerSource Program](patterns/1-initial/sustainable-innersource-program.md)

## What are InnerSource Patterns?

Patterns are a way of describing a repeatable, proven solution to a problem within a context. Patterns follow a simple form that assists you during the implementation of a solution to understand the constraints of the problem, understand the forces you need to balance, and the resulting context - the situation created by applying the solution.

Patterns can provide a way for the InnerSource Commons participants to concisely share information, improving the practice of InnerSource. Patterns are divided into Title, Problem Statement, Context, Forces, and Solutions as their main sections.

* [What are patterns?](https://bit.ly/innersource_patterns_videos) - Watch a set of 2-5 min videos explaining InnerSource Patterns
* [Pattern Discussion Webinar](https://youtu.be/i-0IVhfRVFU?t=1479) - We held a webinar 2017-03-16 to have a live discussion on a donut pattern (go to [24:40](https://youtu.be/i-0IVhfRVFU?t=1479) for the discussion). This is an illustration of the review process we follow. Also see the [June 1, 2017 O'Reilly Webinar on InnerSource Patterns](http://www.oreilly.com/pub/e/3884).
* [Pattern Template File](meta/pattern-template.md) - View a skeleton InnerSource pattern to get an idea on what goes into a new pattern!
* [Introduction to InnerSource Patterns (2016 Fall Summit)](https://drive.google.com/open?id=0B7_9iQb93uBQbnlkdHNuUGhpTXc) - *Tim Yao and Padma Sudarsan* (PDF). Detailed pattern background and examples -- Get a detailed understanding of why and how to interact with our patterns. Also see the [Introduction to InnerSource Patterns (2017 Fall Summit)](https://drive.google.com/open?id=0B7_9iQb93uBQWmYwMFpyaGh4OFU) *Tim Yao and Bob Hanmer* (PDF).
* A scientific look at how to write patterns: [A pattern language for pattern writing](http://hillside.net/index.php/a-pattern-language-for-pattern-writing), Meszaros and Doble

## How can you use InnerSource Patterns?

Patterns must be used in a thoughtful manner. They cannot be blindly applied. In most cases, you will need to adapt the given solution to your own situation. However, the information found in the pattern, and defining the context (immovable constraints) and forces (constraints that can be changed and balanced against each other), will help you adapt. In addition, you need to determine if there are further constraints (company context and company forces) that apply to your company/organization that must be added to the pattern. These additional constraints may require additional solution steps to be applied.

The pattern form is useful for describing proven patterns but it can also be used for *brainstorming solutions* where patterns have not yet been established, since the form provides a structured way of thinking about a problem. You could also create a *donut pattern* (filling in the problem, context, forces and resulting context fields but leaving the solution blank) as a way of asking the InnerSource Commons community for help (to find a proven solution or to brainstorm things to try).

## How to Contribute?

We welcome your contribution - be it small or huge! To learn more about how you can become a contributor, please see our [CONTRIBUTING.md](CONTRIBUTING.md) file.

## Licensing

![Creative Commons License](https://i.creativecommons.org/l/by-sa/4.0/88x31.png)

InnerSourcePatterns by [InnerSourceCommons.org](http://innersourcecommons.org) is licensed under a [Creative Commons Attribution-ShareAlike 4.0 International](http://creativecommons.org/licenses/by-sa/4.0/) License.
