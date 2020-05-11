# How to Contribute

First, checkout our complete list of patterns: [public GitHub](https://github.com/InnerSourceCommons/InnerSourcePatterns#reviewed-patterns-proven-and-reviewed) OR [Google Doc](https://docs.google.com/spreadsheets/d/17KPZdCoquTnYSj03pX4v2vn8lrSYO_6HK20u1cwaLPg/edit#gid=0)

We encourage beginners seeking answers to jump in by creating `donut` patterns (filling in the problem, context, forces and resulting context fields but leaving the solution blank) as a way of asking the InnerSource Commons community for help (to find a proven solution or to brainstorm things to try). 

Anyone can offer reviews and comments for [in-progress patterns](https://github.com/InnerSourceCommons/InnerSourcePatterns/pulls). We encourage experts to pad their experience - these are hoped to become part of an Inner Source handbook one day.

We work together via GitHub, WebEx, Slack, etc. Do not hesitate to join the [#innersourcecommons](https://isc-inviter.herokuapp.com/) or #innersource-patterns Slack channels and ask to be included in the [patterns meetings](/meta/meetings.md) (there is an email list).

Select one of the following ways to contribute, to learn our workflow:

* A. [Write a new pattern](#a-writing-a-new-pattern)
* B. [Discuss/Record early ideas](#b-discussing-early-ideas-in-issues)
* C. [Review existing patterns](#c-interacting-with-patterns-reviews)
* D. [Take part in our Meetings and Roles](/meta/meetings.md) <-- link to separate doc


# A. Writing a New Pattern

The below steps can be used to create a new pattern. The use-case here is that you have an idea or problem in your head and can confidently fill out the barest of pattern fields (Solution doesn't need to be known). If you are unsure your idea is ready for this, [discuss it in an issue first](#b-discussing-early-ideas-in-issues).

The simplest way to create a pattern is with your browser (see below).  
[Like the command-line better? See here for alternate instructions.](/meta/technical-git-howto.md)

<img alt="Creating a new pattern" src="/assets/img/write-new-pattern.png" width="70%">

1. Login to GitHub & inside the [patterns web repo](https://github.com/InnerSourceCommons/InnerSourcePatterns), click on the 'Create new file' button
2. Name the file like this example: "project-management-time-pressures.md"
3. Use the [pattern template](https://raw.githubusercontent.com/InnerSourceCommons/InnerSourcePatterns/master/meta/pattern-template.md) to create your new [markdown](/meta/markdown-info.md) file with the description of your fledgling pattern; it does not need to be complete, as you can add to it later
4. Enter a commit message
   * If you are asked to 'Commit directly' vs 'Create a new branch', see [branching details](#use-branches-when-creating-new-patterns) below.
5. Propose this new file and then also create a Pull Request (PR)

You're done! This creates a separate branch and creates a Pull Request (PR) all in one fell swoop! PR's are the mechanism we use for our Review process. See next steps in [Interacting with Pattern Reviews](#c-interacting-with-patterns-reviews).


## Use Branches When Creating New Patterns
We develop new patterns in branches with the naming convention:  
`pattern/<title-of-pattern-here>`.

If you are asked to 'Commit directly...' vs 'Create a new branch...'

* Assure you select **'Create a new branch...'** and name the branch like this example: "pattern/project-management-time-pressures". 
* This occurs when writing a new pattern via the web interface (section A above).
* Only [Trusted Committers](/meta/trusted-committers.md) (TC's) are asked this; we are adding most contributors as TC's.


## Other Tips For Submissions

* Place each sentence on a new line.
_GitHub_ allows leaving comments on a line-by-line basis.
Review and comment on the content of submitted text is much easier if there are multiple lines on-which to leave comments.
Sentences on consecutive lines will be collapsed into a single paragraph (like this one) for the final reader of the content.

# B. Discussing Early Ideas in Issues

If you feel that you need extra advice when dealing with patterns, please [open an issue](https://github.com/InnerSourceCommons/InnerSourcePatterns/issues). This process is only needed when contributing early ideas that you are uncertain about. 

Here are tips on starting this discussion:

* [Create a new ticket](https://github.com/InnerSourceCommons/InnerSourcePatterns/issues/new), add a concise title, and describe your problem. Think about the context of your problem and your expected output. Where do you see this problem most? What is the setup of your business and organization? Do you have opinions/ideas on what causes or leads-to the problem?
* Ask any questions that you are unsure about. Are you unsure if this problem belongs here? Are you unsure on how to frame and explain the problem?
* [Apply the label](https://help.github.com/articles/applying-labels-to-issues-and-pull-requests/) `Early Idea`. Labels can be found in the right column settings.

After this process, it is our turn to drive you through the pattern creation process. We will help to land your idea and check if there are existing similar patterns.



# C. Interacting with Patterns Reviews

A pattern is said to be "in-review" or being "Reviewed" when we have a Pull Request with some amount of Pattern detail filled out. We then communally review, and comment-on, and OK these "in-review" patterns. Usually, we first look for a pattern with all the fields filled out, and then go through TWO peer-reviews.

## Editing a pattern that is in-review
Go ahead, edit away - we can always go back - and we encourage action over discussion.

<img alt="How to edit an existing pattern" src="/assets/img/edit-existing-pattern.png" width="70%">

## Reviewing a pattern
FIXME Explain how to add review comments and accepting a review. Basically, this is all done through Githubs web GUI around Pull Requests.

FIXME Give tips for good reviews. We have done both interspersed comments, or pattern-wide advise. Be constructive. If you can fix the problem, [edit the PR](#editing-a-pattern-that-is-in-review) instead of leaving a comment.

## Our Review Process
Below are the procedural steps in our Review process:

1. Decide which Maturity level your pattern is in: `Donut (Lacks solution)`, `Unproven`, or `Proven`; these all describe what state the *Solution* is in.
2. Decide which Review Step you are in: Usually `Incomplete` or `Do 1st Review`
3. Reviewers can now use the PR features to comment on the pattern.
4. In most cases, we do two reviews, and the PR's labels should reflect `Do 2nd Review` etc.
5. After reviews are complete, the reviewers or author should Revise and Finalize the pattern, eventually labeling it with  `Accepted`.
6. Once a pattern is `Accepted` by the reviewers, one of the [Trusted Committers](/meta/trusted-committers.md) (most authors are by this point) can Merge the PR on Github. This places the .md file into the master branch / root directory.

## Completed Patterns
When completed patterns (reviewed and accepted) are ready to be published from this InnerSourcePatterns repo to a Gitbook (PDF), [see our separate Publishing instructions](/meta/publishing.md).
