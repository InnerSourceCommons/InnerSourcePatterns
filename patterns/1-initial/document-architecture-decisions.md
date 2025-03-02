## Title

Document Architecture Decisions

## Patlet

InnerSource contributors often face challenges in grasping the system's design rationale, which can result in misalignment between maintainers, contributors, and stakeholders — potentially discouraging participation. To enhance decision-making and transparency, we recommend capturing architecture decisions and their consequences in a lightweight, accessible format to streamline onboarding, clarify decisions, and support long-term project sustainability.

## Problem

In an InnerSource project, where the entire organization must remain resilient to the pressures of introducing new features and keeping up with rapid technological advancements, a substantial number of architectural decisions and responses to technical debt are required. This raises critical questions:

- What are the potential impacts of a change?
- What criteria are used to decide between available options?
- What are the best approach to find the right people to decide and implement?

To support an open environment for contributions and make changes easier to implement, contributors need clarity.

- But how can a contributor understand the rationale behind current decisions?
- How can a team effectively discuss the risks of a radical refactor or redesign?

Clear documentation and collaborative discussions are key to addressing these challenges and ensuring the project's adaptability and sustainability.

Projects may come with varying requirements, such as the desire to introduce features that conflict with one another or result in excessive complexity, causing architectural inefficiencies.

Identifying such conflicts or misunderstandings late in the development process—such as after the software is already built—can be extremely costly. These unresolved issues can frustrate all parties involved and harm the collaborative culture within the project. A common scenario where such disagreements arise is when an architectural decision remains unresolved for a long time because the idea's proponent and the project's maintainers fundamentally disagree on whether the proposed change should be implemented at all.

For an InnerSource project this situation happens more frequently when the project is maintained by multiple teams in the company i.e. shared ownership.

## Context

- **Shared ownership by many teams and contributors of the System Architecture**:
  - The architecture is a collective responsibility, involving diverse teams that each own different parts of the system.
- **Overarching design decisions cannot always be made by a central body (e.g., a group of architects)**:
  - Due to time constraints and insufficient domain-specific knowledge, centralized decision-making is impractical in all cases.
- **Decisions need preparation**:
  - Each architectural decision requires careful preparation, considering current and future system requirements, technical constraints, and potential changes.
- **Continuous definition of technical debt**:
  - As you work on the system, you must document and track technical debt, preparing it for potential future changes or refactors.
- **Input from various types of users**:
  - Key stakeholders such as developers, product owners, and product managers provide valuable input on the direction and decisions related to specific projects.
- **Asynchronous decision-making**:
  - Given the diverse stakeholders, decisions must be made asynchronously, avoiding the need for frequent synchronous meetings and instead encouraging discussions via writers' workshops and ongoing documentation.
- **Commitment to Documenting Decisions**:
  - Teams often face challenges in tracking past architectural decisions and technical dependencies, leading to misalignment, redundancy, or repeated discussions.
- **Missing Governance**:
  - When stakeholders or new team members frequently ask, “Why was this decision made?” or struggle to trace past choices, a structured documentation process becomes essential.
  - Organizations seeking clear decision-making frameworks and long-term knowledge continuity will benefit from maintaining well-documented records.

## Forces

- Often, the involved parties want to make decisions promptly, balancing speed with quality.
- Documenting decisions (before implementation begins) is a new skill for many of those involved in the process.
- Typically, only one option is thoroughly discussed or implemented.
- No one discusses the architectural decisions and technical deps with a broader audience.
- The owners continuously evaluate upcoming challenges and strive for excellence, refusing to settle for a "good enough" solution.

## Solutions

A project team or organization chose an ADR and TDR like process for increasing the transparency of our architectural decision making process.

Important elements of the solution are:

- **A description of when to document an ADR/TDR (and when not to)**:
  - Clear guidelines for when architectural decisions or technical debts require formal documentation and when they can be managed informally.
- **A template for ADR/TDR documentation**:
  - Should encourage the author to examine the decision from multiple perspectives (technical, business, user, etc.).
  - Should prompt the author to provide both a high-level, easily accessible overview as well as a detailed, in-depth explanation of the rationale and implications.
- **A well-defined, lightweight process surrounding ADR/TDRs**:
  - How to publish an ADR/TDR and share it with all relevant stakeholders (e.g., via chat message, mailing lists, or project boards).
  - How to collect feedback effectively on the ADR/TDR from diverse stakeholders, ensuring a broad range of input.
  - How to incorporate the feedback and adjust the ADR/TDR as needed.
  - How to move the ADR/TDR towards a conclusion or final decision (e.g., with sign-off from relevant maintainers or decision-makers).
  - The use of appropriate tools, considering that non-technical stakeholders may not have direct access to source control or specialized software. Publish the decsions to a website or wiki.
- **A commitment to iterating on the ADR/TDR templates and process**:
  - Regularly refining the ADR/TDR templates and associated processes based on feedback and the evolving needs of the organization.

## Story

The Challenge of Balancing Decisions and Collaboration

Imagine a complex application composed of multiple interconnected projects, each maintained by a different team. Each team owns its domain of the system and occasionally contributes InnerSource changes to other areas. However, the real challenges begin when larger, cross-cutting changes are proposed. These require collaboration across team boundaries, involving diverse technical perspectives, competing priorities, and varying levels of technical debt in different parts of the system.

In one such scenario, the system's scalability is identified as a critical issue. Several valid options emerge:

- Refactor the existing architecture to improve performance.
- Introduce a new distributed microservices, serverless or go back to your modulith approach.
- Optimize specific bottlenecks incrementally without overhauling the system.
- Experiment with a novel framework to future-proof the application.

### Writers' Workshops for Exploration

To address these possibilities, the teams convene a series of writers' workshops. Here, architects, maintainers, and engineers document the technical debt in their respective areas and outline how each solution impacts the project. These workshops were designed to help committers produce well-documented decisions using structured templates, such as **Architecture Decision Records (ADRs)** and **Technical Debt Records (TDRs)**. By utilizing these templates, the workshops supported a shared understanding of existing trade-offs and supported open, transparent discussions. The ADRs captured the rationale behind architectural choices, while the TDRs helped document the technical debt in various parts of the system. This approach not only ensured a thorough exploration of options but also created a traceable record of decisions, making it easier for all stakeholders to follow the reasoning behind each direction taken.

- [Writers Workshop](https://hillside.net/conferences/plop/235-how-to-hold-a-writers-workshop)

### Building Prototypes Before Committing

Recognizing the importance of implementation experience, the teams decide to build experimental versions of the proposed solutions. This isn't just theoretical planning—each solution is implemented in small, controlled test environments. The teams are empowered to explore how these options integrate into the larger system. Some engineers even build experimental APIs and measure their usability and performance.

### The Debate

Once the experiments are complete, teams come together to analyze the results. The workshops focus on tangible learnings:

- Does the microservices approach simplify deployment, or does it introduce new operational complexities?
- Does refactoring existing code risk destabilizing legacy systems?
- Does the incremental optimization fall short in addressing long-term needs?

Through structured discussions and debates, enriched with real implementation data, teams develop a clearer perspective on the benefits and drawbacks of each option.

### The Decision

Instead of leaving the decision solely to technical leads, the process prioritizes transparency and inclusivity. The maintainers weigh the trade-offs, ensure alignment with the system’s strategic goals, and incorporate feedback from contributors. Ultimately, the team selects a hybrid approach—refactoring the architecture's core areas while experimenting with microservices for future scalability.

### The Outcome

This iterative process not only solves the scalability issue but strengthens the project's collaboration culture. Engineers feel more empowered, as they see their contributions directly shaping the architecture. The documented technical debt and decision-making process now serve as a reference point for future changes, paving the way for an adaptive, innovative development environment.

This story underscores the value of combining technical rigor, experimentation, and collaboration to make thoughtful architectural decisions while embracing the complexity of modern software projects.

This approach leads to greater innovation, closer collaboration, and the widespread dissemination of knowledge across the organization. Achieving this requires full buy-in from all disciplines at every level, and most importantly, an environment of psychological safety where individuals feel comfortable proposing and debating ideas openly. This culture of open dialogue and shared decision-making is the foundation for creating impactful solutions.

Like any process, this requires ongoing refinement to maintain its effectiveness. Regular feedback may reveal areas for improvement, such as adjustments to the ADRs- and TDRs-templates or the decision-making process itself, ensuring that it remains inclusive, collaborative, and adaptive. By supporting an environment of continuous learning and improvement, a team not only enhance the decisions they make today but also create a sustainable foundation for future growth and innovation.

### Architecture Decision Record (ADR) Tooling

Architecture Decision Records (ADRs) provide a structured way to document design decisions and their rationale, ensuring clarity and continuity in software projects. Several tools facilitate the creation and management of ADRs, making it easier for teams to track and share their architectural choices.

Key ADR Tools:

- [Michael Nygard’s ADR Approach](https://cognitect.com/blog/2011/11/15/documenting-architecture-decisions)
  - Introduces the concept of ADRs and their benefits in maintaining architectural transparency.
- [ADR-Tools (adr/adr-tools)](https://github.com/adr/adr-tools)
  - A simple command-line toolset to create and manage ADRs in Markdown format.
- [ADR-Tools by Nat Pryce](https://github.com/npryce/adr-tools)
  - Another CLI-based ADR tool, helping teams efficiently document decisions in Markdown.
- [ADR-Tools from Christoph Kappel - asciidoc](https://github.com/unexist/adr-tools)
  - Similar to the previous tools but supports AsciiDoc format for enhanced readability.
- [Record-Tools by Christoph Kappel](https://github.com/unexist/record-tools)
  - An extended version of ADR tools and support for TDRs, also based on AsciiDoc, enabling better integration with documentation workflows.
- [mADR - markdown](https://adr.github.io/madr/)
  – A structured Markdown-based ADR template that standardizes documentation across projects.

How to Use ADR Tools:

- Choose a Format
  – Select Markdown or AsciiDoc based on your team's documentation preferences.
- Set Up the Tool
  – Install one of the ADR tools (e.g., adr-tools or mADR) in your repository.
- Create ADRs or TDRs
  – Use CLI commands to generate new ADRs, document architectural decisions, and track changes over time.
- Review and Update
  - Maintain ADRs by updating them when decisions evolve or new insights emerge.
- Share and Collaborate
  – Store ADRs in version control (e.g., Git) to facilitate team discussions and long-term knowledge retention.
  - Publish your **Record Catalog** on a website or wiki and actively share its content through your chat systems.

By leveraging ADR tooling, teams can ensure well-documented architectural decisions, improve collaboration, and maintain software sustainability over time.

## Resulting Context

Implementing an ADR/TDR-like process has proven to be valuable, as it makes architecture decision-making more transparent for everyone and ensures that all voices are heard.

Observable positive effects:

- **Democratizing architectural decision-making** to ensure that changes impacting multiple teams are inclusive, while also reducing the burden on team leads.
- **Facilitating open, asynchronous communication** across teams and geographies, enhancing accessibility and collaboration. Contribute to ADR and TDR documents and engage in discussions to invite broader participation through writing workshops.
- **Empowering individuals and teams** to take ownership of architectural decisions, enabling large-scale organizational change.
- **Establishing a reliable record** of architectural decisions and technical debt, serving as a valuable reference for context and future decision-making.
- **Maximizing the impact of experienced engineers** by enabling asynchronous and remote contributions, reducing the need for synchronous meetings.
- **Standardizing terminology** by explicitly defining key concepts (e.g., "system tests") to ensure a shared understanding across teams.
- **Aligning processes** by clearly documenting workflows such as the out-of-hours support procedure, promoting consistency and clarity.
- **Enhancing clarity** of thought through documentation, encouraging authors to critically assess and refine their reasoning behind architectural decisions.

The ADR/TDR approach also carries risks that a team want to acknowledge:

- **It doesn’t always work!** Some people might still challenge a decision made through the ADR/TDR process. However, having a decision documented in writing is still valuable in these situations because it provides a clear record of when and why a decision was made.
- **Pre-documenting design proposals (architecture, protocols, etc.) can resemble waterfall-like design**, which may not fit the iterative development model preferred by many teams. A team must remember the Agile principle: “Working software over comprehensive documentation.” Therefore, the ADR/TDR process should be as lightweight as possible to avoid unnecessary overhead.
- **The ADR/TDR can become too long and cumbersome**, leading to long comment threads and debates. In these cases, a team might complement the process with synchronous communication, such as working groups or in-person meetings. Still, time is saved by allowing participants to review the ADR/TDR before the meeting rather than explaining everything during the discussion.

## Rationale

InnerSource projects that want to achieve high participation rates and make the best possible decisions for everybody involved need to find ways to create participatory format for all system components, tools and workflows. Michael Nygard announced 2011 the idea to document architecture decision with a simple markdown template and shared it with a simple git project. Today this **ADR tool** is well proven and a many of teams around the globe use **Architecture Desicion Records (ADRs)** to document there design desicions.

Another important aspect of defining architectural decisions is documenting consequences. In Technical Debt Records, Dr. Michael Stal explores the systematic tracking and management of technical debt in software development using **Technical Debt Records (TDRs)**. Similar to how Architecture Design Records (ADRs) capture architectural decisions, TDRs document trade-offs in code quality made to accelerate delivery. The TDRs provides a detailed template for documenting technical debt, and Christoph Kappel  introduces a record tool to streamline the process of ADRs and TDRs.

## Known Instances

- **Spotify** - [How use Spotify ADRs](https://engineering.atspotify.com/2020/04/when-should-i-write-an-architecture-decision-record/)
- **SAP** - [Cross Product Architecture](https://community.sap.com/t5/technology-blogs-by-sap/cross-product-architecture-embracing-conway-s-law-for-better-software/ba-p/13648600)

## Status

- Initial

## Author(s)

* Peter Rossbach
* Christoph Kappel

## Acknowledgments

- [Michael Nygards ADRs Idea](https://cognitect.com/blog/2011/11/15/documenting-architecture-decisions)

## Related InnerSource Patterns

- [Transparent Cross-Team Decision Making using RFCs](../2-structured/transparent-cross-team-decision-making-using-rfcs.md)
- [Common Requirements](../2-structured/common-requirements.md)

## Related Material

- [ADR Hub](https://adr.github.io/)
- [ADRs at Google Cloud](https://cloud.google.com/architecture/architecture-decision-records)
- [Amazon: AWS Prescriptive Guidance: ADR Process](https://docs.aws.amazon.com/prescriptive-guidance/latest/architectural-decision-records/welcome.html)
- [Architectural Decision](https://en.wikipedia.org/wiki/Architectural_decision)
- [Architectural Decision Records](https://adr.github.io)
- [Architectural Decisions — The Making Of](https://ozimmer.ch/practices/2020/04/27/ArchitectureDecisionMaking.html)
- [DeciCollab - System Architecture Decision Collaboration](https://github.com/rossbachp/DeciCollab)
- [GitHub: ADR GitHub organization](https://adr.github.io/)
- [Learnings from using ADR in a real project](https://blog.unexist.dev/documentation/myself/2021/08/18/learnings-from-using-adr-in-a-real-project.html)
- [Joel Parker Templates to ADR](https://github.com/joelparkerhenderson/architecture-decision-record)
- [How to write effective documentation for your open source project?](https://opensource.com/article/20/3/documentation)
- [RedHat: Why you should use ADRs](https://www.redhat.com/en/blog/architecture-decision-records)
- [Software Architecture Documentation Starter with arc42 and C4 Model](https://github.com/bitsmuggler/arc42-c4-software-architecture-documentation-example)
- [Technical Debt Records](https://github.com/ms1963/TechnicalDebtRecords)
- [Technical Debt Records Idea](https://www.heise.de/blog/Technical-Debt-Records-Dokumentation-technischer-Schulden-9876115.html)
- [Requests for Comments](https://en.wikipedia.org/wiki/Request_for_Comments)
- [Using Architecture Decision Records in Open Source Projects—An MSR Study on GitHub](https://ieeexplore.ieee.org/document/10155430)
- [Y-Statements](https://medium.com/olzzio/y-statements-10eb07b5a177)
- [30-years-of-rfcs](https://www.rfc-editor.org/rfc/rfc2555.txt)
