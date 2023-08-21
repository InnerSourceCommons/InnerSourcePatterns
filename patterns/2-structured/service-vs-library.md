## Title

Service vs. Library

## Patlet

Teams in a DevOps environment may be reluctant to work across team boundaries on
common code bases due to ambiguity over who will be responsible for
responding to service downtime. The solution is to realize that often it's
possible to either deploy the same service in independent environments with
separate escalation chains in the event of service downtime or factor a lot of
shared code out into one library and collaborate on that.

## Problem

When teams are working in a DevOps environment developers are responsible for a
feature end-to-end: From the customer down to deployment, maintenance and
support. This poses a challenge when working across team boundaries: Escalation
chains may not be the same for errors happening in either team. Coupling
source code and deployment leaves the teams with the question of who is
responsible for on-call support in the event of errors. As a result teams are
reluctant to join forces even if there is significant overlap in requirements.

## Context

* Teams are working in a micro-services environment.
* They are organized in fully functional DevOps teams: Each team is responsible for their contributions end-to-end, including maintenance, on-call and customer support.
* A team is tasked with providing a service to their downstream customers that is fairly similar to an existing service built by another team.

## Forces

* Organizational escalation paths may be different for each of the teams.
* Members of each team may be unwilling to answer on-call support for errors that do not affect their own downstream customers.
* Severity levels for the same types of errors may be different across team boundaries due to different SLA definitions per team/customer relationship.
* Teams may have different security or regulatory constraints governing their deployments.

## Solutions

Decouple responsibility for source code from deployment: Both teams work to
identify exactly where there is overlap and synergies.

Only shared source code is kept as part of the InnerSource project with shared responsibility. The shared source should be coherent in that it includes all testing code (including integration tests if available) and as much of the CI pipeline as is possible to make contribution validation easier.

Decouple configuration and deployment pipelines from actual business logic.
Establish a second deployment of the service for the second team.

Treat the common base as a library that is used by both teams with shared code
ownership.

Deployment configurations can be included as separate projects in your InnerSource portfolio to allow teams to discuss/collaborate or a new team to copy them.

## Resulting Context

Teams are willing to collaborate, benefiting from sharing the work of
implementing the business logic.

A service that originally was built specifically to work in one environment is
converted into a more general solution based on a specific business requirement.

Both teams get to know their respective escalation policy and deployment setup,
potentially identifying improvements for their own setup.

The likelihood that changes are needed and made in the shared source code
increases, leading to more frequent opportunities to refine, improve and optimize
the implementation.

Encourages incremental operational standardization in release packaging, telemetry, health/readiness endpoints and so on as the teams realize they can more efficiently maintain this in the shared code if they agree on standard conventions.

## See also

Related to this pattern is the [30 Day Warranty](30-day-warranty.md) pattern that takes a different approach to solving the forces described above.

## Known Instances

* Europace AG
* Flutter Entertainment: A [Flutter InnerSource application](https://innersource.flutter.com/sdlc/) has a shared code "service" repository with cross-team contribution and CI pipeline to build and publish a shared release artifact. Each adopting team has a "deployment config" repository defining their own deployment. This is driven by varying regulatory requirements, service and incident management practices and infrastructure skill sets in different areas of the business.
* WellSky (see [Continuous InnerSource in Production - 5 Times](https://www.youtube.com/watch?v=loSTj4yIG9Q&pp=ygUkY29udGludW91cyBpbm5lcnNvdXJjZSBpbiBwcm9kdWN0aW9u))

## Status

* Structured

## Author(s)

* Isabel Drost-Fromm
* Rob Tuley

## Acknowledgments

Thank you Tobias Gesellchen for review internal to Europace AG.

## Alias

Service vs. library: It's inner source, not inner deployment
