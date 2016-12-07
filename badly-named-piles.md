## Title
* Badly named piles
* Not finding stuff internally 

## Problem
People can't find internally developed solutions - they might not find it in badly named piles.

## Context
* Software component(s) are available internally but users can't easily find these.
* This problem is more likely to occur where there are silos in the company (e.g., larger companies; smaller companies may have fewer opportunities for reuse of internally developed software). 
* The company traditionally has been bad at sharing across silos (people don't have the culture of sharing). 

## Forces
* Enough people are contributing things to inner sourcing that it is becoming hard to find components.
* No good internal search engine (or not connected to git repositories; and difficult to make this change happen)
* Users may not be able to find the people responsible even if they know where the common places are.
* People even when they know about inner source, they search, can't find something and become discouraged from looking at that site again.
* There might not be enough information to make the SW component reusable.
* People might be inclined to doubt internal software.
* Many silos in the company; difficult to reach the developer base across those silos.
* Hard to find stuff in github (especially if names are cryptic and keywords aren't used).

## Solution
* Improve findability within a repo (use meaningful project name; don't use code names for projects; put keywords into descriptions)
    - **note: problem/pattern: solution exists but people aren't following it**
        - **ask PayPal folks about their practices set up to address this problem**
        * Use tagging (tag repositories) (_validated_)
        * Use labels
        * Pull in Repo names, descriptions and README.md files into the search engine (not the code itself)
        * Instate a process change to first check for internal solutions for this problem
        * Tool with a central view (but people are more inclined to google externally than look internally)
        * Concierge service (guide) to help product people find stuff. Might not scale but could be helpful in the beginning.
        * Need some very visible lighthouse projects that start using inner source components and make positive statements about the inner source program.

## Known instances

## Desired Resulting Context
* Internal components are easily visible
* Developers looking for code can search for it and find it quickly.
* Developers are now looking internally for software components
* Search results are combined (internal and external)

## Status
Brainstormed pattern idea in progress

## Authors
* Georg Grutter
* Erin Bank
* Padma Sudarsan
* Tim Yao
