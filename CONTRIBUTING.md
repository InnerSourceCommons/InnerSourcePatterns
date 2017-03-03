# How to Contribute

First, checkout our complete list of patterns: [Google Doc](https://docs.google.com/spreadsheets/d/17KPZdCoquTnYSj03pX4v2vn8lrSYO_6HK20u1cwaLPg/edit#gid=0) OR [public GitHub](https://github.com/paypal/InnerSourcePatterns#reviewed-patterns-proven-and-reviewed)

We encourage beginners seeking answers to jump in by creating `donut` patterns (filling in the problem, context, forces and resulting context fields but leaving the solution blank) as a way of asking the InnerSource Commons community for help (to find a proven solution or to brainstorm things to try). 

Anyone can offer reviews and comments for [in-progress patterns](https://github.com/paypal/InnerSourcePatterns/pulls). We encourage experts to pad their experience - these are hoped to become part of an Inner Source handbook one day.

We work together via GitHub, WebEx, Slack, etc. Do not hesitate to join the [#innersourcecommons](https://isc-inviter.herokuapp.com/) or #innersource-patterns Slack channels and ask to be included in the [patterns meetings](/meta/meetings.md) (there is an email list).

Select one of the following ways to contribute, to learn our workflow:

* A. [Write a new pattern](#a-writing-a-new-pattern)
* B. [Discuss/Record early ideas](#b-discussing-early-ideas-in-issues)
* C. [Review existing patterns](#c-interacting-with-patterns-reviews)
* D. [Take part in our Meetings and Roles](/meta/meetings.md) <-- link to separate doc


# A. Writing a New Pattern

The below steps can be used to create a new `donut`, `idea`, or complete pattern. The use-case here is that you have a relatively thought-out idea or problem in your head and can confidently fill out the barest of pattern fields (Solution doesn't need to be known). If you are unsure your idea is ready for this, [discuss it in an issue first](#discussing-early-ideas-in-issues).

The simplest way to create a pattern is with your browser:

1. Assure you are logged into GitHub & go to the [patterns web repo](https://github.com/paypal/InnerSourcePatterns)
2. Click on the 'Create new file' button
3. Name the file like this example: "project-management-time-pressures.md"
4. Use the [pattern template](https://raw.githubusercontent.com/paypal/InnerSourcePatterns/master/meta/pattern-template.md) to create your new [markdown](/meta/markdown-info.md) file with the description of your _idea_, _donut_, or _pattern_
5. Enter a commit message
  * If you are asked to 'Commit directly' vs 'Create a new branch', see [branching details](#use-branches-when-creating-new-patterns).
6. Propose this new file and then also create a Pull Request (PR)

Your done! This creates a separate branch and creates a Pull Request (PR) all in one fell swoop! PR's are the mechanism we use for our multi-step Review process. See next steps in [Interacting with Pattern Reviews](#c-interacting-with-patterns-reviews).

Like the command-line better? *As an alternative, you can utilize git's native command line instead*. [We have a separate set of technical instructions here](/meta/technical-git-howto.md).


## Use Branches When Creating New Patterns
We develop new patterns in branches with the naming convention:  
`pattern/<title-of-pattern-here>`.

If you are asked to 'Commit directly...' vs 'Create a new branch...'

* Assure you select **'Create a new branch...'** and name the branch like this example: "pattern/project-management-time-pressures". 
* This occurs when writing a new pattern via the web interface (section A above).
* Only [Trusted Collaborators](/meta/trusted_collaborators.md) (TC's) are asked this; we are adding most contributors as TC's.



# B. Discussing Early Ideas in Issues

If you feel that you need extra advice when dealing with patterns, please open an issue in the [ticketing system](https://github.com/paypal/InnerSourcePatterns/issues). This process is only needed when contributing early ideas that you are uncertain about. 

Here are tips on starting this discussion:

* [Create a new ticket](https://github.com/paypal/InnerSourcePatterns/issues/new).
* Add a concise title like this example: "pattern/badly-named-piles"
* Describe your problem. Think about the context of your problem and your expected output. Where do you see this problem most? What is the setup of your business and organization? Do you have opinions/ideas on what causes or leads-to the problem?
* Ask any questions that you are unsure about. Are you unsure if this problem belongs here? Are you unsure on how to frame and explain the problem?
* [Apply the label](https://help.github.com/articles/applying-labels-to-issues-and-pull-requests/) `Idea`. Labels can be found in the right column settings.

After this process, it is our turn to drive you through the pattern creation process. We will help to land your idea and check if there are existing  similar patterns.



# C. Interacting with Patterns Reviews

A pattern is said to be "in-review" or being "Reviewed" when we have a Pull Request with some amount of Pattern detail filled out. We then communally review, and comment-on, and OK these "in-review" patterns. There are multiple steps involved, sometimes requiring multiple re-writes, and peer-reviews. Usually though, we first look for a pattern with all the fields filled out, and then go through TWO peer-reviews.

Our workflow is done through Pull Requests (PR's) and Branches. Branches are meant to separate content, so that multiple people and patterns can exist all at once. Pull Requests (PR's) are used to bring online discussion/review about a specific Inner Source pattern. 

FIXME Explain how to add content to in-review patterns. Explain how to add review comments and accepting a review.

Below are the major steps in our Review process:

1. Label your Pull Request with `pattern`. Additionally decide whether to label it with `idea`, `donut`, or `draft` and `Ready for Review` or `Incomplete`
2. Reviewers can now use the PR features to comment on the pattern.
3. In case of required rework, the author should apply the labels `Ready for Additional Review` and/or `Revised` to indicate that a 2nd review is requested.
4. After reviews are complete, the reviewers or author should remove the label `Ready for Review` and label the pattern `Accepted`.
5. Once a pattern is `Accepted` by the reviewers, one of the [Trusted Collaborators](/meta/trusted_collaborators.md) (most authors are by this point) can  Merge the PR on Github. This places the .md file into the master branch / root directory.

When completed patterns (reviewed and accepted) are ready to be published from this InnerSourcePatterns repo to the InnerSourcePatterns Gitbook, [see our separate PUBLISHING.md instructions](/meta/publishing.md).