## Title

Open Source trumps InnerSource

## Patlet

Developers disregard InnerSource projects because they consider open source projects to be superior. Introducing a required evaluation of InnerSource projects before choosing an open source project increases the likelihood of the InnerSource projects to be adopted.

## Problem

People find the InnerSource project but, even if the InnerSource component meets their needs better than the respective open source component, they choose the open source component over the InnerSource component.

## Context

* People look for software through external search engines.
* Different Business Lines (BLs) are selecting different SW components to do the same function, resulting in inconsistencies in the user experience.
* There may be many silos in the company; it would then be difficult to reach the developer base across those silos.
* The company culture is based on strong governance.

## Forces

* There is a perception that the open source components are of higher quality and more reusable than the InnerSource components. This is caused by the common belief that open source always means many more developers and users and therefore higher quality. This is sometimes the case in open source but not always!
* The channels to get needed changes done are more established with open source (GitHub) than with internal components (GitHub Enterprise, Bitbucket, GitLab, Gerrit - possibly multiple installations in one company).
* Open source should be voluntary; mandating people to use internally developed software goes against open source principles.
* Internally developed components are potentially more suitable for corporate use if they are designed with that in mind.
* Using corporate licensed InnerSource components instead of using open source components with strong copyleft license avoids having to disclose IP
* It can be hard to find relevant projects in GitHub (especially if names are cryptic and keywords aren't used). See [Poor Naming Conventions](https://github.com/paypal/InnerSourcePatterns/pull/59).
* The consistent use of internally developed components potentially reduces the diversity of the internal software landscape compared to a situation where every business line chooses their own, favourite open source component.

## Sketch

![The landscape of effective and efficient software development](/assets/img/landscape-of-effective-and-efficient-software-development.png "The landscape of effective and efficient software development")

**Source:** [Commodification of Industrial Software: A Case for Open Source](https://www.semanticscholar.org/paper/Commodification-of-Industrial-Software%3A-A-Case-for-Linden-Lundell/54d6cb77a86e292ff1845eb910c1a1f258e6cee3), F. Linden, B. Lundell, P. Marttiin, Published 2009, Engineering, Computer Science, IEEE Software

## Solutions

* Corporate governance mandates that internally developed components are to be evaluated before open source component are selected.
* Make it easier to find relevant InnerSource components (see [InnerSource Portal](../2-structured/innersource-portal.md)).
* Assign maintainers to make sure proper open source processes are being followed within the leading repos.
* Increase the attractiveness of InnerSource components by providing “value add” services for them, such as automated CI/CD services, IaaS/PaaS, NPM organization/server linkages, ChatOps, etc.

## Resulting Context

* Developers select the best component regardless of whether it is open source or internally developed (InnerSource). They do so with full knowledge of the InnerSource component, its capabilities, and reasons why it is recommended.
* By doing so, InnerSource components end up being more widely and consistently used within the company.

## Known Instances

TBD

## Status

Initial

## Author

* As told to Padma Sudarsan, 2016-09-30
* Tim Yao
* Georg Gruetter (Robert Bosch GmbH)
* Russ Rutledge
* Johannes Tigges
* Sebastian Spier

## References

* Some interesting conversation threads from the time when this pattern was created can be found in [this PR](https://github.com/InnerSourceCommons/InnerSourcePatterns/pull/46/).
* [Commodification of Industrial Software: A Case for Open Source](https://www.semanticscholar.org/paper/Commodification-of-Industrial-Software%3A-A-Case-for-Linden-Lundell/54d6cb77a86e292ff1845eb910c1a1f258e6cee3), F. Linden, B. Lundell, P. Marttiin, Published 2009, Engineering, Computer Science, IEEE Software
