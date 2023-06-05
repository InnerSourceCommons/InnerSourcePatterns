## Title

InnerSource License

## Patlet

Two legal entities that belong to the same organization want to share software source code with each other but they are concerned about the implications in terms of legal liabilities or cross-company accounting.

An **InnerSource License** provides a reusable legal framework for the sharing of source code within the organization. This opens up new collaboration options, and makes the rights and obligations of the involved legal entities explicit.

## Problem

When two or more legal entities within an organization want to share code with each other, they need an agreement about the terms and often a legal contract. Creating such agreements on a per project basis takes effort and creates a barrier for sharing. i.e. a team within a legal entity might decide not to share their source code with another legal entity in the organization because it seems complicated.

Barriers for sharing can lead to silos and duplication of effort in rebuilding similar solutions in multiple parts of the organization.

At the time of sharing the source code, it can not be reliably predicted what the value of sharing will be. If the activity of sharing requires significant effort (i.e. negotiating terms for the usage), the legal entities are less likely to do it, as they are concerned about the return on investment.

## Context

- A large organization with many legal entities (subsidiaries) that want to share code. When the organization gets larger, the value of this pattern increases.
- As per definition, the legal entities have their own legal rights and obligations.
- Multiple of these legal entities are developing software, and are using services of the other legal entities. They have a motivation to contribute to each other’s source code.
- A sufficient complexity of the organization and its organizational structure

## Forces

- **Level of effort** required to write formal agreements, especially if they need to take into account technical, legal, and business perspectives.
- A large organization (consisting of many legal entities) has many **internal regulations**. Any new agreements that are made have to comply with these regulations, e.g. security, privacy, procurement processes, etc. The volume of regulations can make it difficult to assess whether sharing software between two legal entities is compliant with these regulations, especially when there is no standard procedure.
- If any of the legal entities in the organization has a **business model** that depends on proprietary code and accounting of licensing fees within the organization
- **Company culture** that isn’t used to InnerSource collaboration and sharing code. This results in uncertainty about the rights and obligations when using shared code.
- Freedom over using the software leads to competition, and spread of ownership
- There are legal contracts in place which cover the sharing of source code. These contracts are not standardized, so they create additional effort in negotiating and understanding for every project. The existing contracts may also not allow sharing source code in an open enough sense to support a true InnerSource approach.
- Alternatively, there are no legal contracts in place but source code is shared informally. That might create uncertainty in cases where clarity about ownership and rights and obligations is needed.

## Solutions

Creating an **InnerSource License** customized to the needs of the organization in question (and their legal entities). This license needs to be generic enough to be applied to the most important inter-company relationships.

It is important to write the InnerSource License such that it truly allows for open source style collaboration across the boundaries of the involved legal entities. Therefore the 4 freedoms of free software should be integrated into the license.

The License is written as a formal legal document, and can be used as part of contracts between the legal entities to govern the code sharing agreements.

## Resulting Context

With the InnerSource License, we have a tool to share code between legal entities within our organization.

The license simplifies the conversations within our organization about sharing source code, and is motivating the first legal entities to do so.

**Note:** The experiment described in **Known Instances** is in an early phase. Therefore a firm **Resulting Context** has not formed yet. In a couple of months the effects of the InnerSource License on this problem space will be more clear, and this section can be updated.

## Known Instances

DB Systel created their own InnerSource License, see [DB Inner Source License][db-inner-source-license]. They used the [EUPL][eupl], as that offered an open source like starting point, and then worked out the constraints and additional rules required in their specific organizational context.

The first legal entities (companies) within the DB AG are using their InnerSource License.

One positive effect that is already showing is that it simplifies the conversation, especially if some of the involved parties don’t know the InnerSource concept that well yet. Licenses are a well-known concept, therefore having an InnerSource License is a great discussion starter.

The experiments are also uncovering that there are further collaboration challenges that need to be solved in order to lead to a true InnerSource contribution and collaboration model.

The mentioned collaboration challenges include:

- making InnerSource licensed projects discoverable
- building communities for collaboration on projects, just like in Open Source

It is worth mentioning that so far the software shared under this InnerSource license is mostly tooling, infrastructure, and tools lower in the stack.

## Status

* Structured
* The experiment listed under **Known Instances** is running since 02/2020. The initial experience shows first positive effects but more experience is needed to fully evaluate the pattern.

## Author(s)

- Cornelius Schumacher (DB Systel GmbH)
- Schlomo Schapiro (DB Systel GmbH)
- Sebastian Spier

## References

- FOSSBack 2020 Presentation: [Cornelius Schumacher - Blending Open Source and Corporate Values](https://youtu.be/hikC6U8X_Ec) - watch 27:30 and onwards for details about the InnerSource License
- [DB Inner Source License][db-inner-source-license]

## Glossary

- **organization** - An umbrella for multiple legal entities. (synonyms: group, enterprise) (e.g. Lufthansa)
- **legal entity** - An entity that has its own legal rights and obligations (synonyms: company, subsidiary) (e.g. Lufthansa Systems GmbH, Lufthansa Industry Solutions TS GmbH, ...)

[db-inner-source-license]: https://github.com/dbsystel/open-source-policies/blob/master/DB-Inner-Source-License.md
[eupl]: https://joinup.ec.europa.eu/collection/eupl/eupl-text-eupl-12
