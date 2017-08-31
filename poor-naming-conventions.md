## Title

Poor Naming Conventions Impact Findability 

## Also Known As

Badly Named Piles

## Context

Reusable Software component(s) are available internally but users can't easily find them.
This problem is more likely to occur in large, federated companies where different organizational units operate as silos.
Historically, the company does not have a culture of sharing code across silos.

## Problem

People can't find the internally developed solutions that they need due to poor naming conventions.

## Forces

- Enough people are contributing things to inner sourcing that it is becoming hard to find components.
- Poor internal search engine (or not connected to git repositories; and difficult to make this change happen)
- Users may not be able to find the people responsible even if they know where the common places are.
- People become discouraged from engaging in inner source when they search and can't find what they need.
- It can be difficult enough to find stuff in GitHub, this is compounded if names are cryptic and keywords aren't used.

## Solution

Improve findability within a repository. don't use code names for projects; put keywords into descriptions.
note: problem/pattern: solution exists but people aren't following it

-  Use meaningful project name; 
-  Use tagging (tag repositories) (validated)
-  Use labels
-  Pull Repository names, descriptions, and README.md files into the search engine (not the code itself)
-  Instate a process change to first check for internal solutions for this problem
-  Concierge service (guide) to help product people find stuff. Might not scale but could be helpful in the beginning. 
-  Encourage the community to identify redundancy and make recommendations for the better package to use. Could be a dedicated role within a company, someone with a complete overview of what is going on.

<img alt="Poor naming conventions" src="/assets/img/poornamingconventions.jpg" width="70%">

## Known instances
None known as of yet---this is a pattern idea until it is proven.

## Desired Resulting Context

- Internal components are visible.
- Developers looking for code can search for it and find it quickly.
- Developers are now looking internally for software components.
- Increased reuse, faster time to market.
- Increased collaboration.
- Higher quality code.
- Increased opportunities for innovation.

## Status

Brainstormed pattern idea reviewed 2017-03-11.

## Authors

- Georg Grutter (Robert Bosch GmbH)
- Diogo Fregonese (Robert Bosch GmbH)
- Erin Bank (CA Technologies)
- Padma Sudarsan (Nokia)
- Tim Yao (Nokia)

