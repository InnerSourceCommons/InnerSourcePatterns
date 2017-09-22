## Title

Improve Findability 

## Also Known As

Badly Named Piles
Poor Naming Conventions

## Context

Reusable software component(s) are available internally but users can't easily find them.
This problem is more likely to occur in large, federated companies where different organizational units operate as silos.
Historically, the company does not have a culture of sharing code across silos.

## Problem

People can't find the internally developed solutions that they need due to poor naming conventions.

## Forces

- The volume of contributions to inner source is impacting the ability to find components.
- The internal search engine is not robust, or is not connected to git repositories (it can be difficult to make this change happen)
- Cryptic naming conventions for projects and lack of keywords contribute to reduced findability.
- People may lose confidence in the integrity of inner source and become discouraged from engaging when they search and don't find what they need.


## Solution
To help improve findability for inner source projects:
- Provide guidelines for applying clear, meaningful naming conventions to projects, and reinforce the importance of avoiding cryptic code names.
- Include keywords in project descriptions.
- Apply tagging to repositories (validated).
- Use labels where possible.
- If possible, pull repository names, descriptions, and README.md files into the search engine (not the code itself).
- Instate a concierge service (guide) to help product people find stuff. (This approach might not scale, but could be helpful at the beginning of a program.) 


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

