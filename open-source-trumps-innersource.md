## Title
Open Source trumps InnerSource
* ORIGINAL: The Invented Here bias or internally developed

## Statement of Problem
* People find the InnerSource project but, after all things are considered, even if the InnerSource component meets their needs, they still go with the open source component.
* ORIGINAL: Developers tend to select open source components rather than internally developed components, which results in poorer quality components or also makes it difficult to sustain internal component development.
* NEW: Different BLs are selecting different SW components to do the same function, resulting in inconsistencies in the user experience.

* PROBLEM: Not finding stuff internally 
    - perhaps an easy fix through a mechanism to provide visibility of the internal SW components?
    - force: many silos in the company; difficult to reach the developer base across those silos
    - force: hard to find stuff in github (especially if names are cryptic and keywords aren't used)
    - solution: process change to first check for internal solutions for this problem
    - solution: tool with a central view (but people are more inclined to google externally than look internally)
* PROBLEM: People are aware of internal options and open source options but people still tend to use the open source components

## Context
* ORIGINAL: Internal component is well written and there are no quality problems with the software. Whatever component is selected does not need to be forked. The internal component was created and more complete before the open source was available. People are aware there is an internally developed software component.
* ADDED: People look for software through external search engines.

## Forces 
* There is a perception that the open source components are higher quality and more reusable. The channels to get any needed changes are more obvious with open source than with internal components. Can easily grab the open source whereas internally developed component has less visibility and ease of availability. (This could be separate Pattern). All things equal, they gravitate towards open source.
* Open source should be voluntary; mandating people to use internally developed software goes against open source principles.
* Internally developed components should have advantages over competing open source. If you can clearly demonstrate this, it can be persuasive.
* Part of the reason this is a problem: if different teams are picking different open source components, the situation makes interoperability and integration more difficult; and this could potentially impact the user experience (inconsistency in behaviors).

## Sketch
See figure 1 in https://drive.google.com/open?id=0B7_9iQb93uBQNlJ0YU5wWmpWYUU 

## Resolution
Corporate requirement that internally developed components should be evaluated before we go outside to search for open source component. If the open source component is now more mature, replace the internally developed with the open source. Create some extrinsic rewards to encourage them (initially). Make it easier to find the internal component (discoverability and visibility). Make the process simple and aligned with well known open source methods.
Provide an internal instance of GitHub Enterprise or an well publicized external GitHub organization repo to allow employees to easily find internally developed solutions. Assign maintainers to make sure proper open source processes are being followed within the leading repos. Provide “value add” services linked to the formal repo solution such as automated CI/CD services, IaaS/PaaS, NPM organization/server linkages, ChatOps, etc.

## Resulting Context
Developers do select the best component regardless of whether it is open source or internally developed. Internally developed software components are then more widely reused.

## Author
As told to Padma Sudarsan, 2016-09-30

## Status
Draft, incomplete (in progress)
