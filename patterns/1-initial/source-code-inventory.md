## Title

Unified source code inventory 

## Patlet

Organizations sometimes may manage software, in particular source code as key company asset, with less rigorousness than other IT hardware inventories which may diminish the opportunities to maximize business value and control liability cost. An Organization level source code inventory can also exploit opportunities to identify and support potential valuable InnerSource assets.

## Problem

* Some InnerSource stakeholders do not value source code at the same level of other Organization assets.
* Legal Entities within the Organization want to select the right InnerSource projects to maximize outcome.
* InnerSource Program wants to support the right projects among all the potential candidates.
* There is no good consolidation of all source code and exploiting business value is ad-hoc.

## Context

* You work on Legal Entity within a complex Organization under continuous change (e.g., new acquisitions or changing business priorities).
* You cannot find all source code touched, shared and consumed within the Organization.
* You do not have a clear policy on default sharing level when creating a new project (e.g., Open, Inner or Closed Source).
* You cannot scan significant parts of the Organization's source code looking for duplication, similarity or code smells.
* You do not know the existing ratios of open source, inner source and closed source and their trend.
* You cannot measure the diversity of contributions and resulting value for a given project.
* You cannot identify and optimize tech stack diversity.
* You cannot identify technical debt and determine the priorities for retirement (e.g., dead APIs/source).

## Forces

* Fragmentation of source code hosting systems in the organization.
* Ad-hoc source code strategies scattered across the different Legal Entities in the organization.
* Continuously changing map of the relationships between: projects, repositories, products, tech stacks, domains, solutions, platforms, services, components, sub-systems, people, authors, teams, external repositories.
* Diverse software culture of teams across the organization (e.g., more open to collaboration or more siloed).

## Solutions

### Set up an Organization level live source code inventory

* Combination of manual and automated input data sources to a single source of truth including an API for custom extension
* Key meta-data about each repository:
  * Legal Entity
  * URL
  * Version control system (e.g., GIT or SVN).
  * Hosting vendor (e.g., GitHub, Gitlab or BitBucket) and hosting type (e.g., on-prem, private cloud or public cloud).
  * Sharing level (e.g., Open Source, InnerSource, Closed Source)
* Visualization in place to list all assets with options to filter based on meta-data
* Enable access to automated scanning tools

### Define a Source Code Strategy Assessment Framework

* Help to define a source code strategy including an explicit definition of policies at Organization and Legal Entity levels for:
  * Inventory
  * Sharing
  * Consumption
  * Contribution
  * Ecosystem
* Example of such a framework: [https://github.com/trieshard/source-strategy-assessment/blob/master/framework.md](https://github.com/trieshard/source-strategy-assessment/blob/master/framework.md)

## Resulting Context

### For the Organization, Legal Entity and Project maintainers

* We have explicit policies at Organization and Legal Entity level on source code strategy (e.g., where to create new repository or how to select the right sharing level)
* We can find all source code touched, shared and consumed within the Organization or Legal Entity and take actions as needed.
* We can measure the diversity of contributions and resulting business value for our project.
* We can identify technical debt and determine the priorities for retirement (e.g., dead APIs/source).

### For InnerSource governance

* We can scan significant parts of our Organization's source code looking for opportunities of reuse, duplication, similarity or code smells.
* We know the ratios of Open, Inner and Closed Source within the Organization so we can steer as needed.
* We can identify and optimize tech stack diversity.
* We can create awareness and culture shift on certain Legal Entities as needed (e.g., ratio of Open and InnerSource below average)

## Rationale

It creates a dynamic and extendable single source of truth for repositories to capture, visualize and act on source code repositories across the Organization. That helps to create awareness and focus efforts on the right direction. The Source Code Strategy Assessment Framework helps teams to understand the value of intentional explicit policies on how to manage source code. It helps to create both continuous improvement cycles and references within the Organization of what others are doing.

## Known Instances

This is under test at scale at:

* Philips

## Status

* Initial

## Author(s)

* [David Terol](https://github.com/dterol23)
* [Simao Williams](mailto://me@simaos.net)

## Acknowledgements (TBD)
