# Technical steps

If you are unfamiliar with git or github, you can either:
  * follow the technical instructions below (command line) or 
  * [use Github's GUI-based application](https://desktop.github.com/) (its rather nice and makes everything easier for a beginner).

If you want to contribute, the workflow is done through branches. You can see the
available branches of this repository at [the branches URL](https://github.com/paypal/InnerSourcePatterns/branches)
or by clicking on the 'branches' button on the main page.

Branches and Pull Requests (PR's) are used to bring discussion/review about a specific inner source pattern.
New patterns should use, as a first approach, the
[pattern template](meta/pattern-template.md). There are indeed multiple ways to start a discussion:
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
and get into your new branch. You should see a 'Create pull request' button while in your branch.