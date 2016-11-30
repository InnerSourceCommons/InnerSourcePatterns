## Title
Common Requirements

## Context
Many projects are trying to use common code.  There is a shared repository that all the projects access.  This pattern applies if there is a Strong Code Owner [pattern to be written] or if there is weak code ownership, or no Benevolent Sponsor [pattern to be written]. Someone (or some project) wrote the code in the first place and contributed it to the repository. The common code is a small percentage of the overall deliverable from any of the projects.  Each project has its own delivery schedule, set of deliverables and customers.  
Statement of Problem:  The common code in the shared repository isn’t meeting the needs of all the projects that want to use it.  

## Problem Statement
The common code in the shared repository isn’t meeting the needs of all the projects that want to use it.  

## Forces
The project that made the code available has one set of needs. Its needs are similar to what some of the receiving organization wants, but not quite the same.
Requirements on code should be derivable from real customer needs.  
The needs of different customers are generally quite similar; however they might be expressed differently or weighted differently between customers.
Many customers want the supplier to help them know what they need.
The company has many “Systems Engineers” writing requirements for the products.  These requirements are supposed to be a distillation of customer needs to guide development of the product. 
Reusing code is an important goal to save the company time and money.  

## Solution
Align the requirements of the projects so that the code that meets the requirements for one project also meets the needs for the other projects.  Decompose the code into smaller pieces for which the many using projects can agree upon requirements.  

## Resulting Context
This might require negotiating requirements changes with the customer.  It might also require other involvement by the sales teams and product managers to get alignment on the requirements.  

## Author
Robert Hanmer, 22 Aug 2016, 20 Sept 2016  

## Status
Draft pattern
