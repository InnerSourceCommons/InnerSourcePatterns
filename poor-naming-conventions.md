## Title
* Poor Naming Conventions Impact Findability 

## Problem
People cannot find the internally developed solutions that they need due to poor naming conventions applied to InnerSource projects.

## Context
* Reusable software components exist and are available internally.
* Larger, siloed company. 
* The company does not have a history of code sharing and collaboration. 
* High volume of inner source contributions.
* Search engine fixes would be costly and complex and are unlikely to be implemented.

## Forces
* Search engine issues (such as lack of connection to codes sources) lead to problems with findability 
* The code is findable, but information on ownership is not provided.
* People become discouraged from engaging in inner source when they search and can't find what they need.
* It can be difficult enough to find stuff in github, this is compounded if names are cryptic and keywords aren't used.

## Solution
* Improve findability within a repo. Use meaningful project name; don't use code names for projects; put keywords into descriptions.
    - **note: problem/pattern: solution exists but people aren't following it**
        - **ask PayPal folks about their practices set up to address this problem**
        * Use tagging (tag repositories) (_validated_)
        * Use labels
        * Pull Repo names, descriptions, and README.md files into the search engine (not the code itself)
        * Instate a process change to first check for internal solutions for this problem
        * Concierge service (guide) to help product people find stuff. Might not scale but could be helpful in the beginning.
	-Encourage the community to identify redundancy and make recommendations for the better package to use. Could be a dedicated role within a company, someone with a complete overview of what is going on

## Known instances

## Desired Resulting Context
* Internal components are visible.
* Developers looking for code can search for it and find it quickly.
* Developers are now looking internally for software components.
* Increased reuse, faster time to market.
* Increased collaboration.
* Higher quality code.
* Increased opportunities for innovation.

## Status
Brainstormed pattern idea reviewed

## Authors
* Georg Grutter
* Erin Bank
* Padma Sudarsan
* Tim Yao
