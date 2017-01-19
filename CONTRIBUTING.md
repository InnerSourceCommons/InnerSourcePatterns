# InnerSource Patterns Workflow

This document describes the workflow for writing, reviewing and publishing
InnerSource ideas, donuts and patterns. It utilizes Pull Requests to facilitate
collaborative reviews.

There are two separate repositories needed for this workflow:

* [InnerSourcePatterns][patternsRepo]
* [InnerSourceCommons][commonsRepo]

## InnerSourcePatterns repository

This is a private repository where new ideas, donuts and patterns are published
and reviewed by the patterns community **prior to** publishing them on
[innersourcecommons.org][commons]. Inside of this
repository we're using the standard GitHub workflow where we have one main
branch - the master branch.  Contributions are done via fork and pull-requests.

## InnerSourceCommons repository

This is where ideas, donuts and patterns will be published **after** they have
been reviewed and accepted by the reviewers. Inside of this repository we're
using the standard GitHub workflow where we have one main branch - the master
branch. Contributions are done via fork and pull-requests. This repository
contains the sources for the GitHub pages website for innersourcecommons.org.

## Workflow

### Working inside of the InnerSourcePatterns repository

1. [Create an issue] for each new idea, donut or pattern in the
  [patterns repository][patternsRepo]. The issue should
  * contain the name of the pattern,
  * contain a short description (at least the problem) and
  * be labeled with the appropriate label (_idea_, _donut_, _pattern_)
2. Create a new branch either in your clone or fork of the
  [patterns repository][patternsRepo]. Please use the following pattern for
  naming branches: `pattern/<patternName>`. Example:
  `pattern/contractedContributor`.
3. Create a _Markdown_ file with the description of the _idea_, _donut_ or
  _pattern_ and store it in the main directory. Commit and push.
4. Once your contribution is ready to be reviewed, create a pull request
  targeted at `master` and label it with either _idea_, _donut_ or _pattern_
  and _Ready for Review_.
5. Reviewer can now use the PR features to comment on the pattern.
6. After the review is complete, the reviewers should remove the label
  _Ready for Review_ and label the pattern _Accepted_ or don't apply any label
  in case rework is necessary.
7. In case of required rework, the author should apply the labels
  _Ready for Review_ and _Revised_ to indicate that a 2nd review is requested.
8. Once a pattern was labeled _Accepted_ by the reviewers, one of the TCs of the
  [patterns repository][patternsRepo] will then move the pattern to either the
  `ideas`, `donuts` or `patterns` subdirectories, merge it to `master` and
  close the associated issue.

### Publishing a InnerSource pattern on innersourcecommons.org (InnerSourceCommons repository)

* for each new pattern which should be published a new issue should be created
  * the issue should contain the name of the pattern and a link to it inside of
  the InnerSourcePatterns repository
* every publishing process of a pattern idea, donut or draft should start on a
dedicated branch, originating from `master` starting with
`pattern/[title]`

### Technical steps

If you want to contribute, the workflow is done through branches. You can see the
available branches of this repository at [the branches URL](https://github.com/paypal/InnerSourcePatterns/branches)
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

#### How can you create a branch?

In first place you need to create a branch (ask for permission! e.g.: as a new issue).
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

#### Adding a new pattern

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


## License

tbd: we have to agree what license we apply to the
[patterns repository][patternsRepo] by default.

[commons]: http://innersourcecommons.org
[patternsRepo]: https://github.com/paypal/InnerSourceCommons-patterns
[commonsRepo]: https://github.com/paypal/InnerSourceCommons
