## Title

Common Requirements

## Patlet

Common code in a shared repository isn't meeting the needs of all the project-teams that want to use it; this is solved through requirements alignment and refactoring.

## Problem

The common code in the shared repository isn't meeting the needs of all the projects that want to use it.  

## Context

Many projects are trying to use common code.  There is a shared repository that all the projects access.  This pattern applies if there is a Strong Code Owner [pattern to be written] or if there is weak code ownership, or no Benevolent Sponsor [pattern to be written]. Someone (or some project) wrote the code in the first place and contributed it to the repository. The common code is a small percentage of the overall deliverable from any of the projects.  Each project has its own delivery schedule, set of deliverables and customers.

## Forces

The project that made the code available has one set of needs. Its needs are similar to what some of the receiving organization wants, but not quite the same.
Requirements on code should be derivable from real customer needs.  

The needs of different customers are generally quite similar; however they might be expressed differently or weighted differently between customers. An example might be how some customers want some result presented in one way while others want it presented in the reverse order---it's simple to do the translation between them, but requires additional coding for one of the cases and the as a result the module that computes the result can't be reused by both customers.

Many customers want the supplier to help them know what they need. The company has many “Systems Engineers” writing requirements for the products.  These requirements are supposed to be a distillation of customer needs to guide development of the product.
Reusing code is an important goal to save the company time and money.  

## Solution

There are two aspects to solving this problem which should be done in parallel:

- Align the requirements of the projects so that the code that meets the requirements for one project also meets the needs for the other projects.
- Refactor the code into smaller pieces for which the many using projects can agree upon requirements.

Additionally, take advantage of customers expecting the supplier to help elucidate requirements. Bring about the alignment of requirements during the customer negotiations and influence the customers requirements rather than changing the component.

In the example presented above, the supplier helps both customers realize that they want the same thing, and it will save everyone effort (and money) if they agree to accept the result in the same format.

![Common Requirements](../../assets/img/CommonReqtsv2.jpg)

## Resulting Context

This might require negotiating requirements changes with the customer.  The changes might also require involvement by the sales teams and product managers to get alignment on the requirements.  The customer might need incentives, such as discounts, to agree to the changes.

A related pattern [pattern to be written] is a circular story-writing exercise reported at one company employing InnerSource.  

* The developers write a story to solve a problem in one way.  
* The program managers rewrite the story to better express their needs - keeping the essence the same. By the time it returns to developers though they don't recognize it as what they wanted to do in the first place and so balk at implementing it.  
* The solution to this pattern is to have more seats around the planning table so that story modifications are understood across the project not just in the developer or program manager camps.

## Known Instances

TBD

## Status

* Structured
* Drafted Aug 2016

## Author

Robert Hanmer
