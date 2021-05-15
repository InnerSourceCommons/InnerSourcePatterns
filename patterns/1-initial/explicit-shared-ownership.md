# Title

Explicit Shared Ownership

# Patlet

In a software system there is a component that several teams depend on. Initially developed by a handful of people it has long outgrown it's orignal use-case. Original authors are no longer capable of taking full ownership of that component. Development happens organically. Often there is confusion as to who should make changes, who needs to approve changes. Making ownership explicit, sharing that ownership across dependent teams, making expected behaviour explicit helps remove ambiguity. Writing those learnings down means that it can be changed according to the same process that is used to change the software.

# Problem

An organisation is already using InnerSource best practices in several teams. The architecture of the software offered has grown organically. Talking about code ownership and accountability teams notice that there is a component that is in a worrying state: Developed by an original team of authors it has grown it's userbase way beyond what the original team can handle. From time to time others step up to help out, however there is no formal process established. As a result conflicts arise around who should do the work, who should decide on project direction. Simply forking the component would lead to a lot of duplication and wasted effort. As a result teams are looking for a less intrusive solution to the issue.

# Context

- Teams are working independently but are providing one common platform as a service.

- The software they are working on has been evolving for a long time. Engineers working on sub-modules have changed over time.

- One component is in widespread use but ownership is unclear.

# Forces

Ownership of one component is unclear.

There are too many teams dependent on the component to pull everyone into one single meeting to discuss ownership.

There may be people dependent on the module that are not yet known.

# Solution

Use the issue/ pull-request mechanics that work so well for code modifications to modify the way the component is developed:

A volunteer creates an issue in the component's repository highlighting the apparent unclarity or even lack of ownership. Subsequently a volunteer (can be the same person) creates a suggestion for how the project should be developed going forward including a list of initial [Trusted Committers](../2-structured/trusted-committer.md). This suggestion is posted to the project's documentation (e.g. it's `README.md` file) as a pull request. This pull request is left open and shared with all people affected by the change. Feedback can be given and integrated asynchronously. Development of the final state is transparent for everyone.

# Resulting Context

There is an initial team of Trusted Committers committed to the component.

Expectations related to collaboration are transparent for everyone involved going forward.

The entire decision process backing the result is transparent and can be influenced by those affected leading to higher buy-in for the final result. Also the argument leading to the final decisions are accessible for those new to the project.

There is a proven way to adjust the setup in the future.

# Status

Initial (early draft)
