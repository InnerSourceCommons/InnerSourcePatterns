## Title

InnerSource License

## Patlet

Two companies that belong to the same group want to share software source code with each other but they are concerned about the implications in terms of legal liabilities or cross-company accounting.

An **InnerSource License** provides a reusable legal framework for the inter-company agreement within the group, which opens up new collaboration options, and makes the rights and obligations of the involved companies explicit.

## Problem

When two or more companies within a group want to share code with each other, they need an agreement about the terms and often a legal contract. Creating such agreements on a per project basis takes effort and creates a barrier for sharing. i.e. a team/company might decide not to share their source code with another company in the group because it seems complicated.

Barriers for sharing can lead to silos and duplication of effort in rebuilding similar solutions in multiple parts of the group.

At the time of sharing the source code, it can not be reliably predicted what the value of sharing will be. If the activity of sharing requires significant effort (i.e. negotiating terms for the usage), the companies are less likely to do it, as they are concerned about the return on investment.

## Context

- A large group with many companies (subsidiaries) that want to share code. When the group gets larger, the value of this pattern increases.
- These companies are legal entities with their own legal rights and obligations.
- Multiple of these companies/subsidiaries are developing software, and are using services of the other companies. They have a motivation to contribute to each other’s source code.
- A sufficient complexity of the organization and its organizational structure

## Forces

- **Level of effort** required to write formal agreements, especially if they need to take into account technical, legal, and business perspectives.
- Enterprises have many **internal regulations,** any agreements have to comply with these regulations, e.g. security, privacy, procurement processes, etc. The volume of regulations can make it difficult to assess whether sharing software between two companies is compliant with these regulations, especially when there is no standard procedure.
- If any of the companies in the group has a **business model** that depends on proprietary code and accounting of licensing fees within the group
- **Company culture** that isn’t used to sharing code
- Freedom over using the software leads to competition, and spread of ownership

## Solutions

Creating an **InnerSource License** customized to the needs of the group in question (and their companies). This license needs to be generic enough to be applied to the most important inter-company relationships.

It is important to write the InnerSource License such that it truly allows for OpenSource-like collaborations across organizational boundaries. Therefore the 4 freedoms of free software should be integrated into the license.

The License is written as a formal legal document, and can be used as part of contracts between the subsidiaries to govern the code sharing agreements.

## Resulting Context

With the InnerSource License, we have a tool to share code between companies within our group.

## Known Instances

DB Systel created their own InnerSource License, see [DB Inner Source License][db-inner-source-license]. They used the [EUPL][eupl], as that offered an open-source-like starting point, and then worked out the constraints and additional rules required in their specific company context.

The first companies within the DB AG are using their InnerSource License.

One positive effect that is already showing is that it simplifies the conversation, especially if some of the involved parties don’t know the InnerSource concept that well yet. Licenses are a well-known concept, therefore having an InnerSource License is a great discussion starter.

The experiments are also uncovering that there are further collaboration challenges that need to be solved in order to lead to a true InnerSource contribution and collaboration model.

The mentioned collaboration challenges include:

- making InnerSource licensed projects discoverable
- building communities for collaboration on projects, just like in Open Source

It is worth mentioning that so far the software shared under this InnerSource license is mostly tooling, infrastructure, and tools lower in the stack.

## Status

Proven

The experiment listed under **Known Instances** is running since 02/2020.

The initial experience shows first positive effects but more experience is needed to fully evaluate the pattern.

## Author(s)

Cornelius Schumacher (DB Systel GmbH)

Schlomo Schapiro (DB Systel GmbH)

Sebastian Spier

## References

* FOSSBack 2020 Presentation: [Cornelius Schumacher - Blending Open Source and Corporate Values](https://youtu.be/hikC6U8X_Ec) - watch 27:30 and onwards for details about the InnerSource License
* [DB Inner Source License][db-inner-source-license]

[db-inner-source-license]: https://github.com/dbsystel/open-source-policies/blob/master/DB-Inner-Source-License.md
[eupl]: https://joinup.ec.europa.eu/collection/eupl/eupl-text-eupl-12
