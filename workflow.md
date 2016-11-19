# InnerSource Patterns Workflow

This document describes the workflow for writing, reviewing and publishing
InnerSource ideas, donuts and patterns. It utilizes Pull Requests to facilitate
collaborative reviews.

There are two separate repositories needed for this workflow:

* [InnerSourcePatterns][patternsRepo]
* [InnerSourceCommons][commonsRepo]

### InnerSourcePatterns repository

This is a private repository where new ideas, donuts and patterns are published
and reviewed by the patterns community **prior to** publishing them on
[innersourcecommons.org][commons] ,Inside of this
repository we're using the standard GitHub workflow where we have one main
branch - the master branch.  Contributions are done via fork and pull-requests.

### InnerSourceCommons repository

This is where ideas, donuts and patterns will be published **after** they have
been reviewed and accepted by the reviewers. Inside of this repository we're
using the standard GitHub workflow where we have one main branch - the master
branch. Contributions are done via fork and pull-requests. This repository
contains the sources for the GitHub pages website for innersourcecommons.org.

## Workflow

### Working inside of the InnerSourcePatterns repository

# [Create an issue] for each new idea, donut or pattern in the 
  [patterns repository][patternsRepo]. The issue should
  * contain the name of the pattern,
  * contain a short description (at least the problem) and
  * be labeled with the appropriate label (_idea_, _donut_, _pattern_) 
# Create a new branch either in your clone or fork of the 
  [patterns repository][patternsRepo]. Please use the following pattern for
  naming branches: `pattern/<patternName>`. Example: 
  `pattern/contractedContributor`.
# Create a _Markdown_ file with the description of the _idea_, _donut_ or
  _pattern_ and store it either the `ideas`, `donuts` or `patterns` 
  subdirectories. Commit and push.
# Once your contribution is ready to be reviewed, create a pull request 
  targeted at `master` and label it with either _idea_, _donut_ or _pattern_ 
  and _Ready for Review_.
# Reviewer can now use the PR features to comment on the pattern. 
# After the review is complete, the reviewers should remove the label
  _Ready for Review_ and label the pattern _Accepted_ or don't apply any label
  in case rework is necessary.
# In case of required rework, the author should apply the labels
  _Ready for Review_ and _Revised_ to indicate that a 2nd review is requested.
# Once a pattern was labeled _Accepted_ by the reviewers, one of the TCs of the
  [patterns repository][patternsRepo] will then merge it to `master` and 
  close the associated issue.

### Publishing a InnerSource pattern on innersourcecommons.org (InnerSourceCommons repository)

* for each new pattern which should be published a new issue should be created
  * the issue should contain the name of the pattern and a link to it inside of
  the InnerSourcePatterns repository
* every publishing process of a pattern idea, donut or draft should start on a
dedicated branch, originating from `master` starting with
`feature/[issue-number]---[title]`

## License

tbd: we have to agree what license we apply to the 
[patterns repository][patternsRepo] by default. 
 
[commons]: http://innersourcecommons.org
[patternsRepo]: https://github.com/paypal/InnerSourceCommons-patterns
[commonsRepo]: https://github.com/paypal/InnerSourceCommons
