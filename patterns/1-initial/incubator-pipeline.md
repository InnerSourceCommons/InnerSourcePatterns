## Title

Incubator Pipeline

## Patlet

A team maintaining a widely shared code library wants to accept contributions from other teams, without lowering the overall quality of their library. Therefore the shared library team uses an incubator pipeline to set a lower bar for contributions to enter and a higher bar to exit and become a top-level unit in the library.

## Problem

A team charged to maintain a shared library is responsible for the quality of the components in the library. If you offer them code from another team, they face the dilemma that the other team’s code might not meet their requirements, and it’s unclear if they’ll be able to support that code. If other teams can’t offer code, they may be reluctant to use the shared code, or they may be forced to use inadequate code from the central team, causing issues for their product.

The team managing the shared code library needs a way to allow InnerSource contributions to their supported library of components but also to distinguish between contributions that are up to the standard, or that are on their way to the standard.

## Story

See [Culture, Behaviors, and InnerSource. A three-part blog series. 3 of 3](https://www.linkedin.com/pulse/culture-behaviors-innersource-three-part-blog-series-3-gil-yehuda/) for the conceptual inspiration for this pattern.

## Context

We find the pattern to be useful when there’s a team at a company that is responsible for creating code assets that other engineering teams at the company must consume. For example:

1. the team that creates the centrally approved library of UI components,
1. the team that builds the build pipelines and installation scripts,
1. the team that builds microservice template code, etc.

These teams are held to meet certain standards (e.g., UI teams ensure all components comply with accessibility standards, can be themed and placed on the UI grid in a manner consistent with other components and company requirements; pipeline and install scripts might require certain boilerplate code for compliance logging or security controls, etc.).

However, the shared code library team does not want engineers to “roll their own” solutions either. But the user-teams may have needs not met by the shared library team’s code. Since they are engineers, they’ll want to create or find their own solutions. Doing that threatens the shared library team and creates multiple solutions. Whereas that’s sometimes okay, in some cases companies want to use InnerSource to maintain consistency without stifling innovation.  

## Forces

If the shared library team insists that they alone are the exclusive source of approved code, they limit the company output to the shared library team’s capacity. If the needs exceed the capacity, everyone suffers. However, if the shared library team cannot prevent other teams from creating their own solutions, they lose their role as a standards-setting team and simply become a team that provides technology that only some teams use.

For the customers of the shared library team’s code, they too face a challenge. The library provided may be insufficient. They’ll need some other solution. But breaking rank will cause downstream tension when it comes time to merge their rogue code with the approved code. They want to follow the company protocols, but they also need to deploy their products.

## Sketch (optional)

None yet

## Solutions

The shared library team provides an incubator pipeline for their (internal engineering) customers to use. Customer teams who need to augment the shared library can do so by petitioning to enter the incubator pipeline. Additionally, central teams can request contributions into the incubator pipeline. The shared library team maintains an acceptance criterion to get into the pipeline. This may include some demonstration that at least one other team would find the contribution useful, that the contribution could (perhaps with some additional engineering work) be enhanced to conform to the shared library standard. **In other words, no code should enter the incubator pipeline that we know cannot exit it.**

Once in the incubator pipeline, the shared library team and contributing teams can select a support agreement that enables teams to use the incubating code, but to understand that its support is less than a top-level component in the library. It is a second-class citizen that is on the way to becoming a first-class citizen.

Exiting the incubator pipeline means the code is a first-class citizen and member of the shared library. In this case, the shared library team may not have created the code, and may not have enhanced the code. But they will be willing to support the code as if they created it because it meets the criteria they set for their own code. It is possible that a component fails to graduate the pipeline. In that case, the component would be retired out of the incubator pipeline.

## Resulting Context

When a customer-team needs code that the shared library team does not have, they have a path to success. They can create and propose a solution to be included in the incubator pipeline. (They might find an open source solution too.) This does not pose a threat to the shared library team. In fact, it allows the shared library team to grow their library at a faster rate while maintaining quality control by staging the contribution.

Moreover, by defining an incubator process, the shared library team clarifies their criteria for inclusion into the library. This helps new members of their team too. In fact, this allows any engineer who can meet the criteria to become a "member of their team" even if only for a component or two.

## Rationale

Incubator pipelines allow participants to view code as potential and improving assets. Too often, people see code as being good enough or not good enough. In reality, code can become better. Formally putting code in an incubator status sends the message that the code is not yet good enough but is getting there.

This pattern was inspired by things like the Apache Software Foundation's incubator, as well as Linux Foundation's sandbox/incubator processes used in CNCF, CDF, and other open source foundations. Those help entire projects get into the foundation. They help raise the bar on projects that wanted to get more visibility by getting them into an incubator. Many of those projects graduated and are very successful today, in open source. This pattern here is like a smaller fractal of that pattern -- to help components get into an open source library.

## Known Instances

Being implemented at U.S. Bank.

## Status

Initial

## Author(s)

* Bryn Sharpe
* Gil Yehuda

## Acknowledgements

* Kevin Bongers
* Anton Fernando
* Levi Geinert
* Travis Killoren
* Dave Lester
* Mike Lupo
* Logan Price
* Joseph Ryan
* Michael Schlies
* Michael Schulz
* John Sibo
* Jennifer Skov
* John Yopp
