This repository serves as the collection-point, ideation hub, and process behind the [InnerSource Commons'](http://innersourcecommons.com) InnerSource Patterns--a set of proven and reviewed solutions to InnerSource problems. These patterns illustrate beneficial activities and behaviors found in [organizations who apply InnerSource methodologies](http://paypal.github.io/InnerSourceCommons/getting-started/).

# What are Inner Source Patterns?

Patterns are a way of describing a repeatable, proven solution to a problem with a context. They follow a simple form that helps people wanting to implement the solution to understand the constraints on the problem, the forces that must be balanced and the resulting context (the situation you are left with after the solution is applied). In inner sourcing, patterns can provide a way for the InnerSource Commons participants to concisely share information with each other, improving the practice of inner sourcing. Each of the patterns are divided into Title, Problem Statement, Context, Forces, and Solutions as their main sections.

* [`What are patterns?` Youtube videos](http://bit.ly/innersource_patterns_videos) - Watch a set of 2-5 min youtube videos explaining Inner Source Patterns
* [Pattern Discussion Webinar](https://youtu.be/i-0IVhfRVFU) - We held a webinar 2017-03-16 to live-discuss a donut pattern (go to 24:30 for the discussion). This is an illustration of the review process we follow. Also see the [June 1, 2017 O'Reilly Webinar on InnerSource Patterns](http://www.oreilly.com/pub/e/3884).
* [Detailed Pattern Background and Examples](https://drive.google.com/open?id=0B7_9iQb93uBQbnlkdHNuUGhpTXc) (PDF) -  Get a detailed understanding of why and how to interact with our patterns during this presentation from Tim Yao and Padma Sudarsan from the ISC Fall Summit in 2016.
* [Pattern Template File](meta/pattern-template.md) - View a skeleton inner source pattern to get an idea on what goes into a new pattern!


# How can you use Inner Source Patterns?

Patterns must be used in a thoughtful manner. They cannot be blindly applied. In most cases, you will need to adapt the given solution to your own situation; but the information given in the pattern, defining the context (immovable constraints) and forces (constraints that can be changed and balanced against each other), should help you do this. Note that you will also need to determine if there are additional constraints (company context and company forces) that apply to your particular company/organization that must be added to the pattern (as a kind of filter). These additional constraints may require additional solution steps to be applied.

The pattern form is useful for describing proven patterns but it can also be used for *brainstorming solutions* where patterns are not yet established, since the form gives a structured way for thinking about a problem. You could also create a *donut pattern* (filling in the problem, context, forces and resulting context fields but leaving the solution blank) as a way of asking the InnerSource Commons community for help (to find a proven solution or to brainstorm things to try).


# How to Contribute?

[See our CONTRIBUTING.md for details on getting involved](CONTRIBUTING.md)

We encourage beginners seeking answers to jump in by creating ''donuts'' (problems without solutions). We encourage experts to pad their experience - these are hoped to become part of a book one day. Anyone can offer reviews and comments for [in-progress patterns](https://github.com/paypal/InnerSourcePatterns/pulls). 

We work together via Github, Webex, Slack, etc. Do not hesitate to join the [#innersourcecommons](https://isc-inviter.herokuapp.com/) or #innersource-patterns slack channels and ask to be included in the [patterns meetings](/meta/meetings.md) (there is an email list).


# List of Patterns

The below lists all known patterns. They are grouped into four stages of maturity.

#### Reviewed Patterns (proven and reviewed)

* [30 Day Warranty](https://github.com/paypal/InnerSourcePatterns/blob/master/30-day-warranty.md) - *a pattern for getting a reluctant code-owning team to accept code submissions from outside their team.*
* [Common Requirements](https://github.com/paypal/InnerSourcePatterns/blob/master/common-requirements.md) - *The common code in the shared repository isn't meeting the needs of all the projects that want to use it.*
* [Contracted Contributor](https://github.com/paypal/InnerSourcePatterns/blob/master/contracted-contributor.md) - *Solutions for when associates wanting to contribute to an InnerSource project are discouraged from doing so by their line management*
* [Dedicated Community Leader](https://github.com/paypal/InnerSourcePatterns/blob/master/dedicated-community-leader.md) - *When starting an InnerSource initiative it is crucial to nominate the right people to lead the communities. Selecting the wrong persons and/or not providing enough capacity for them risks wasted effort and ultimately the failure of the InnerSource initiative. The person needs both communication skills as well as technical.*
* [Review Committee](https://github.com/paypal/InnerSourcePatterns/blob/master/review-committee.md) - *A formal review committee is setup within an org to "officiate" particular inner source projects with resources, etc.*

#### Reviewed Pattern Ideas (not yet proven but reviewed)

* [Modular Code](https://github.com/paypal/InnerSourcePatterns/blob/master/modular-code.md) - *Management does not want to spend the extra resources needed to develop modular components and make them available in a visible repository for others to use.*
* [Poor Naming Conventions](https://github.com/paypal/InnerSourcePatterns/blob/master/poor-naming-conventions.md) - *People can't find the internally developed solutions that they need due to poor naming conventions. This causes frustration in finding inner source solutions and a reduction in code reuse.*

#### Pattern Drafts (proven, not yet fully reviewed)

* [Assisted Compliance](https://github.com/paypal/InnerSourcePatterns/pull/74) - *Helping repo owners be compliant by writing their CONTRIBUTING.md for them as a pull request.*
* [Reluctance to Receive Contributions](https://docs.google.com/document/d/13QDN-BpE_BixRFVGjao32n4Ctim0ROXAHbBWMBOijb4/edit) - *Core owner of shared asset is reluctant to take contributions due to the required maintenance that comes with them.*
* [What Before How or Services Documentation](https://docs.google.com/document/d/1_N1wsQeDusfIcNy-O2ZXenY3PL7ZbvkUDRZxGUuegZw/edit?usp=drive_web) - *A lack of common understanding between different management tiers creates funding barriers and increases the risk that solutions will not deliver required business outcomes.*
* [Overcome Acquisition Based Silos - Developers](https://github.com/paypal/InnerSourceCommons/wiki/Overcome-Acquisition-based-Silos)
* [Overcome Acquisition Based Silos - Managers](https://github.com/paypal/InnerSourceCommons/wiki/Overcome-Acquisition-based-Silos)
* [Open Source Trumps InnerSource](https://github.com/paypal/InnerSourcePatterns/pull/46)
* [Overcoming Project Management Time Pressures](https://github.com/paypal/InnerSourcePatterns/pull/47)
* [Start as Experiment](https://github.com/paypal/InnerSourcePatterns/pull/66) - *An inner source initiative is considered but not started, because management is unsure about its outcome and therefore unwilling to commit to the investment.*
* [Include Product Owners](https://github.com/paypal/InnerSourcePatterns/pull/71) - *Key Performance Indicators (KPIs) for Product Owners are primarily product focused, and don't consider areas such as collaborative development. This results in a lower level of engagement with inner source projects.*

#### Pattern Ideas (not yet proven; brainstormed)

* [Don't Bother Looking](https://github.com/paypal/InnerSourcePatterns/pull/60)
* [Junkyard Styled Inner Sourcing](https://github.com/paypal/InnerSourcePatterns/pull/61)
* [Different Repo For Shared Code Than the Product Org Uses In Its Build](https://github.com/paypal/InnerSourceCommons/wiki/Different-repo-for-shared-code-than-the-product-org-uses-in-its-build)
* [Incentive Alignment](https://github.com/paypal/InnerSourceCommons/wiki/Donut:-Creating-Developer-Incentive-Alignment-for-InnerSource-Contribution)
* [Change the Developers Mindset](https://github.com/paypal/InnerSourceCommons/wiki/Pattern:-change-the-developers-mindset)
* [Share Your Code to Get More Done - Likely Contributors Variant](https://github.com/paypal/InnerSourceCommons/wiki/Pattern:-Share-Your-Code-to-Get-More-Done---Likely-Contributors-Variant)

#### Pattern Donuts (needing a solution)

* [Donut 3: How to Defeat the Hierarchical Constraints](https://github.com/paypal/InnerSourceCommons/wiki/Donut-3%3A-how-to-defeat-the-hierarchical-constraints)
* [Donut 5: Project Management Time Pressures](https://github.com/paypal/InnerSourceCommons/wiki/Donut-5:-project-management-time-pressures)
* [Donut 6: Organizational Mindset Change](https://github.com/paypal/InnerSourceCommons/wiki/Donut-6:-organizational-mindset-change)
* [Donut 8: Not Invented Here](https://github.com/paypal/InnerSourceCommons/wiki/Donut-8:-Not-invented-here)
* [Donut: Bad Weather For Liftoff](https://github.com/paypal/InnerSourceCommons/wiki/Donut:-Bad-weather-for-liftoff)
* [Get Contributions Despite Silo Thinking](https://github.com/paypal/InnerSourcePatterns/pull/38)


# Pattern Meta Info

The topics below cover information about how we define, operate, and upkeep this collection of patterns.

* [Pattern Template](meta/pattern-template.md) - Start a new pattern with a copy of this
* [Pattern States](meta/pattern-states.md) - Definitions of the various states and review steps a pattern can be in
* [Trusted Collaborators](meta/trusted-collaborators.md) - Who these people are, what elevated rights they get, and how you can become one
* [Publishing](meta/publishing.md) - How we take completed, reviewed, proven patterns and publish them toward an online book
* [Markdown Info](meta/markdown-info.md) - Markdown is the ascii text format our patterns are written in; this document briefly defines how we use it
* [Contributing](CONTRIBUTING.md) - How to interact with our group, create your own patterns, or take part in our review-process; Github / Web centric instructions
  * [Alternate Command-line steps](meta/technical-git-howto.md) - If you want to contribute a pattern using `git` from the command-line, this is your document
  * [Meetings](meta/meetings.md) - Become involved with the people and communications of the Inner Source Patterns group

# Related References
* [A pattern language for pattern writing](http://hillside.net/index.php/a-pattern-language-for-pattern-writing), Meszaros and Doble

# Licensing

![Creative Commons License](https://i.creativecommons.org/l/by-sa/4.0/88x31.png)

InnerSourcePatterns by [InnerSourceCommons.org](http://innersourcecommons.org) is licensed under a [Creative Commons Attribution-ShareAlike 4.0 International](http://creativecommons.org/licenses/by-sa/4.0/) License.

