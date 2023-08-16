## Title

Communication Tooling

## Patlet

The users of an InnerSource project have trouble getting help and getting in touch with the host team.
By consistently using asynchronous communication tooling, the project makes discussions visible, archived and searchable, leading to an improved level of support for users.

## Problem

A team is open to receiving contributions from downstream users of their
component. Coordination and communication happens in an ad hoc fashion though
leading to incoherent information being shared, delays in answers received,
contributors pinging multiple host team members before receiving a definitive
answer.

## Context

- A team depends on another team's component.
- It would like to make contributions to that component.
- Even when it happens in writing, communication happens in a 1-on-1 fashion.

## Forces

- The host team is interested in receiving contributions and willing to mentor contributors.
- Teams have a strong verbal communication culture and are inexperienced with setting up project specific asynchronous communication channels.
- Communication channels may be aligned with specific groups that should be reached but not by communication purpose.

## Solution

The host team should provide company-public, archived, searchable, linkable communication channels that anyone in the company can subscribe to, as there are measurable benefits to supporting open, written communications channels.

The goal when streamlining communication channels for InnerSource projects
should be to align communication around topics, not around certain sets of
people.

A project should set up the following communication tooling:

1. **a dedicated issue tracker** where structured communication, decision-making and progress tracking can happen transparently for all host team members but also for downstream users and contributors to follow. For further applications of the issue tracker see [Issue Tracker Use Cases](./issue-tracker.md).
2. **public discussion channel(s)** that come with less rigid a structure. Typically, this will be mailing lists, online forums, Q&A systems or even archived chat channels. Usually it is enough to start with just one channel for the project. If traffic increases too much it is helpful to split discussions about project usage from discussions about project development.
3. **a private channel** where communication about sensitive topics can happen between [Trusted Committers](../trusted-committer.md) - e.g. adding further Trusted Committers to the host team. This channel should be used with great care such that communication defaults to open and is kept private only under very rare circumstances.

While communication can happen outside of those written channels, as much information as possible should be brought back to the asynchronous channels.

All communication channels should be documented in the project `README.md`. For more details on the use of this file see [Standard Base Documentation](./base-documentation.md).

The host team members need to make an effort to direct questions that they receive personally (e.g. via email or private chat messages) back to official communication channels.

![Recommended Communication Tooling for an InnerSource Project](../../../assets/img/communication-tooling/communication-tooling.png)

## Resulting Context

Setting up and consistently using official asynchronous communication channels
helps create a base level of [passive documentation](https://www.oreilly.com/library/view/understanding-the-innersource/9781491986899/ch04.html) that can be referenced again when similar questions come up again.

With communication happening in the open others can easily follow project
progress and get active contributing. Others lurking and reading lowers the
barrier to get involved raising the likelihood of receiving contributions.

With questions being answered in public more people can add their perspective
leading to a complete picture - this includes not only host team members,
but also users of the project.

Keeping communication in asynchronous channels allows for participants on
different schedules - either due to different time zones or due to different
routines, meeting schedules, team routines - to meaningfully contribute to
the project.

Answering questions in those channels means that not only other team members
can listen in and provide additional information, it also means that other
users with the same question see (or later find) the previous answer leading
to a lower need to repeat explanations.

## Known Instances

* Europace AG
* Paypal Inc.
* Mercado Libre

## Authors

Isabel Drost-Fromm

## Acknowledgment

Sebastian Spier (for the visual)

## Status

* Structured
* Drafted in December 2019.

## Credits

[People](https://storyset.com/people) illustrations by Storyset
