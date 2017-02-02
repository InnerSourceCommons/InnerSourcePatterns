## Title
* Badly named SW components

## Problem
People can't find internally developed solutions becuse of poor naming of SW components.

## Context
* Reusable Software component(s) are available internally but users can't easily find these.
* This problem is more likely to occur where there are silos in the company (e.g., larger companies; smaller companies may have fewer opportunities for reuse of internally developed software). 
* The company traditionally has been bad at sharing across silos (people don't have the culture of sharing). 

## Forces
* Enough people are contributing things to inner sourcing that it is becoming hard to find components.
* No good internal search engine (or not connected to git repositories; and difficult to make this change happen)
* Users may not be able to find the people responsible even if they know where the common places are.
* People even when they know about inner source, they search, can't find something and become discouraged from looking at that site again.
* Hard to find stuff in github (especially if names are cryptic and keywords aren't used).

## Solution
* Improve findability within a repo (use meaningful project name; don't use code names for projects; put keywords into descriptions)
    - **note: problem/pattern: solution exists but people aren't following it**
        - **ask PayPal folks about their practices set up to address this problem**
        * Use tagging (tag repositories) (_validated_)
        * Use labels
        * Pull in Repo names, descriptions and README.md files into the search engine (not the code itself)
        * Instate a process change to first check for internal solutions for this problem
        * Concierge service (guide) to help product people find stuff. Might not scale but could be helpful in the beginning.
	-Encourage the community to identify redundancy and make recommendations for the better package to use. Could be a dedicated role within a company, someone with a complete overview of what is going on

## Known instances

## Desired Resulting Context
* Internal components are easily visible
* Developers looking for code can search for it and find it quickly.
* Developers are now looking internally for software components

## Status
Brainstormed pattern idea reviewed

## Authors
* Georg Grutter
* Erin Bank
* Padma Sudarsan
* Tim Yao
