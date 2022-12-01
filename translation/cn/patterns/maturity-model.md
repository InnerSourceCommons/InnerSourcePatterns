## Title

Maturity Model

## Patlet

Teams have started adopting InnerSource. The practice is spreading to multiple
departments. However, the understanding of what constitutes an InnerSource
project varies. The solution is to provide a maturity model to allow for teams
to go through a self check and discover patterns and practices that they are not
yet aware of.

## Problem

When InnerSource adoption in an enterprise starts to increase, individual
mentoring of each project through one evangelist becomes unfeasible. Also, more
and more people are gaining at least a basic understanding of what it means to
work in an InnerSource project. Looking at all InnerSource projects though the
depth of understanding for the concept will diverge. Teams may not be aware of
proven patterns that would help them move to the next level and solve issues and
pain points that they are dealing with.

## Context

Several teams have started adopting InnerSource practices. The exact level of
understanding of the practice diverges between teams. The exact problems teams
run into diverge depending on the context and working environment of each team.
As a result the definition of what are important best practices in an
InnerSource project differs depending on each team.

## Forces

Teams sharing InnerSource learnings run into misunderstandings as they are not
aware of their respective level of InnerSource adoption.

Teams believe that "it's all about migrating to a shared software development
[forge](https://en.wikipedia.org/wiki/Forge_%28software%29)" (GitLab, GitHub, or Bitbucket being well known examples of such forges).

Teams are not aware of best practices that would help them solve issues that
they run into in their daily doing.

## Solution

Ask teams to self assess against the proposed maturity model.

### Transparency

**Plans & Products**

InnerSource project benefit from planning being transparent across the organization by enabling stakeholders to better understand decisions and influence them in a way that can be followed by others.

* PP-0: Individuals and teams do not regularly disclose their plans or products to multiple stakeholders. No formal actions exists at the organization.
* PP-1: Individuals and teams give visibility to their plans or products to multiple stakeholders, before they are started. Shared roadmap.
* PP-2: There are already shared roadmaps with clear guidelines and contribution rules where stakeholders can provide feedback. However, this is not standardized across the organization and not all of the projects provide this info.
* PP-3: Roadmaps are shared by default and there is a standard process and homogeneous way to do this across the organization at the level of each InnerSource project. This contains clear rules to contribute and influence in the roadmap.

**Development Process & Tools**

InnerSource projects thrive when contributors become active and participate. As a result, making contribution easier should be balanced with pure technical goals.

* DP-0: Each team follows its own development process and tools. They are not defined to share knowledge and artifacts outside development team. Siloed development teams.
* DP-1: Development teams use shared code repositories, internally. Some teams develop their own CI process, using non corporate or standard CI tools. There is no code review process defined, although some projects teams do it internally.
* DP-2: The organization sponsors and promotes a shared repository for collective knowledge. Some teams develop their own CI process, using corporate CI tools. There are CI environments. Code review process defined, and used by some projects. Sometimes code review is done by outside team members.
* DP-3: Most teams develop their own CI process, using corporate CI tools. There are CI environments. Code review process defined, and used. Code review is done by both, internal and external team members.

**Decisions**

In order to motivate colleagues to contribute work outside of their core team they need visibility into the decision-making process of the host project - but also feel that their voices are being heard and valued.

* DC-0: Decision-makers often intentionally or accidentally withhold data and resources related to project decisions.
* DC-1: Materials that are part of decision-making practices become available for review after decisions are finalized.
* DC-2: People feel like they know about—and are helping to shape—most (but not all) important decisions as those decisions are unfolding. Materials that are part of decision-making practices are available at defined project milestones.
* DC-3: People feel like they are a part of a shared, standard process for collective decision-making that the organization endorses. Materials that are part of decision-making practices are continuously accessible during work processes.

**Helpful Resources**

In order to attract contributors helpful supporting material needs to be easily accessible.

* RS-0: Individuals and teams neither contribute to nor draw upon a shared repository of knowledge.
* RS-1: Individuals and teams release project materials for review internally, after they've finished their work. Individuals and teams share resources, but in disconnected, fragmented, or individualized/siloed systems or repositories. Individuals and teams share resources, but there is no commonly expressed or shared understanding of the criteria used to determine whether information is sensitive or not. Do not "share thinking on others".
* RS-2: Individuals and teams make project-related materials accessible to some members of project teams according to clearly defined and shared formats and/or protocols. Individuals and teams withhold sensitive data and resources, provide limited details, context, and scope.
* RS-3: Individuals and teams make project-related materials broadly accessible to the organization—and possibly outside the organization as well—according to clearly defined and shared formats and/or protocols. Individuals and teams who must withhold sensitive data and resources are clear about what they're not sharing, and others understand why those materials are not available to them.

**Stories**

When working in host teams mistakes will automatically be widely visible. In order keep contribution levels up, corporate culture needs to celebrate failure as an opportunity for growth and learning.

* ST-0: Individuals and teams do not share successes or failures for others to learn.
* ST-1: Individuals and teams are comfortable sharing stories about successes, but not about failures.
* ST-2: Individuals and teams are comfortable sharing stories of successes and failures during retrospectives and reviews.
* ST-3: Individuals and teams are comfortable sharing stories of successes and failures, and learn from failures according to formal protocols.

### Collaboration

**Channels for Providing Feedback**

For silos to be reduced colleagues need to be comfortable sharing feedback openly. One easy way to support that is to use the same communication principles across hierarchies.

Ideally you will end up with proper communication channels that are known by anyone in the organization - with channels focussed on different goals (announcements, user support, development channels, infra discussions, etc.). Some of the best practices you will establish as your InnerSource projects mature: Adoption of netiquette guidelines, opening a proven set of standard channels (which are being archived, publicly accessible, searchable) for each new InnerSource project.

* CF-0: There are no processes nor established channels. Some members of the organization share materials via private channels or discussions.
* CF-1: The organization is in the process of establishing internal guidelines and channels for encouraging diverse points of view about company/departmental decisions, so that anyone belonging to the organization can use them. Some members of the organization share decision-making materials informally using unofficial platforms. Leaders maintain at least one clear and direct channel for organization members to share opinions constructively on some matters relevant to their work.
* CF-2: The organization has established internal guidelines and channels, and provides specific resources (training programs, access to content, etc.), for encouraging and soliciting diverse points of view on team or decisions.
* CF-3: Members of the organization share decision-making materials on officially sanctioned platforms Members of the organization share materials openly via multiple channels and methods for feedback.
Leaders use those channels themselves, openly encourage others to use them, and maintain team-facing or public-facing records of the feedback they've received and/or the actions they've taken to address this feedback.

**Leadership**

InnerSource projects encourage employees to contribute to projects outside of the direct influence of their direct line manager. This needs a culture of trust.

* LS-0: Command & control culture, within a highly hierarchical organization.
* LS-1: Some leaders are open to receiving feedback and creating an environment where people feel safe providing it.
* LS-2: Most leaders in the organization are open to receiving feedback and creating an environment where people feel safe providing it. Leaders show passivity about understanding whether all members feel empowered and enabled to share. Organization encourages leaders to actively seek voices not present in dialog out for inclusion.
* LS-3: Members feel empowered and enabled to share opinions constructively on any matter relevant to their work or about which they feel passionate.

**Organizational and Functional Structure**

When InnerSource leaves the pure coding level and enters the community and working group level, there is potential for reducing silos even where direct code collaboration is not possible.

* OF-0: Working groups tend to be static in terms of membership and skill sets.
* OF-1: Cross-functional teams exist, but team roles are often unclear and governance structures are vague.
* OF-2: Cross-functional teams are common, and teams post their roles and goals publicly.
* OF-3: Cross-functional teams are common and make their activities known broadly to the organization; in turn, the organization promotes best practices for working together.

**Contribution**

The goal with designing contributions patterns needs to keep collaboration in mind if it's to reduce silos.

* CB-0: Completely siloed, no collaboration outside the teams. Just some collaborations due to cross-functional teams.
* CB-1: Members of the organization and teams collaborate but frequently say it's "too difficult". Teams infrequently revisit the outcomes of their collaborations.
* CB-2: Members of the organization and teams actively seek opportunities to collaborate. Teams routinely discuss, revisit and debate the outcomes of their collaborative efforts, and make these outcomes available by default.
* CB-3: Members of the organization collaborate both internally and externally in ways that benefit all involved. Teams routinely discuss, revisit and debate the outcomes of their collaborative efforts, and share their learnings outside the organization, and make these outcomes externally available by default.

### Community

**Sharing Policies**

Having a baseline of shared values makes it easier to work across team boundaries. Crossing boundaries becomes easier if a limited set of baseline rules and guidelines apply everywhere and can easily be referenced.

* SP-0: No sharing culture nor written policies.
* SP-1: Some members of the organization unite to define values and principles, but are not clearly supported when they do.
* SP-2: Members of the organization collectively document shared visions and agreements like mission statements and codes of conduct, make them easily accessible, and reference them often. Onboarding materials and orientation rituals provide adequate context for helping new members understand how the organization will benefit from their contributions.
* SP-3: Shared values and principles inform decision-making, conflict resolution, and assessment processes among members of the organization, who reference these values and principles consistently in both verbal and written formats.

**Feel part of the Organization**

One of the possible reasons for introducing InnerSource into organisations can be increased engagement. This point tracks how engagement is changing while adopting InnerSource.

* PA-0: Low engagement, no collaboration and people do not feel comfortable sharing with others.
* PA-1: Members of the organization feel comfortable sharing their thoughts and opinions without fear of retribution, but only in familiar domains. People understand that the best ideas win, and leadership responsibilities accrue to people with histories of contribution and commitment.
* PA-2: Members of the organization feel comfortable sharing their thoughts and opinions without fear of retribution. Leaders demonstrate dedication to the organization's shared values.
* PA-3: The organization is proactive in telling members that it benefits from their contributions; as such, members demonstrate shared consciousness and empowered execution, and feel a sense of responsibility to the community. Leaders understand that they grow by helping others grow, and they mentor junior members of the organization.

### Governance

**Rewards**

In order to drive adoption, extrinsic motivators can be used to increase cross team collaboration.

* RW-0: No rewards.
* RW-1: Leaders are encouraged to reward exceptional collaborations, but there are no policies or processes established.
* RW-2: Standard processes are established to reward collaborations outside the developers' teams. Team leaders or boards decide who has to be rewarded.
* RW-3: Rewards are not only proposed by the organization, but the communities are able to define their more valuable rewards. The community is responsible to decide who has to be rewarded.

**Monitoring Policies**

InnerSource projects need a means for self assessment. Metrics can be one aspect to facilitate this assessment. Also, in organisations with a mature InnerSource adoption level we expect adoption of the method to be tracked based on clear, agreed upon metrics.

* MP-0: No existing monitoring policies at any level in the organization.
* MP-1: Metrics are important for certain teams, and they start using them in an isolated way.
* MP-2: There is a strategy at the organizational level with respect to metrics that help to validate specific policies across the organization. This monitoring policy exists at the level of some InnerSource projects.
* MP-3: There are clear guidelines, recommendations, and trainings about the use of metrics with certain infrastructure provided by the organization. This works at both levels: InnerSource program to understand the general InnerSource adoption within the organization, and at the level of InnerSource projects.

**Support and Maintenance**

Not only should feature development be owned by InnerSource teams - support and maintenance is also part of the teams core tasks.

* SM-0: Support given by the core dev or support team. A business contract guaranties the support. There is no knowledge about the product outside the team.
* SM-1: There are rules and regulations to formalize the support on the product, given by a dedicated supporting team.
* SM-2: Support for InnerSource contributions is formalized through InnerSource patterns like [30 Day Warranty](./30-day-warranty.md) or [Service vs. Library](./service-vs-library.md).
* SM-3: There are rules and regulations to formalize the support on the product, given by a mature community.

**Culture**

There are multiple levels moving towards a collaborative culture.

* CL-0: Silos - teams work independently but also in isolation.
* CL-1: Reactive - teams work independently, but know how to react to flaws in dependencies.
* CL-2: Contributive - teams actively help improve their dependencies by contributing.
* CL-3: Activist - teams actively seek help, mentor and recruit new contributors.

**InnerSource Roles**

InnerSource comes with explicit roles. While in early stages some patterns may be useable without adopting those roles, communicating within projects using explicit role titles becomes easier.

* RO-0: There are no specific roles helping InnerSource adoption. Only common development roles are present: developer, analyst, tester, etc.
* RO-1: Occasionally some individuals and teams contribute to other projects. These are technical contributions, where the user/contributor role is seen. For some teams, it can be identified at least one member being a technical reference, who explains the development process to other development team members. He/she could be a candidate for covering the trusted committer role.
* RO-2: An InnerSource Officer role is in charge of governance and support, including processes, etc. Identifies the education needs and ensures it is provided to the organization. Leads and mentors the organization in the engagement in IS projects. Is the first formal step in the way, defining the IS vision and roadmap. The organization has defined a trusted committer role, being a point of contact/reference not only for dev team members but also for external contributors. There is a standard process describing how to contribute to the community, contributor role is present. Data Scientist role is in charge of managing the traces of activity left by the InnerSource initiative, needed to measure the IS evolution. Trusted committer role will evolve to a more technical profile, and a community manager will be in charge of "energizing" the community, being his main responsibility to attract and retain new developers/users (contributors/community members).
* RO-3: Evangelists are moving inside organization, to let others know about the current work, what InnerSource does and how to do it, and help others to understand and become part of the initiative. Non technical contributors appear.

## Resulting Context

All teams are aware of available best practices.

Teams understand their level of InnerSource adoption.

Prior to adopting InnerSource as a working model, teams are aware of the
practices that are expected of them - both in the short term and in the
long term.

## Known Instances

* Entelgy
* Zylk
* Bitergia

## Authors

* Daniel Izquierdo Cortazar
* Isabel Drost-Fromm
* Jorge
* Nerea

## Acknowledgements

* Alexander Andrade (special thanks for the spelling fixes)

## Alias

Maturity model: Learn about InnerSource best practices

## Status

* Structured
* Drafted in September 2019
