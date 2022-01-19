# Title

Secure InnerSource

# Patlet

A collaborative InnerSource practice in a company benefits from a maximum level of shared source code, to allow participants from outside of the core team to contribute and re-use. In contrast to that, a common security practice is to give users the least amount of access they need to perform their job. By implementing various security measures and defining multiple sharing levels for different types of code, sharing and collaboration can be facilitated while minimizing the risks of code-leak and malicious code injection.

# Problem

A successful InnerSource program needs openness and transparency (e.g. access to code, issues, documentation, and roadmap), while good security practice is to minimize access, following the [principle of least privilege][principle-of-least-privilege]. How to balance and address these seemingly contradicting requirements?

# Story

Most companies developing proprietary software will have source code that they do not want to leave the company, as this may harm their business. Think what would happen when the major competitors would have access to their latest features and would know what they are working on next. Even when the source code management system is not compromised from the outside, malicious employees or interns could leak code to the competition. Or think about gaining access to sensitive systems and services using credentials that are hard-coded in source code. Or injection of malicious code into a product’s codebase.

Restricting access typically reduces the risk of these things from happening, but at the same time hampers collaboration and re-use.

# Context

- The organization has an InnerSource Program Office (ISPO), or a similar group, steering the success of the InnerSource initiative in the organization. One of their goals is to stimulate maximum openness and transparency in the organization.
- The organization has a Security Team constraining unnecessary data access to prevent the organization from data-leakage and malicious code injection.
- The Security Team, ISPO, and engineering teams are not regularly talking with each other.
- “Closed Source” is the default in the organization when creating new repositories, i.e. only the team owning/maintaining the code has access to the given repo.
- “Shared Source” within the organization isn’t common practice. Organizational teams aren’t familiar with what code or information should or shouldn’t be placed in shared repositories.

# Forces

- A successful InnerSource program needs openness and transparency (e.g. access to code, issues, documentation, and roadmap)
- Good security practice is to minimize access, following the [principle of least privilege][principle-of-least-privilege].
- The Security Team is more familiar with security principles at conceptual level than security practices at operation level. Some of the security policy is good at concept but hard to execute at operation level.
- Engineering Teams focus more on service/product development or knowledge sharing than on measures for data protection. While it is easy for Engineering Teams to decide to close or open the repository, they are usually not willing to spend time on judging how to reach a balance between both.
- No one-fit-all guideline or rules to judge what data or process is secured or not. That much depends on data sensitivity and overall security policy/infrastructure.

# Solutions

To reduce the misalignment and possible misunderstanding between the teams involved, it is key to bring everybody together so that they are able to express their goals and concerns, and to develop shared language together.

After that they can decide as a group how to drive the execution of the specific goals, and what to do to reduce the risks that were identified.

## Setup

Start by bringing the Security Team, Engineering Teams and ISPO together, to discuss the goals of the InnerSource initiative, as well as any security concerns.

Some helpful practices are:

- Form an InnerSource task force with representatives of Security, Engineering, and the ISPO to align on the goals of InnerSource adoption.
- Start with a limited scope to lower the potential security impact caused by the adoption.
- List the security concerns and figure out mitigation plans together within the task force.
- Clearly define the different sharing levels of repositories that you want to use in your organization *(Note: A more elaborate model is described under **Extension: An Additional Sharing Level**)*:
    - **PUBLIC** - open source: accessible for all SW developers in the world
    - **SHARED** - inner source: accessible for all SW developers in the company
    - **CLOSED** - closed source: only accessible to named individuals in the company

## Execution

How to allow for a greater amount of SHARED repositories in the organizations depends a lot on the specific business domain, related regulations, and concerns identified in the initial meetings of the InnerSource task force as mentioned above.

The following lists some common concerns that many organizations may have, and how to address them.

### Security measures or policies to prevent malicious access to shared repositories (and reduce the impact of the same)

- Employee training about security awareness and individual responsibility
- Enhanced security measures on source code management system such as:
    - Eliminate anonymous access to source code (all users must be logged in to your Source Code Management tool), log the access to repositories
    - regular review by organization owners on created repositories and granted permission to organization members.
    - Set up [Single Sign-On][single-sign-on] against your organization’s identity provider. This will automatically revoke access in case somebody leaves the organization.
    - regular rotation of access token
    - 2FA authentication enforced
    - encourage the use of signed commits
- Monitoring the source code management system for suspicious access e.g.:
    - access from new accounts or new devices
    - downloading source code from new devices
    - downloading a great amount of source code in the monitoring period.

### Prevent sensitive information in shared repositories

Build up agreed security requirement of InnerSource like:

- No hard-coded usernames and/or passwords.
- Repo does not contain client information.
- Business critical algorithms may not be placed in SHARED repositories.
- Code from SHARED repositories will not be distributed directly to Production.
- Leveraging secrets scanning tools to scan the target repositories (including code, test cases, and helper scripts) for confidential data such as accounts, passwords, access tokens, keys, and other sensitive data.
- Keep repositories CLOSED, but expose metadata about the projects (i.e. through an [InnerSource Portal][innersource-portal]), and create some kind of access request workflow. This way you could still give people access to the code, but not open it to everyone by default. *(Note: The full model is described under **Extension: An Additional Sharing Level**)*

### Extension: An Additional Sharing Level

In some cases, introducing additional sharing levels might be appropriate. Use cases include semi-sensitive code that can be shared with larger groups of people, but for example not with all interns and contractors. Or not with people with certain nationalities or working in a specific country, in order to comply with [export control][export-control] regulations. Or legacy repositories that are not (yet) ready to be made available as INTERNAL. Without the additional level, (too) many repositories will end up as CLOSED in an existing organization, as all businesses will considering their code 'special', requiring extra protection and/or 'not ready for opening up company wide yet (e.g. hard-coded secrets, but also technical debt, lacking documentation).

And given 'findability' is also important, adding the additional level that facilitates findability, but still provides a light-weight gate seems to be a good way out to steer projects out of closed source.

As concrete example, which allows repositories to be discovered, even though there is no company-wide access, consider the following sharing levels:

- **PUBLIC** - open source: findable and accessible for all SW developers in the world
- **INTERNAL** - inner source: findable and accessible for all SW developers in the company
- **RESTRICTED** - restricted source: findable for all SW developers in the company, low-friction process to gain full access.
- **CLOSED** - closed source: only accessible to named individuals and not findable via the search engine for other SW developers in the company.

Repositories with RESTRICTED sharing level are included in the [central catalog][innersource-portal] and/or fed into the central search mechanism, together with their `README.md` and some meta information. Their content, however, is not accessible without following a light-weight access request process. This can for example be contacting one of the code owners or some other request mechanism described in the `README.md` file.

Notes:

- This will likely have an impact on contributions due to the additional step to access the code.
- It is feasible to use a tool that automatically adds the `README.md` and some other meta-data to an internal repository in GitHub, allowing the GitHub search feature to include this data in the search results.

# Resulting Context

*What is the situation after the problem has been solved? The original context is changed indirectly by way of the solution. Often this section can include discussion of the next possible Patterns/problems introduced. This section can be short in content - the solution may not introduce new problems or change much context.*

Many times the InnerSource adoption in an organization will [start as an experiment][start-as-an-experiment], with a small number of SHARED repositories.

If the task force (and with that the Security Team) collaborate in this early phase already, they can make joint experiences with how security-related issues can be identified and addressed. This also allows the Security Teams to build up more confidence on InnerSource from a security angle.

With the increased confidence and lessons learned from this experiment, the task force faces less pushback when rolling out InnerSource to more repositories.

Most importantly, the changes implemented through this pattern lead to more code being shared between teams, and closed source will no longer be the obvious default.

- Definition of sharing levels for repositories, with accompanying guidance of which level to use for what type of repository contents.
- Increased InnerSource awareness in Security team
- Increased security awareness in engineering teams
- Increased collaboration between ISPO, Engineering and Security teams
- More code will be shared between teams, closed source is no longer the obvious default
- Concrete implementation of security practices, potentially (partially) automated.

# Known Instances

TBD

# Status

- Initial

# Authors

- Bart Golsteijn
- Jack Yang
- Sebastian Spier

[principle-of-least-privilege]: https://en.wikipedia.org/wiki/Principle_of_least_privilege
[single-sign-on]: https://en.wikipedia.org/wiki/Single_sign-on
[export-control]: https://en.wikipedia.org/wiki/Export_control
[innersource-portal]: ../2-structured/innersource-portal.md
[start-as-an-experiment]: ../2-structured/start-as-experiment.md
