## Title

Enterprise level source code inventory to drive business value and catalyze InnerSource

## Patlet

Enterprises manage software, in particular source code as key company asset, with less care and rigorousness than other IT hardware inventories which diminishes the opportunities to maximize business value and control liability cost. An unambiguous, complete, inexpensive, up-to-date, actionable inventory of Enterprise's source code repositories exploits opportunities to identify and support potential valuable InnerSource assets.

## Problem

* InnerSource stakeholders do not value source code at the same level of others Enterprise assets.
* Business Units want to select the right InnerSource projects to maximize outcome.
* InnerSource Program wants to support the right projects among all the potential candidates.
* There is no good consolidation of all source code and exploit of business value is ad-hoc.

## Context

* You work on a complex organization under continuous change (e.g., new acquisitions, changing business priorities...)
* You cannot find all source code touched, shared and consumed within your organization.
* You do not have a clear policy on default sharing level when creating a new project (e.g., Open, Inner or Closed Source)
* You cannot scan significant parts of your organization's source code looking for duplication, similarity, code smells...
* You do not know the ratios of open source, inner source and closed source.
* You cannot measure the diversity of contributions and resulting value for a given project.
* You cannot identify and optimize tech stack diversity.
* You cannot identify technical debt and determine the priorities for retirement (e.g., dead APIs/source).

## Forces

* Fragmentation of source code hosting systems in your organization.
* Ad-hoc source code strategies scattered across your organization.
* Continuously changing map of the relationships between: projects, repositories, products, tech stacks, domains, solutions, platforms, services, components, sub-systems, people, authors, teams, external repositories.
* Diverse of software culture of different teams across your organization (e.g., more open to collaboration, more siloed...).

## Solutions

### Set up an Enterprise level live source code inventory

* Unambiguous, complete, inexpensive, up-to-date, actionable inventory of all source code of your organization
* Combination of manual and automated input data sources to a single source of truth including an API for custom extension
* Key meta-data about each repository:
  * Business Unit and Project
  * URL
  * Version control system (e.g., GIT, SVN...)
  * Hosting vendor (e.g., GitHub, Gitlab...) and hosting type (e.g., on-prem, private cloud, public cloud...)
  * Sharing level (e.g., Open Source, InnerSource, Closed Source)
* Visualization in place to list all assets with options to filter based on meta-data
* Enable access to automated scanning tools

### Define a source code strategy Framework

* It will help parts of the organization to move from accidental to intentional source code strategy including an explicit definition of your strategy for:
  * Inventory
  * Consumption
  * Contribution
  * Ecosystem
* Example of such a framework: [https://github.com/trieshard/source-strategy-assessment/blob/master/framework.md](https://github.com/trieshard/source-strategy-assessment/blob/master/framework.md)

## Resulting Context

### For Business and Project maintainers

* We have an explicit policy on source code strategy (e.g., where to create new repository or how to select the right sharing level)
* We can find all source code touched, shared and consumed within our Business or Project and take actions on them as needed.
* We can measure the diversity of contributions and resulting business value for our project.
* We can identify technical debt and determine the priorities for retirement (e.g., dead APIs/source).

### For InnerSource governance

* We can scan significant parts of our Enterprise's source code looking for opportunities of reuse, duplication, similarity, code smells...
* We know the ratios of open source, inner source and closed source within the Enterprise so we can steer as needed.
* We can identify and optimize tech stack diversity.
* We can create awareness and culture shift on certain organizations as needed (e.g., ratio of Open and InnerSource below average)

## Rationale

It creates a dynamic and extendable single source of truth for repositories to capture, visualize and act on source code repositories across your organization. That helps to create awareness and focus efforts on the right direction. The source code maturity framework helps teams to understand the value of intentional explicit policies on how to manage source code. It helps to create both continuous improvement cycles and references within your organization of what others are doing.

## Known Instances

This is under test at scale at:

* Philips

## Status

* Initial

## Author(s)

* [David Terol](https://github.com/dterol23)

## Acknowledgements (TBD)
