# How to Contribute

1. [Take part in our Meetings and Roles](#roles-tasks-and-meetings)
2. [Learn our github workflow](#innersource-patterns-workflow) (Add & Review patterns)

We encourage beginners seeking answers to jump in by creating ''donuts'' (filling in the problem, context, forces and resulting context fields but leaving the solution blank) as a way of asking the InnerSource Commons community for help (to find a proven solution or to brainstorm things to try). We encourage experts to pad their experience - these could easily become part of a book one day. Anyone can offer reviews and comments for in-progress patterns. 

We work together via github, phone-meetings, Slack, etc. Do not hesitate to join the [#innersourcecommons](https://isc-inviter.herokuapp.com/) or #innersource-patterns slack channels and ask to be included in the patterns meetings (there is an email list).

[To learn about our technical github workflow, see below.](#innersource-patterns-workflow)

# Roles, Tasks, and Meetings

Become involved with the people and communications of Inner Source Patterns:

* See our [complete list of patterns](https://docs.google.com/spreadsheets/d/17KPZdCoquTnYSj03pX4v2vn8lrSYO_6HK20u1cwaLPg/edit#gid=0) (discussed so far)
* See Action Items for all who are interested in patterns:
  * Add any missing pattern or add new ones anytime
  * Add your name if you want to be on the author team. Mark your name in blue if you want to be the coordinator.
  * Add your name to the reviewer team if interested in the pattern
* Coordinator role (per pattern): Setup meetings with pattern Authors to work through the patterns. Note the team can use Google docs or any other tool to work on the pattern. However github is the final destination for the patterns. It is recommended that github be kept as up-to-date as possible. Please keep the status and target updated for each pattern in the spreadsheet.
* Every 2 weeks (or even sooner if necessary) we will have a meeting with a larger team and review the patterns.
* Folks who want to join the pattern mining team but are new to this please let us know. We can bring you up to speed. 

If you don't have access yet to the google drive shared folder, contact @thyao, @silona or @cedric on the Slack channel. They can add you to the google group. @cedric or @duane can ensure you have access to the #innersource-patterns slack channel.

Note: A transition from Wiki to Github is in the works. For the time being, some of both are being done until all is transferred. Default to github.


# InnerSource Patterns Workflow

The rest of this document describes the workflow / process for writing, reviewing and publishing
InnerSource ideas, donuts and patterns. It utilizes Pull Requests to facilitate
collaborative reviews.

## Workflow

![branch, commit, pull request, review](assets/img/branchCommitPullReview.png)

The basic steps below can be thought of as *branch*, *commit*, *pull request*, and *review*.

1. [Create an issue](https://github.com/paypal/InnerSourcePatterns/issues) for each new idea, donut or pattern. The issue should:
  * contain a title of the pattern in format ex: ``pattern/badly-named-piles``
  * contain a short description (at least the problem) and
  * be labeled with the appropriate label (_idea_, _donut_, _pattern_)
2. Create a new branch either in your browser, clone, or fork of the
  [patterns repository][patternsRepo]. Please use the similar convention for
  naming branches: `pattern/<pattern-name>`. Example:
  `pattern/contracted-contributor`.
3. Create a _Markdown_ file with the description of the _idea_, _donut_ or
  _pattern_ and store it in the main directory. Commit and push.
4. Once your contribution is ready to be reviewed, create a pull request (PR)
  targeted at `master` and label it with _pattern_. Additionally decide whether
  to label it with _idea_, _donut_, or _draft_ and _Ready for Review_ or _Incomplete_
5. Reviewers can now use the PR features to comment on the pattern.
6. In case of required rework, the author should apply the labels
  _Ready for Additional Review_ and/or _Revised_ to indicate that a 2nd review is requested.
7. After reviews are complete, the reviewers or author should remove the label
  _Ready for Review_ and label the pattern _Accepted_.
8. Once a pattern is labeled _Accepted_ by the reviewers, one of the TCs of the
  [patterns repository][patternsRepo] will then move the pattern to either the
  `ideas`, `donuts` or `patterns` subdirectories, merge it to `master` and
  close the associated issue.

When completed patterns (reviewed and accepted) are ready to be published from this InnerSourcePatterns repo to the InnerSourceCommons repo, [see our seperate PUBLISHING.md instructions](PUBLISHING.md).



# Technical steps

If you are unfamiliar with git or github, you can either:
  * follow the technical instructions below (command line) or 
  * [use Github's GUI-based application](https://desktop.github.com/) (its rather nice and makes everything easier for a beginner).

If you want to contribute, the workflow is done through branches. You can see the
available branches of this repository at [the branches URL](https://github.com/paypal/InnerSourcePatterns/branches)
or by clicking on the 'branches' button on the main page.

Branches and Pull Requests (PR's) are used to bring discussion/review about a specific inner source pattern.
New patterns should use, as a first approach, the
[pattern template](resources/pattern-template). There are indeed multiple ways to start a discussion:
* Pull request your branch and the maintainers will receive a notification.
* Ask directly for comments to some of the maintainers. You can mention them
using the symbol '@' prior their nickname.
* Add reviewers to the Pull Request on the website - this sends requests to review your work

Please, when starting a new pattern, be aware that this does not exist. You can
have a look at some of the existing patterns in this repository.

## How can you create a branch?

In first place you need to create a branch (no need to ask for permission!).
For this, let's clone the repository:

```
$ git clone https://github.com/paypal/InnerSourcePatterns.git
```

Then you should see some message similar to the following one:

```
Cloning into 'InnerSourcePatterns'...
remote: Counting objects: 73, done.
remote: Compressing objects: 100% (37/37), done.
remote: Total 73 (delta 35), reused 73 (delta 35), pack-reused 0
Unpacking objects: 100% (73/73), done.
Checking connectivity... done.
```

This means that you successfully cloned the repository. Then we need to access
the directory and check that everything is as expected.

```
$ cd InnerSourcePatterns/
$ ls
first-test.md  README.md  second-test.md  third-test.md  workflow.md
$ git branch
* master
$ git branch -a
* master
  remotes/origin/HEAD -> origin/master
  remotes/origin/master
  remotes/origin/master-public
  remotes/origin/pattern/badly-named-piles
  remotes/origin/pattern/commonRequirements
  remotes/origin/pattern/contained-innersource-enables-collaborative-product-development
```

The command 'git branch' shows you which branch you are currently working within.
And with 'git branch -a' you see additional branches which are local and remote (on the web).
There is extra information using the command '$ man git branch' in linux based systems.

Next, in order to create a new branch as a way to start creating a new pattern,
you need to 'checkout' that branch. As a common nomenclature, all of the
pattern-related branches should start with the keyword 'pattern/'. Thus, a new
branch with a new pattern named as foo should be as follows:

```
$ git checkout -b pattern/foo
```

You are now in the 'pattern/foo' branch. When you create a new branch, the files 
in the directory might appear change. Each branch can have slightly different content,
and that is intentional. If you need to go again to the 'master' branch or another
branch, you can easily 'checkout' to those as follows:

```
$ git checkout <branchname>
```

## Adding a new pattern

Let's imagine we want to work a new pattern related to the activities of the
Ewoks that for some reason gave up hunting. We should choose some initial
name for this pattern file that could be 'ewoks-do-not-hunt.md'.

```
$ git checkout -b pattern/ewoks-do-not-hunt
$ touch ewoks-do-not-hunt.md
```

Once our pattern file is ready to go, we need to add the file to the repo and
commit that change to our new branch.

```
$ git add ewoks-do-not-hunt.md
$ git commit -m "Inner Source Pattern to deal with Ewoks that do not hunt"
```

And we should finally upload that branch and file to the server.

```
$ git push origin pattern/ewoks-do-not-hunt
```

Then, if you feel the pattern is ready to review, you can start a Pull Request (PR) asking
to join your new branch to the master branch. To do this, navigate to the github web repo 
and get into your new branch. You should see a 'Create pull request' button while in in your branch.



[commons]: http://innersourcecommons.org
[patternsRepo]: https://github.com/paypal/InnerSourcePatterns
[commonsRepo]: https://github.com/paypal/InnerSourceCommons
