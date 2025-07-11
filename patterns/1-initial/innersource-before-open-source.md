# Title

Require InnerSource before Open Source

## Patlet

Maintaining and managing open source projects can be challenging for organizations, due to a lack of internal infrastructure and people with the knowledge of the required collaboration practices. By requiring projects to be InnerSource before becoming open source, teams have time to establish the necessary internal support, governance, and collaboration skills needed for successful community engagement.

## Problem

When a project is released as open source without first building a strong internal contributor base, it may face challenges such as insufficient documentation, unclear governance, and difficulty managing external contributions. Without prior experience in collaborative development, maintainers may struggle to handle the influx of external contributors, resulting in an unsuccessful or unsustainable open source project.  

## Story

A large tech company once open-sourced a widely used internal tool, expecting external developers to contribute immediately. However, due to a lack of contributor guidelines, onboarding processes, and structured governance, external adoption was low, and internal maintainers were overwhelmed with unstructured contributions and support requests.

After seeing this, the company implemented an InnerSource-first policy, ensuring internal teams could practice open collaboration before releasing future projects as open source.  

## Context

This pattern applies in organizations that:

- Want to release internal software as open source.  
- Lack structured internal collaboration processes.  
- Have teams unfamiliar with maintaining open source projects.  
- Need to establish internal governance and contribution models before engaging the broader open source community.  

## Forces

- **Collaboration Readiness**: Teams may not be used to handling external contributions or asynchronous collaboration.  
- **Documentation Gaps**: A lack of contributor guidelines, API documentation, and onboarding materials can hinder adoption.  
- **Governance & Ownership**: Without clear ownership and decision-making processes, project direction can become unclear.  
- **Support Burden**: Open source projects require active maintainers to review pull requests, address issues, and engage the community.  
- **Security & Compliance**: Code may require review to meet licensing and security requirements before being released publicly.  

## Solution

Before making a project open source, require it to go through an InnerSource phase where:

1. The project is made available internally for contributions from other teams e.g. via an [InnerSource Portal](../2-structured/innersource-portal.md).
2. Clear [documentation](../2-structured/base-documentation.md) (including contribution guidelines), and [governance structures](../2-structured/governance-levels.md) are established.
3. Maintainers gain experience managing contributions, reviewing pull requests, and addressing issues.
4. Maintainers get to practice the soft skills required to support a community of people outside of their own team.
5. Internal adoption and success metrics are measured to determine if the project is ready for external release. Some possible metrics are detailed in the [Repository Activity Score](../2-structured/repository-activity-score.md).
6. Feedback loops are created to refine processes before engaging a broader open source audience.  

## Resulting Context

- Teams develop the skills necessary to manage open source projects effectively.  
- Contributor documentation and governance structures are established and tested.  
- Further internal teams start using the project (adoption), providing validation of the project's value before external release.
- The transition to open source is smoother, with better preparedness for external collaboration.  

## Rationale

Especially when an organization has never released any project as open source, that task may feel daunting. Being able to practice things internally can be a safer space for experimentation and failure.

If it turns out that a given InnerSource project does not gain enough adoption internally, the organization may decide to not make the project open source at all. This assumes that the organization is large enough to allow for a realistic test.

Allowing the maintainers of the project to practice the required skills internally mitigates risks, improves sustainability, and maximizes the chances of long-term success of the project.  

## Known Instances

- **MELI - Mercado Libre**
 - 

### MELI - Mercado Libre

We use badges to identify our projects at the stages we consider important in the maturity of an InnerSource project.
The first step for a project is to receive the InnerSource Ready badge, which indicates that the project meets the structure, artifacts, and documentation quality required for the initiative.
This stage also uploads project information to our internal InnerSource project portal, where it receives some visibility, allowing it to receive contributions and become better known within our teams.
We are currently reviewing our InnerSource stage flow, where a project will be able to use AI-based tools to automatically generate all the necessary requirements to be considered InnerSource Ready. This will allow us to focus more on making it active and attractive to the internal community.

[Transforming software development at Mercado Libre with InnerSource](https://medium.com/mercadolibre-tech/transforming-software-development-at-mercado-libre-with-innersource-016b35e1ded3)

## Status

- Initial

## Author(s)

- Sebastian Spier
- Fernando Correa

## Alias

- InnerSource as a Stepping Stone to Open Source
- InnerSource before Open Source
- InnerSource Incubation before Open Source
