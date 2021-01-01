## Title

Transparent Cross-Team Decision Making using RFCs

## Patlet

InnerSource projects that want to achieve high participation rates and make the best possible decisions for everybody involved need to find ways to create participatory systems throughout the full software lifecycle. Publishing internal Requests for Comments (RFCs) documents allows for discussions early on in the design process, and increases the chances to build solutions with a high degree of commitment from all involved parties.

## Problem

For an InnerSource project to be healthy, it needs a substantial amount of contributors. These contributors (or teams) maybe have different requirements for the given project. e.g. they may want to add features to the project that are not compatible with one another or lead to an unhealthy bloat in the architecture.

Discovering such disagreements or misunderstanding late in the process, e.g. once the software has already been built, is very costly. These disagreements may lead to frustrations by all parties involved, and can even be disruptive to the health of the collaboration culture in the project. A common situation where such a disagreement surfaces is a change request (pull request) which is open for a very long time because the author of the change request and the maintainers of the project essentially don’t agree that the proposed change should be made at all.

For an InnerSource project this situation happens more frequently when the project is maintained by multiple teams in the company i.e. shared ownership.

## Story (optional)

**TBD**

## Context

- shared ownership by many teams of an InnerSource project
- overarching design decisions cannot be made from a central body all the time (e.g. a group of architects) as they have neither enough time, nor sufficient domain-specific knowledge to make good decisions in all the cases
- various types of users have input on the direction that a certain project is taking. Such user may be: Developers, Product Owners, Product Managers, etc
- decisions need to be made in a asynchronous fashion, at least partly, as it isn’t feasible to call frequent synchronous meetings with all participants
- there is a desire to document the decisions made, i.e. making sure that they are made in writing, rather than just verbally

## Forces

- most of the times, the involved parties want to make a decision fairly quickly (e.g. the up-front design time is fairly limited)
- writing things down (without already implementing things) is often a new skill for many of the people involved

## Sketch

**TBD**

## Solutions

We chose an RFC-like process for increasing the transparency of our cross-team decision making process (also see [Requests for Comments][requests-for-comments]).

Important elements of the solution are:

- a description of when to publish an RFC (and when not to)
- a template for RFC documents
- a well known process surrounding RFCs e.g.
  - how to publish RFC and share it with all stakeholders
  - how to collect feedback for the RFC
  - how to work in the feedback
  - how to move the RFC towards a conclusion or decision

## Resulting Context

Implementing an RFC-like process has proven to be valuable, as it makes the cross-team decision making process more transparent for everybody, allowing for all voices to be heard.

Observable positive effects:

- **democratization of the decision making process** for decisions that impact many teams (also offloading team leads from that burden)
- **a open asynchronous communication method** that works well across multiple teams and geos
- **terminology alignmen**t e.g. by spelling out our testing terminology such as “what is a system test?”
- **process alignment** e.g. by spelling out the out-of-hours support process
- **greater clarity of thought**, as writing an RFC makes the author challenge herself more than they would normally

The RFC approach also has risk that we want to call out:

- It doesn’t always work! e.g. some people might still argue against a decision that was already made via an RFC. However having the decision making process in writing is still beneficial in these scenarios, as you can point people to when and why a certain decision was made.
- Writing up design proposals (architecture, protocols, etc) upfront has an element of upfront waterfall-like design to it that does not fit the iterative development approach that man development teams favor.
- An RFC may become big and too unwieldy. This often shows in long comment threads and discussions surrounding it. In those situations we may decide to complement the RFC with synchronous communication such as a working group and in-person meetings. But time is still saved, as people can read the RFC before the meeting rather than having all the information shared during the meeting.

## Rationale

RFCs haven proven themselves in the Open Source world for many years. This is true both for the Internet as a whole where RFCs have been instrumental in developing standards (e.g. see [30 Years of RFCs][30-years-of-rfcs]), as well for other Open Source projects that have adapted this method to promote transparent decision making in their community (e.g. [RUST][rust], [ZeroMQ][zeromq]).

In the context of InnerSource, other companies have shared their experiences with RFC-like approaches too, such as [Uber][uber] and [Europace][europace].

Also for decision making outside of pure software design decisions, transparent decision making models can be effective e.g. when working towards an Open Organization. For an example see Red Hat’s [Open Decision Framework][open-decision-framework] (released publicly on June 7, 2016).

## Known Instances

- **Uber** - According to this blog post by Gergely Orosz: [Scaling Engineering Teams via Writing Things Down and Sharing - aka RFCs][uber].
- **Europace** - As described in Open Organization: [Setting cross-team standards and best practices in the open][europace].

## Status

**Initial** - Created August/September 2020 in preparation for Tom Sadler’s talk “Using internal RFCs to enhance collaboration” at the [InnerSource Fall Summit 2020][innersource-fall-summit-2020]. This first version was written by Sebastian Spier, after an interview with Tom Sadler.

**(future) Structured** - After the InnerSource Fall Summit 2020 we plan to extend this pattern with additional info based on Tom Sadler’s talk at the summit. With that we want to bring the pattern to maturity “Structured”.

## Author(s)

- Tom Sadler
- Sebastian Spier

[requests-for-comments]: https://en.wikipedia.org/wiki/Request_for_Comments
[30-years-of-rfcs]: https://www.rfc-editor.org/rfc/rfc2555.txt
[rust]: https://github.com/rust-lang/rfcs
[zeromq]: https://rfc.zeromq.org
[uber]: https://blog.pragmaticengineer.com/scaling-engineering-teams-via-writing-things-down-rfcs/
[europace]: https://github.com/open-organization/open-org-distributed-work-guide/blob/master/drostfromm-remote-first-through-openess.md#setting-cross-team-standards-and-best-practices-in-the-open
[open-decision-framework]: https://www.redhat.com/en/about/press-releases/red-hat-releases-open-decision-framework-spur-transparent-and-inclusive-leadership
[innersource-fall-summit-2020]: http://innersourcecommons.org/events/isc-fall-2020/
