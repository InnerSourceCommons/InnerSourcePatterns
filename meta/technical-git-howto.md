# Command-line git steps for creating a new Pattern

If you want to contribute a new pattern, the workflow is support by these important concepts:

* [Branches](https://github.com/InnerSourceCommons/InnerSourcePatterns/branches/all) are meant to separate content, so that multiple people can work all at once.
* [Pull Requests](https://github.com/InnerSourceCommons/InnerSourcePatterns/pulls) (PR's) are used for discussion/review of a specific InnerSource pattern.

There are multiple ways to start a discussion:

* Send a Pull Request for your branch and the maintainers will receive a notification.
* Create an [Issue](https://github.com/InnerSourceCommons/InnerSourcePatterns/issues) and ask for comments from some of the [Trusted Committers](../TRUSTED-COMMITTERS.md). You can mention them using the '@' symbol prior to their GitHub username.
* Add reviewers to the Pull Request on the website - this sends requests to review your work

New patterns should use the [pattern template file](pattern-template.md) as their starting point.

When starting a new pattern, make sure that it does not already exist. Take a look at the [existing patterns in this repository](/README.md#list-of-patterns).

## Overview of steps

![branch, commit, pull request, review](/assets/img/branchCommitPullReview.png)

The basic steps below can be thought of as *branch*, *commit*, *pull request*, and *review*.

## How do you create a branch?

First you need to create a branch (no need to ask for permission!). For this, let's clone the repository:

```
$ git clone https://github.com/InnerSourceCommons/InnerSourcePatterns.git
```

Then you should see a message similar to the following one:

```
Cloning into 'InnerSourcePatterns'...
remote: Counting objects: 73, done.
remote: Compressing objects: 100% (37/37), done.
remote: Total 73 (delta 35), reused 73 (delta 35), pack-reused 0
Unpacking objects: 100% (73/73), done.
Checking connectivity... done.
```

This means that you successfully cloned the repository. Then we need to access the directory and check that everything is as expected.

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
And with 'git branch -a' you see additional branches which are local (on desktop) and remote (on the web).
There is extra information using the command '$ man git branch' in linux based systems.

Next, in order to create a new branch as a way to start creating a new pattern,
you need to 'checkout' that branch. As a common nomenclature, all of the
pattern-related branches should start with the keyword `pattern/`. Thus, a new
branch with a new pattern named as foo should be as follows:

```
$ git checkout -b pattern/foo
```

You are now in the 'pattern/foo' branch. When you create a new branch, the files
in the directory might appear to have changed. Each branch can have slightly different content, and that is intentional. If you need to go back to the 'master' branch or another branch, you can easily 'checkout' to those as follows:

```
$ git checkout <branchname>
```

## Adding a new pattern

Let's imagine we want to create a new pattern related to the activities of the
Ewoks - they gave up hunting for some reason. We should choose some initial
name for this pattern file. We will use `ewoks-do-not-hunt.md`.

```
$ git checkout -b pattern/ewoks-do-not-hunt
$ touch patterns/1-initial/ewoks-do-not-hunt.md
```

We then fill our [markdown](markdown-info.md) file with the [pattern template text](pattern-template.md) and start to write our pattern.

Once our pattern file is ready to go, we need to add the file to the repo and
commit that change to our new branch.

```
$ git add patterns/1-initial/ewoks-do-not-hunt.md
$ git commit -m "InnerSource Pattern to deal with Ewoks that do not hunt"
```

And finally we upload that branch and file to the server.

```
$ git push origin pattern/ewoks-do-not-hunt
```

Then, if you feel the pattern is ready to be reviewed, you can start a Pull Request (PR) asking to join your new branch to the github master branch. To do this, navigate to the github web repo and get into your new branch. You should see a 'Create pull request' button while in your branch.

PR's are the mechanism we use for our multi-step Review process. See next steps in [Interacting with Pattern Reviews](/CONTRIBUTING.md#c-interacting-with-patterns-reviews).
