# Publishing completed patterns to InnerSourceCommons.org

There are two separate repositories needed for publishing reviewed and accepted patterns:

* [InnerSourcePatterns][patternsRepo]
* [InnerSourceCommons][commonsRepo]

## InnerSourcePatterns repository

This is a private repository where new ideas, donuts and patterns are published
and reviewed by the patterns community **prior to** publishing them on
[innersourcecommons.org][commons]. Inside of this repository we're using the 
standard GitHub workflow where we have one main branch - the master branch.
Contributions are done via fork and pull-requests.

## InnerSourceCommons repository

This is where finalized patterns will be published **after** they have
been reviewed and accepted by reviewers. Inside of this repository we're
using the standard GitHub workflow where we have one main branch - the master
branch. Contributions are done via fork and pull-requests. This repository
contains the sources for the GitHub pages website for innersourcecommons.org.


# Workflow

1. For each new pattern to be published, a new issue should be created in the [InnerSourcePatterns][patternsRepo] repository
   - the issue should contain the _name_ of the pattern and a _link_ to the accepted pattern inside of the [InnerSourcePatterns][patternsRepo] repository
2. Assign the issue to someone who can see the process through ex: a Trusted Committers (TC), community leader, or yourself
3. TBD - we have yet to deal with bringing over a finalized pattern.
   - whether we convert the pattern into a PDF, or keep it in markdown and where it lands on [InnerSourceCommons][commonsRepo], is yet to be determined



[commons]: http://innersourcecommons.org
[patternsRepo]: https://github.com/paypal/InnerSourcePatterns
[commonsRepo]: https://github.com/paypal/InnerSourceCommons
