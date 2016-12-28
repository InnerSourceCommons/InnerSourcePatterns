What is this?
=============

This project aims at helping in the definition of Inner Source Patterns.
That's great, but what is an Inner Source Pattern? There is great documentation
at the [Inner Source Commons wiki](https://github.com/paypal/InnerSourceCommons/wiki/InnerSource-Patterns).

In brief, those are patterns of activity or behaviours found in organizations when applying Inner Source methodologies.
Each of these patterns are divided into Title, Context, Problem Statement, Forces and  Resulting Context as their main
sections. An [inner source template](https://github.com/paypal/InnerSourceCommons/wiki/InnerSource-Patterns-template)
is also provided to help with this process.


How can you help to improve?
============================

If you want to contribute, the workflow is done through branches. You can see the
available branches of this repository at [the branches URL](https://github.com/gruetter/innerSourceTest/branches)
or by clicking on the 'branches' button on the main page.

Branches are used to bring discussion about a specific inner source pattern.
This pattern should use as a first approach the
[proposed template](https://github.com/paypal/InnerSourceCommons/wiki/InnerSource-Patterns-template) and
discussion will start. There are indeed two ways to start a discussion:
* Pull request your branch and the maintainers will receive a notification.
* Ask directly for comments to some of the maintainers. You can mention them
using the symbol '@' prior their nickname.

Please, when starting a new pattern, be aware that this does not exist. You can
have a look at some of the existing patterns in this repository.

How can you create a branch?
----------------------------

In first place you need to create a branch (ask for permission! e.g.: as a new issue).
For this, let's clone the repository:

```
$ git clone https://github.com/gruetter/innerSourceTest.git
```

Then you should see some message similar to the following one:

```
Cloning into 'innerSourceTest'...
remote: Counting objects: 73, done.
remote: Compressing objects: 100% (37/37), done.
remote: Total 73 (delta 35), reused 73 (delta 35), pack-reused 0
Unpacking objects: 100% (73/73), done.
Checking connectivity... done.
```

This means that you successfully cloned the repository. Then we need to access
the directory and check that everything is as expected.

```
$ cd innerSourceTest/
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

The command 'git branch' tells you the current branch you are and the local branches you have.
And with 'git branch -a' you see the branches in local and in the server.
There is extra information using the command '$ man git branch' in linux based systems.

Then, if you want to create a new branch as a way to start creating a new pattern,
you need to 'checkout' that branch. As a common nomenclature, all of the
pattern-related branches should start with the keyword 'pattern/'. Thus, a new
branch with a new pattern named as foo should be as follows:

```
$ git checkout -b pattern/foo
```

If you need to go again to the 'master' branch or another branch, you can easily
'checkout' to those as follows:

```
$ git checkout <branch>
```

Adding a new pattern
--------------------

Let's imagine we want to work a new pattern related to the activities of the
Ewoks that for some reason gave up hunting. We should choose some initial
name for this pattern file that could be 'ewoks-do-not-hunt.md'.

```
$ git checkout -b pattern/ewoks-do-not-hunt
$ touch ewoks-do-not-hunt.md
```

Once our pattern is ready to go, we need to add and commit that new inner source
pattern to our new branch.

```
$ git add ewoks-do-not-hunt.md
$ git commit -m "Inner Source Pattern to deal with Ewoks that do not hunt"
```

And we should finally upload that branch and file to the server.

```
$ git push origin pattern/ewoks-do-not-hunt
```

Then, if you feel the pattern is ready to review, you can pull request your new
branch. For this, you should see a 'Create pull request' button in your branch.


Other links of interest
=======================

There is a detailed list of materials available at the PayPal Inner Source Commons
repository at https://github.com/paypal/InnerSourceCommons .
