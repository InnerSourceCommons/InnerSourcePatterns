# InnerSource Patterns Workflow

This document describes the workflow for writing, reviewing and publishing
InnerSource patterns.

## General information

There are two separate repositories needed for this workflow:

* [InnerSourceCommons](https://github.com/paypal/InnerSourceCommons)
* InnerSourcePatterns [todo: create and add link to repo]

### InnerSourcePatterns repository

Inside of this repository we're using the standard GitHub workflow where we
have one main branch - the master branch. Contributions are done via fork and
pull-requests.

### InnerSourceCommons repository

Inside of this repository we're using the standard GitHub workflow where we
have one main branch - the master branch. Contributions are done via fork and
pull-requests. This repository contains the sources for the GitHub pages
website for innersourcecommons.org.

## Workflow description

### Working inside of the InnerSourcePatterns repository

* for each new pattern a new issue should be created
  * the issue should contain the name of the pattern,
  * a short description (at least the problem) and
  * being labeled (pattern-draft, pattern, donut, ...)
* every pattern idea, donut or draft should start on a dedicated branch,
originating from `master` starting with `pattern/[issue-number]---[title]`
* once a pattern idea/donut/draft is ready for review, authors should start a PR
and label it with either `Donut`, `Idea` or `Pattern` and also with
`Ready for Review`
* once a pattern was accepted by the reviewers, it should be labeled `Accepted`
and merged to `master`

### Publishing a InnerSource pattern on innersourcecommons.org (InnerSourceCommons repository)

* for each new pattern which should be published a new issue should be created
  * the issue should contain the name of the pattern and a link to it inside of
  the InnerSourcePatterns repository
* every publishing process of a pattern idea, donut or draft should start on a
dedicated branch, originating from `master` starting with
`feature/[issue-number]---[title]`
 
