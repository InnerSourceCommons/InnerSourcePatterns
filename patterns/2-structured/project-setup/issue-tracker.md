## Title

Issue Tracker Use Cases

## Patlet

The InnerSource host team fails to make not only plans and progress but also context for changes transparent. This is solved by increasing the use cases for the project issue tracker to also serve brainstorming, implementation discussion, and feature design.

## Problem

A team develops a component that many teams in the organization depend on. It
uses a standard issue tracker for tracking open bugs and feature requests.
However, the context in each entry is very limited. As a result potential
contributors have no way of knowing what change exactly each issue is talking
about.

## Context

The InnerSource project tooling is all setup. However, the project issue tracker
is mainly used for sharing progress. In InnerSource projects there are many more
use cases that an issue tracker can be used for that make remote, asynchronous
communication easier.

## Forces

- Contributors would like to understand whether the feature that they are missing is already on the roadmap. With a lot of context missing in issues through it is impossible to decide whether existing issues match the contributing team's needs.
- As a result a lot of duplicate issues are being opened that the host team has to deal with.
- As context in open issues is so limited contributors are unable to help the host team by implementing some easier issues that are open already. As a result a lot of work remains in the hands of the host team.
- With a strong focus on verbal communication it is impossible to discern after a couple months or years why a certain feature was being chosen for implementation. As a result refactorings, in particular simplifying the component becomes an exercise in project archaeology and brain picking of people who remember what was discussed.

## Solution

Embrace the "written over verbal" philosophy not only for pure software
development but also during the planning phase of new features:

- For bugs, planned features and feature ideas create separate issues. In each of those include as much information as possible so that potential external contributors are able to understand the context. Ideally, in particular for easier changes, include enough information for external contributors to support the host team by implementing the functionality in question.
- Potentially use the issue tracker as a channel to ask questions. This is in particular helpful if you are lacking other communication sources to tackle user questions.
- Make use of tags and categories in order to distinguish issues used for different purposes.
- For starting a brainstorming session asynchronously, open an issue for gathering ideas. When discussion is starting to calm down, summarize the points identified in this issue in a separate document. Post that for review as a pull request to drill deeper into individual points that still need clarification. The resulting document can be used to publish the results in other appropriate channels as well as for future reference.
- Most issue tracker implementations allow for issue templates. Make use of those not only to collect commonly needed information for bug reports but also include hints about what kind of information is needed for the other usage types.

## Resulting Context

- Making more use of the project's issue tracker for communication enables external contributors to follow along and make better decisions on what to contribute.
- A focus on structured written communication enables host team members to participate remotely.
- Consistently communicating in writing means that passive documentation on project decisions accumulates as a by-product instead of needing added attention.
- Consistently using public communication channels leads to more humans following a discussion. This means that there are more knowledgeable humans that can answer questions, chime in on open issues, or point out flaws in planned features that would otherwise be found only much later.
- Moving discussions to a public discussion medium creates an opportunity for potential future contributors to lurk, follow along, get comfortable and learn the ways of the project long before they have the first need to get involved.

## Known Instances

* Europace AG

## Authors

Isabel Drost-Fromm

## Status

Structured
