## Title
Open Source trumps InnerSource

## Patlet

People find the InnerSource project but, after all things are considered, even if the InnerSource component meets their needs, they still go with the open source component.

## Statement of Problem
* People find the InnerSource project but, even if the InnerSource component meets their needs better than the respective open source component, they choose the open source component over the InnerSource component.

## Context
* People look for software through external search engines.
* Different Business Lines (BLs) are selecting different SW components to do the same function, resulting in inconsistencies in the user experience.
* There may be many silos in the company; it would then be difficult to reach the developer base across those silos.
* The company culture is based on strong governance.

## Forces 
* There is a perception that the open source components are of higher quality and more reusable than the InnerSource components.
* The channels to get any needed changes are more established with open source (GitHub) than with internal components (GitHub Enterprise, Bitbucket, GitLab, Gerrit - possibly multiple installations in one company). 
* Open source should be voluntary; mandating people to use internally developed software goes against open source principles.
* Internally developed components are potentially more suitable for corporate use if they are designed with that in mind. 
* Using corporate licensed InnerSource components instead of using open source components with strong copyleft license avoids having to disclose IP
* It can be hard to find stuff in github (especially if names are cryptic and keywords aren't used). See [Poor Naming Conventions](https://github.com/paypal/InnerSourcePatterns/pull/59).
* The consistent use of internally developed components potentially reduces the diversity of the internal software landscape compared to a situation where every business line chooses their own, favourite open source component.

## Sketch
See figure 1 in https://drive.google.com/open?id=0B7_9iQb93uBQNlJ0YU5wWmpWYUU 

## Resolution
* Corporate governance mandates that internally developed components are to be evaluated before open source component are selected.
* Make it easier to find the internal component (See [InnerSource Portal](https://github.com/InnerSourceCommons/InnerSourcePatterns/blob/master/patterns/2-structured/innersource-portal.md)). 
* Provide an internal instance of GitHub Enterprise or a well publicized external GitHub organization repo to allow employees to easily find internally developed solutions.
Assign maintainers to make sure proper open source processes are being followed within the leading repos.
* Increase the attractiveness of InnerSource components by providing “value add” services for them, such as automated CI/CD services, IaaS/PaaS, NPM organization/server linkages, ChatOps, etc.

## Resulting Context
Developers select the best component regardless of whether it is open source or internally developed, but they do so with full knowledge of the inner source component, its capabilities, and reasons why it is recommended. Internally developed software components are then more widely and consistently used within the company.

## Author
As told to Padma Sudarsan, 2016-09-30

## Status
Draft
