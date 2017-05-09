## Title

- Poor Naming Conventions Impact Findability 

## Problem

People cannot find the internally developed solutions that they need due to poor naming conventions applied to InnerSource projects.

## Context

- Reusable software components exist and are accessible.
- The company is large, siloed and does not have a history of code sharing and collaboration. 
- The volume of inner source contributions is high.
- A search engine exists, but required fixes to discover code reliably would be costly, complex.

## Forces

- Search engine issues (such as lack of connection to codes sources) lead to problems with findability 
- The code is findable, but information on ownership is not provided.
- People become discouraged from engaging in inner source when they search and can't find what they need.
- It can be difficult enough to find stuff in github, this is compounded if names are cryptic and keywords aren't used.
- Renaming components can lead to broken builds.

## Solution

- Improve findability of components by using meaningful names.
- Choose a naming scheme that references the coponents context (e. g. the
  owning organization, products in which it is used)
- Add metadata to components
    - In the component description
    - Tag the repository (_validated_)
- Pull Repo names, descriptions, and README.md files into the search
  engine (not the code itself)
- Enforce naming conventions for components by making them a precondition for 
  entering the automated release process. (_validated at PayPal_)
- Establish a _concierge service_ (guide) to help people find components. Might 
  not scale but could be helpful in the beginning.  
- Encourage the community to identify redundancy and make recommendations for 
  the better component to use and thus deduplicate. Could be a dedicated role 
  within a company, someone with a complete overview of what is going on

## Known instances

## Desired Resulting Context

- Internal components are visible.
- Developers looking for code can search for it and find it quickly.
- Developers are now looking internally for software components.
- Increased reuse, faster time to market.
- Increased collaboration.
- Higher quality code.
- Increased opportunities for innovation.

## Status

Brainstormed pattern idea reviewed

## Authors

- Georg Grutter
- Erin Bank
- Padma Sudarsan
- Tim Yao

