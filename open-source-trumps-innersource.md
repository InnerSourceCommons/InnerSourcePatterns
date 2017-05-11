## Title
Open Source trumps InnerSource

## Statement of Problem
* People find the InnerSource project but, after all things are considered, even if the InnerSource component meets their needs, they still go with the open source component.

## Context
* People look for software through external search engines.
* Different Business Lines (BLs) are selecting different SW components to do the same function, resulting in inconsistencies in the user experience.

## Forces 
* There is a perception that the open source components are higher quality and more reusable. The channels to get any needed changes are more obvious with open source than with internal components. Can easily grab the open source whereas internally developed component has less visibility and ease of availability. (This could be separate Pattern). All things equal, they gravitate towards open source.
* Open source should be voluntary; mandating people to use internally developed software goes against open source principles.
* Internally developed components should have advantages over competing open source. If you can clearly demonstrate this, it can be persuasive.
* Part of the reason this is a problem: if different teams are picking different open source components, the situation makes interoperability and integration more difficult; and this could potentially impact the user experience (inconsistency in behaviors).
* Depending on the regulations within a company, it might be easier to use a corporate licensed, InnerSource component than an open source component which is licensed in a way that requires the company to disclose IP.
* There may be many silos in the company; it would then be difficult to reach the developer base across those silos.
* It can be hard to find stuff in github (especially if names are cryptic and keywords aren't used). See [Poor Naming Conventions](https://github.com/paypal/InnerSourcePatterns/pull/59).

## Sketch
See figure 1 in https://drive.google.com/open?id=0B7_9iQb93uBQNlJ0YU5wWmpWYUU 

## Resolution
* Corporate requirement that internally developed components should be evaluated before we go outside to search for open source component. If the open source component is now more mature, replace the internally developed with the open source. Create some extrinsic rewards to encourage them (initially). Make it easier to find the internal component (discoverability and visibility). Make the process simple and aligned with well known open source methods.
* Provide an internal instance of GitHub Enterprise or an well publicized external GitHub organization repo to allow employees to easily find internally developed solutions. Assign maintainers to make sure proper open source processes are being followed within the leading repos. Provide “value add” services linked to the formal repo solution such as automated CI/CD services, IaaS/PaaS, NPM organization/server linkages, ChatOps, etc.
* Create a tool with a central view of internally available software, but be aware that people are more inclined to google externally than look internally.

## Resulting Context
Developers do select the best component regardless of whether it is open source or internally developed. Internally developed software components are then more widely reused.

## Author
As told to Padma Sudarsan, 2016-09-30

## Status
Draft, incomplete (in progress)
