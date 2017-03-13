# THIS IS A SAMPLE PATTERN
IT IS HERE ONLY AS AN EXAMPLE AND IS NOT COMPLETE.  
[Please join us in reviewing this and other patterns](https://github.com/paypal/InnerSourcePatterns/pulls).

## Title
* Don't bother looking
* Not looking for stuff internally 

## Problem
People don't bother looking for internally developed solutions - they might not find the repo at all or be aware of its existence.

## Context
* Software component(s) are available internally but users can't easily find these.
* This problem is more likely to occur where there are silos in the company (e.g., larger companies; smaller companies may have fewer opportunities for reuse of internally developed software). 
* The company traditionally has been bad at sharing across silos (people don't have the culture of sharing). 

## Forces
* No good internal search engine (or not connected to git repositories; and difficult to make this change happen)
* Users may not know there are common places to find internally developed solutions.
* People don't expect to find solutions internally.
* Many silos in the company; difficult to reach the developer base across those silos (a communications problem).
* People might not want to use internal SW because they don't believe it will be helpful
    - might not be maintained
    - might have poor reusability
    - if someone put out a SW internally, the expectation is that they wouldn't have time to support it (vs. open source options)

## Solution
* Pull in Repo names, descriptions and README.md files into the search engine
* Implement process change to first check for internal solutions for this problem
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
