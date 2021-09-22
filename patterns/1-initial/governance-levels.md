## Title

Transparent Governance Levels

## Patlet

Several teams are using different InnerSource patterns and all calling it "InnerSource", so the term is not precise enough to usefully describe a set of working practices without confusion.

Estabilishing a more accurate internal language that is understood across all teams allows anyone to communicate intent or set expectations efficiently without ambiguity.

## Problem

Several teams are using InnerSource practices. However the degree to which they welcome contributions and give equal collaboration rights to contributors differ. Despite these differences, all teams refer to their way of working as "InnerSource" without any additional qualifiers.

The result is confusion and frustration when teams collaborate as the expectation of what InnerSource means in practice is different in each team. This confusion also affects strategy planning and decisions on future InnerSource intent as the term is too vague which leads to long discussions and time lost on clarifications.

## Story

For two projects InnerSource best practices have been adopted. Project A has a shared ownership model with [Trusted Committers](../2-structured/trusted-committer.md) from multiple teams. Project B is fully owned by one team with contributions from multiple teams. New users of either project are regularly confused about the level of influence they can gain in the respective project. This leads to long discussions, escalations and time lost on clarifications.

Project C is currently closed source and used only by team 1. Team 2 want to use project C and the leadership of the two teams negotiates options which include InnerSource practices. Agreement takes longer than expected because the "InnerSource" term did not describe a target state that could be agreed without ambiguity, and the teams had to document bespoke sub-options for their leadership to consider before a decision could be made.

## Forces

- Projects adopt different InnerSource patterns and practices to optimise for their context.
- Contributors want clarity on the level of influence they can gain in an InnerSource project they are involved with.
- Leaders want clarity on InnerSource project intentions to understand the expected cost and benefits.
- Writing a detailed description of a set of InnerSource practices requires significant effort to write and to read.

## Solution

Establish standardised building blocks which can be used by projects to signify
how much influence they are willing to share. Those building blocks can then be
used in contributing files.

Examples of building blocks:

- **Bug reports and issues welcome**: People outside the core development team are
  welcome to read the code. They can submit feature requests and bug reports for
  things they would like to see changed.

- **Contributions welcome**: People outside the core development team may use the
  code, make modifications and feed those modifications back into the projects.
  Trusted committers are willing to mentor those contributions to a state where
  they can be accepted or communicate clearly why the proposed change cannot be
  made.

- **Shared write access**: In addition to the above people outside the core
  development team may gain write access to the source repository. Influence on
  roadmap decisions as well as influence on who else gains write access is
  restricted to the core development team.

- **Shared ownership**: Members of different teams collaborate on the project as
  equal peers. Everyone has the ability to merge code. Everyone has an equal say
  on the project direction. Everyone has an equal say in who else to add to this
  group.

## Resulting Context

Teams can adopt InnerSource best practices in a step-by-step way. By documenting
individual steps contributor confusion is avoided.

## Known Instances

TBD

## Status

Initial (Early draft)
