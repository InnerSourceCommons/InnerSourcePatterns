## Title

Communication Tooling

## Patlet

An InnerSource project is being used outside the original development team but
users are having trouble getting help and getting in touch with the project
team. The idea is to set up and document standard communication tooling that
allows for discussions to become visible, archived and searchable.

## Context

A team depends on another team's component. It would like to make contributions
to that component. Even when it happens in writing, communication happens in a
1-on-1 fashion.

## Problem

A team is open to receiving contributions from downstream users of their
component. Coordination and communication happens in an ad-hoc fashion though
leading to incoherent information being shared, delays in answers received,
contributors pinging multiple host team members before receiving a definitive
answer.

## Forces

- The host team is interested in receiving contributions and willing to mentor contributors.
- Teams have a strong verbal communication culture and are inexperienced with setting up project specific asynchronous communication channels.
- Communication channels may be aligned with specific groups that should be reached but not by communication purpose.

## Solution

The host team needs to be clear on the benefit of providing company-public,
archived, searchable, linkable communication channels that are free to subscribe
to by anyone in the company.

The goal when streamlining communication channels for InnerSource projects
should be to align communication around topics, not around certain sets of
people:

- The project should have its own issue tracker where structured communication, decision-making and progress tracking can happen transparently for all host team members but also for downstream users and contributors to follow.
- The project should have one or more discussion channels that come with less rigid a structure. Typically, this will be mailing lists, online forums or even archived chat channels. Usually it is enough to start with just one channel for the project, if traffic increases too much it's helpful to split discussions about project usage from discussions about project development.
- In addition, the project should have one private channel where sensitive communication can happen between [Trusted Committers](../trusted-committer.md) - e.g. adding further Trusted Committers to the host team. This channel should be used with great care such that communication defaults to open and is kept private only under very rare circumstances.

While communication can happen outside of written channels, as much information
as possible should be brought back to the asynchronous channels.

All communication channels should be documented in the project `README.md`. The
host team members need to make an effort to direct questions that they receive
personally back to official communication channels.

## Resulting Context

Setting up and consistently using official asynchronous communication channels
helps create a base level of passive documentation that can be referenced again
when similar questions come up again.

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

## Status

* Structured
* Drafted in December 2019.
