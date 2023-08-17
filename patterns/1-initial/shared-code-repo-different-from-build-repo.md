## Title

Source Repo different from Deployment Chain

## Patlet

Deal with the overhead of having shared code in a separate repository that isn't the same as the project-specific one that is tied to production builds.

## Problem

The InnerSource code repo is different from the repos used in production builds. This causes friction each time changes are made to the InnerSource repo.

## Context

Shared code is kept in an accessible repository that is different from SCMs used by the products that use the shared code. Integration, testing and builds might be automated with the product SCM but not the shared code repo.

## Forces

When the shared code is in a separate repository, any use of it could result in forking modifications, leading to complications later when the source is changed by the owning organization. When starting an InnerSource program, it is possible there are many source control management systems ([SCM](https://en.wikipedia.org/wiki/Version_control)) in use; and, frequently, a new SCM is used for the InnerSource program. Migrating from one SCM to another is not trivial. Since the using organization has a copy, they might not be aware of changes to the shared code. It is difficult and expensive for the using organization to change their automated build process to use a foreign repo.

## Solution

* Continuous integration, not only for testing but also in production (aligns with DevOps).
* Known marker that shows the code hasn't been modified.
* Improved communication between teams.
* Accountability when you screw up; hold people accountable.
* Publish good stats about the negative implications of errors and processes for making this everyone's problem.

## Resulting Context

Ideally, overhead is minimized or eliminated. Or integrate the shared code repository in the production build.  

## Known Instances

TBD

## Status

Initial
