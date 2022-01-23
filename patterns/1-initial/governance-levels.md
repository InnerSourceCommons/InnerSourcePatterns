## Title

Transparent Governance Levels

## Patlet

Several teams are using different InnerSource patterns and all calling it "InnerSource", so the term is not precise enough to usefully describe a set of working practices without confusion.

Estabilishing a more accurate common language that is understood across all teams allows anyone to communicate intent or set expectations efficiently without ambiguity.

## Problem

Several teams are using InnerSource practices. However the degree to which they welcome contributions and give equal collaboration rights to contributors differ. Despite these differences, all teams refer to their way of working as "InnerSource" without any additional qualifiers.

The result is confusion and frustration when teams collaborate as the expectation of what InnerSource means in practice is different in each team. This confusion also affects strategy planning and decisions on future InnerSource intent as the term is too vague which leads to long discussions and time lost on clarifications.

## Story

For two projects InnerSource best practices have been adopted. Project A has a shared ownership model with [Trusted Committers](../2-structured/trusted-committer.md) from multiple teams. Project B is fully owned by one team with contributions from multiple teams. New users of either project are regularly confused about the level of influence they can gain in the respective project. This leads to long discussions, escalations and time lost on clarifications.

Project C is currently closed source and used only by team 1. Team 2 want to use project C and the leadership of the two teams negotiates options which include InnerSource practices. Agreement takes longer than expected because the "InnerSource" term did not describe a target state that could be agreed without ambiguity, and the teams had to document bespoke sub-options for their leadership to consider before a decision could be made.

## Context

- InnerSource concepts are established within an organisation with multiple projects and teams adopting InnerSource.
- Internal InnerSource practices are not prescribed in detail.
- Teams/projects have the autonomy to optimise for their local circumstances.

## Forces

- Projects adopt different InnerSource patterns and practices to optimise for their context.
- Contributors want clarity on the level of influence they can gain in an InnerSource project they are involved with.
- Leaders want clarity on InnerSource project intentions to understand the expected cost and benefits.
- Writing a detailed description of a set of InnerSource practices requires significant effort to write and to read.

## Solution

The solution is to create a universally understood language to describe standard building blocks for InnerSource in your organisation:

1. Identify the common recurring InnerSource operating models that exist in your teams and projects.
2. Document each model in detail, and give each a distinctive name.
3. Promote the use of these names to describe projects until the name's meaning is understood across the whole organisation.

Examples of common InnerSource operating models (1) are:

- **Bug Reports and Issues Welcome**: People outside the core development team may use the code. They can submit feature requests and bug reports for things they would like to see changed.
- **Contributions Welcome**: People outside the core development team may use the code. They can also make modifications and submit them to core team for inclusion.
- **Shared Ownership**: Members of different teams collaborate on the project as equal peers. Everyone has the ability to merge code. Everyone has an equal say on the project direction. Everyone has an equal say in who else to add to this group.

Examples of promoting the names (3) are:

- Using the names within project documentation and contributing guides.
- Labelling projects with the names in an [InnerSource Portal](../2-structured/innersource-portal.md).
- Presenting the names as a menu of adoption options for new InnerSource projects.
- Including the names and models in any internal InnerSource training or promotion.

## Resulting Context

- Cross team communication occurs efficiently without confusion using terms that are universally understood and centrally documented.
- Organisation leaders understand the nuances within practising InnerSource and make better informed and more precise decisions that are easier to communicate.
- Increased standardisation of InnerSource practices within the organisation as the named and documented building blocks are used by teams as a menu for adoption.
- Teams can adopt InnerSource best practices in a step-by-step way which makes adoption easier and less intimidating.

## Known Instances

Flutter Entertainment define an "[Inner Source Pyramid](https://innersource.flutter.com/how/)" to describe 3 different InnerSource models: Readable Source, Guest Contributions and Maintainers in Multiple Teams. Each name is centrally documented. The use of these names is encouraged via repeated usage, direct training and categorisation of each InnerSource project.

## Status

Initial

## Authors

- Isabel Drost-Fromm
- Rob Tuley
