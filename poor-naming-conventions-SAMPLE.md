# THIS IS A SAMPLE PATTERN
IT IS HERE ONLY AS AN EXAMPLE AND IS NOT COMPLETE.  
[Please join us in reviewing this and other patterns](https://github.com/paypal/InnerSourcePatterns/pulls).

## Title
* Poor Naming Conventions Impact Findability

## Problem
People can't find the internally developed solutions that they need due to poor naming conventions.

## Context
* Reusable Software component(s) are available internally but users can't easily find them.
* This problem is more likely to occur in larger, siloed companies. 
* Historically, the company does not have a culture of sharing code across silos. 

## Forces
* Enough people are contributing things to inner sourcing that it is becoming hard to find components.
* Poor internal search engine (or not connected to git repositories; and difficult to make this change happen)
* Users may not be able to find the people responsible even if they know where the common places are.
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
