## Title

Assisted Compliance

## Problem

The team that owns the repository doesn't have a CONTRIBUTING.md; the task force needs them to have this to submit bug fixes.

## Context

* Teams owning the repository are not complying with mandates for having a CONTRIBUTING.md
* Compliance guys have to do a job; this is made difficult by teams resisting this.
* Teams owning the repository resist compliance-related mandates for having a CONTRIBUTING.md. Having this file is mandated in support of the InnerSource program, to ensure that there is a known and stated process for submitting PRs and having them be appropriately checked and accepted.
* Special task force for security and compliance: developers responsible for fixing these bugs across the company.
* Negotiations are being held but they are slow and little progress is made.
* The task force is discovering the needed information for a CONTRIBUTING.md as they investigate the problem.
* There is a checklist for being InnerSource compliant.
* There is a need to be Security compliant.
* There may be export control compliance and legal compliance requirements; a template is provided to repository owners

## Forces

* Teams have been resisting this; this ends up wasting time.
* Making documents part of the repo skeleton might be "rubber stamping"; better to have teams own this. So too much automation in this case is bad.

## Solution

* Rather than asking the resisting team to do the changes, the policing task force that discovers the lack of compliance create the documentation (in addition to negotiations)
* Taking the contributor perspective (contributors are motivated). They are writing the CONTRIBUTING.md documentation for those teams resistant to doing the fixes, doing this as pull requests. The discussion is then documented in the pull request. The resisting development teams then just correct mistakes.
* "Let us help you be compliant"
* You could do an audit to assess the state of compliance. Bots could be used to check compliance; and the state of compliance could show up in an internal portal.

## Resulting context

* Contributors become InnerSource champions; they both teach and guide those through the process in a gentler fashion than it would have been done before.
* Many projects pop up without governance; the first chance to interact with them is to help them setup their README.md and be compliant.

## Known instances

## Alias

* Helping repo owners be compliant by writing their CONTRIBUTING.md for them as a pull request
* Let us help you be compliant

## Authors

* Silona Bonewald
* Georg Gruetter

## Acknowledgements

* Erin Bank
* Tim Yao
