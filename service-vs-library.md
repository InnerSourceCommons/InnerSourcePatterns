## Title
Service vs. library: It's inner source, not inner deployment

## Patlet
Teams in a DevOps environment may be reluctant to work across team boundaries on
interdependent code bases due to ambiguity over who will be responsible for
responding to service downtime. The solution is to realize that often it's
possible to deploy the same service in independent environments with separate
escalation chains in the event of service downtime.

## Problem

When teams are working in a DevOps environment developers are responsible for a
feature end-to-end: From the customer down to deployment, maintenance and
support. This poses a challenge when working across team boundaries: Escalation
chains may not be the same for errors happening in either team. Coupling
source code and deployment leaves the teams with the question of who is
responsible for on-call support in the event of errros. As a result teams are
reluctant to join forces even if there is significant overlap in requirements.

## Context

Teams are working in a micro-services environment.

They are organised in full functional DevOps teams: Each team is responsible for
their contributions end-to-end, including maintenance, on-call and customer
support.

A team is tasked with providing a service to their downstream customers that is
fairly similar to an existing service built by another team.

## Forces

Organisational escalation paths may be different for each of the teams.

Members of each team may be unwilling to answer on-call support for errors that
do not affect their own downstream customers.

Severity levels for the same types of errors may be different across team
boundaries due to different SLA definitions per team/customer relationship.

## Solutions

Decouple responsibility for source code from deployment: Both teams work to
identify exactly where there is overlap and synergies.

Only shared source code is kept as part of the InnerSource project with shared
responsiblity.

Decouple configuration and deployment pipelines from actual business logic.
Establish a second deployment of the service for the second team.

Treat the common base as a library that is used by both teams with shared code
ownership.

## Resulting Context

Teams are willing to collaborate, benefitting from sharing the work of
implementing the business logic.

A service that originally was built specifically to work in one environment is
converted into a more general solution based on a specific business requirement.

Both teams get to know their respective escalation policy and deployment setup,
potentially identifying improvements for their own setup.

The likelihood that changes are needed and made in the shared source code
increases, leading to more frequent oportunities to refine, improve and optimise
the implementation.

## Known instances

Europace AG

## Author(s)

Isabel Drost-Fromm

## Acknowledgements

Thank you Tobias Gesellchen for review internal to Europace AG.

