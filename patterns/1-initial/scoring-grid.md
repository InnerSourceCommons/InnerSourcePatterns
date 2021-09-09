## Title

Software Project Scoring Grid

## Patlet

Objectively improve the quality of code repositories across an organisation by introducing a Scoring Grid, which can be used to grade the state of existing code bases against InnerSource best practice. 

By providing a grading system, the Scoring Grid can lay out a path that engineers can follow to develop greenfield projects into mature InnerSource communities with strong ownership through incremental improvement and rescoring.

## Problem

Organisations are littered with repositories that don't have README files, or are outdated, containing obvious errors; projects have no CI integration, no release instructions, badly defined licenses, no PR templates, and so on. Don't let perfect be the enemy of good - software projects get started with little to no thought about their long term maintenance, and a standard plan to refine these projects and make them good is needed for the sanity and health of the engineering teams.

A *Software Project Scoring Grid*, as presented in this pattern, provides a guided pathway from "new project" to a "mature, well maintained, inner source project". By grading areas such as Readme, Contribution Guidelines, Licensing, Pull Requests, and Continuous Integration; a scoring grid can objectively highlight positive and negative aspects of a project, and provide tangible guidance to engineering teams on how to make their repositories more InnerSource friendly.

## Story

Company A, well established engineering department, with departmental standards - over 200 repositories used by 100 or so engineers, teams were asked to self-score on code quality - this led to an expanded definition of "What good looks like" for a software project under ownership and maintenance within the department. This expanded definition used InnerSource guidance to produce a scoring grid that InnerSource advocates could use to share and promote best practice across community members.

After several years I left Company A to join Company B, in my first week I saw numerous and obvious errors in README files, poor code quality, weak ownership, out of date build and release information. I craved a public version of the InnerSource grid used at Company A and decided to create my own grid based on measures important to me; highlighting all the bad, and good aspects of software development as a method to inspire and encourage change within the engineering function of my new company. This grid was rapidly highlighted and shared by Engineering Managers to different teams, and became a useful conversation tool for "What does good look like?". 

At Company B, we then tried to go the next step, and are trying to use automated measures outlined in our Scoring Grid to score the 600+ repositories at our organisation, by providing nightly feedback in an interactive dashboard, so that teams and engineering managers can improve the maintainability and health of their projects.

## Context

Where does the problem exist?

- An organisation that has a legacy of code repositories - assuming teams are using source control to manage code change
- An organisation where engineers are free to create new repositories, but there is no guidance in place for long term maintenance
- An individual who has built lots of projects or libaries, and is struggling to maintain and remember build and release information - they need support, but don't have the words to justify the engineering effort

What are the pre-conditions?

- A large number of poorly maintained, legacy, or "abandonned" code bases 
- Teams are unhappy working on a codebase, expending lots of manual effort running complex commands, and following tribal release knowledge - i.e. they don't have highly automated, well documented, high confidence, release processes
- A measure of "mounting tech debt"

## Forces

- Poor Engineering Leadership
- No standards for "What does good look like?"
- Product management asking to go faster

It takes time to introduce a scoring grid, do the scoring, and prioritise improvements, but the benefits should be self-evident in prioritising improvements that reduce the delivery time of all future work. 

Not everyone will agree with the measures used in the scoring grid, but they at least can be a conversation starter about "What does good look like?" and its that shared vision - written out explicitly - which will help move teams to action.

By agreeing to, and communicating, a Scoring Grid the engineering management is providing leadership and guidance to all engineers by tacitly saying "these things matter", "it's your responsibility to improve along this path".

## Solutions

Example Scoring Grid for Company B (Introduced January 2021) - should be applicable for any Open Source, Inner Source, or private repository using Git tools that support CODEOWNERS, PRs, and PR Templates. Feel free to re-grade based on your company's best practice, or add additional areas based on weak points. Examples grading areas might include CODE QUALITY, TESTING, CODE COVERAGE, TEST STRATEGY. 

|      Area / Grade      |                                                                           Grade F                                                                          |                                                                   Grade C                                                                  |                                                                 Grade B                                                                 |                                                                                                  Grade A                                                                                                  |
|:----------------------:|:----------------------------------------------------------------------------------------------------------------------------------------------------------:|:------------------------------------------------------------------------------------------------------------------------------------------:|:---------------------------------------------------------------------------------------------------------------------------------------:|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------:|
|         README         | No README file; An empty README; - README contains obvious and distracting errors and has become stale.                                                    | README file exists in codebase; contains basic setup and test instructions; instructions are correct and up to date.                       | README contains accurate and automated instructions for setup, testing, build, and deployment - no local environment setup is required. | README contains: mission, getting started guide, user documentation, who we are, our communication channels, link to contribution guide.                                                                  |
|      CONTRIBUTING      | No CONTRIBUTING file; no clear owner for project.                                                                                                          | CONTRIBUTING file exists and is linked from README; contains basic setup and test instructions; instructions are correct.                  | CONTRIBUTING contains accurate and automated instructions on how to setup a local dev environment, test, and raise PRs.                 | CONTRIBUTING provides structural overview of code; guidance on how to make modifications; fully automated: setup, testing, build, and deployment info; how to raise a PR, and time to expect for reviews. |
|         LICENSE        | No LICENSE file; obviously incorrect license info; e.g. default ISC for commercially sensitive repo; mismatch between license fields.                      | Appropriate LICENSE has been chosen; but the information is spread across multiple files e.g. at the headers of code files.                | Appropriate LICENSE file exists; and is consistently referenced in meta data such as README or package.json file.                       | Appropriate LICENSE file exists; additional information is provided, and thought has been given to the dependencies; there’s a way to verify the tree of license dependencies.                            |
|     PULL REQUESTS      | No PULL REQUEST template; PR standards are defined externally to project; PR standards not applicable to this project.                                     | PULL REQUEST template exists; Advice for creating a PR exists in README or CONTRIBUTION files.                                             | PULL REQUEST template(s) exist for different types of changes. Main branch locked down. Named reviewers required.                       | PULL REQUEST standards are enforced by automated CI checks such as Danger.js; PR Templates contain checklist. CODEOWNERS lists required reviewers.                                                        |
|       CODEOWNERS       | No CODEOWNERS file; ownership of repo unclear, or ownership belongs to a defunct team; contact details for team are outdated or incorrect.                 | CODEOWNERS file exists; named individuals required for review; main branch locked down; requires at least one person to provide PR review. | CODEOWNERS file exists; named team required for review; main branch locked down requiring PR review                                     | CODEOWNERS file exists; named team required for review, main branch locked down requiring PR review; accurate team contact details available in README.                                                   |
| CONTINUOUS INTEGRATION | No Continuous Integration setup; builds are manual, and are transferred directly from developer laptop to production environment. Main branch fails tests. | Continuous Integration exists; requires manual triggers. Process not checked into source control. No PR integration.                       | Continuous Integration is well integrated; PRs automatically checked and verified. Process scripted as part of code base.               | Continuous Integration is fully automated; high trust test suite; features on main branch are automatically rolled out to production; use of canary builds; feature toggles.                              |

Apply the grid against one or more repositories; deciding on a score. This can be done indiviually using an expert, or as team as a retrospective discussion.

Based on the score, look to the next column, and identify actions that would lead to an improved grade.

Agree with the team to rescore on a regular basis, say weekly, monthly, quarterly based on available capacity.

Make time for teams to action improvements; ideally make the work part of their normal repsonsibilities, visible on shared work boards as work tickets.

## Resulting Context

- Scoring Grid communicated to all engineering teams and individual contributors
- Implicit understanding of "What good looks like?" at the repository / project level
- Improved perception of Engineering Leadership from Engineers
- Incremental prioritisation of tech debt aimed at improving the quality of code and code bases
- Possible automation of scoring grid; applied daily/nightly to all codebases 
- Possible "competitive ranking" of code bases, leading to rewards for following best practice

## Known Instances

Where has this been seen before?

- Company A - 100 strong co-located engineering team with well established InnerSource community - used as guidance for all teams, and published as part of internal InnerSource website - exact grid not published in this pattern
- Company B - 200 disparate engineers spread across multiple timezones, immature processes and practices - used by engineering managers to communicate a vision for "what good looks like", and used to prioritise engineering led initiatives balanced against product led initatives.

## Status

Initial Draft - waiting on review / public commentary

>General pattern status is stored in GitHub's Label tagging - see any pull request.
Note that this GitHub label tagging becomes less visible once the pattern is finalized and merged, so having some information in this field is helpful.

>You might store other related info here, such as review history: "Three of us reviewed this on 2/5/17 and it needs expertise before it can go further."

## Author(s)

- John Beech
- TBC (See Acknowledgements)

## Acknowledgements

- Sebastian Spier - initial tracking, and nudge to create this into a pattern

>*Note from John Beech*: If I've missed anyone, or any former colleagues would like to take credit for this pattern, please reach out. My version is based on a memory of a similar grid, folding in my own experience of software development through multiple roles, and my own private open source contributions.

## Related Patterns

- Source Code Inventory
- Good First Project
- Change the Developer's Mindset
- Change the Middle Management Mindset
