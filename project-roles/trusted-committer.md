# Title

Trusted Comitter

# Patlet

Many inner-source projects will find themselves in a situation where
they consistently receive feedback, features, and bug-fixes from a contributor.
In these situations project maintainers seek ways to recognize and reward the
work of the contributor above and beyond single contributions.

# Context

  - You are the maintainer of a cross-team library, service, or shared resource
  - You receive regular contributions

# Problem

  - Project maintainers want to find ways to scale their ability to support a
  project
  - Project maintainers want to find ways to scale the longevity of the value
  delivered by a project

# Forces

  - Over the lifecycle of a project the focus of the maintainers may shift away
  to accomodate changing business priorities
  - Contributors seek visible artifacts of their contributions demonstrating
  value
  - Motivated contributors looking to push further inner-sourced projects
  - Maintaining a project of reasonable complexity is taxing for a small team
  - Lack of language for recognizing contributions across teams within an
  organization

# Solution

## Defining the Trusted Committer Role for a Project

What a Trusted Committer handles is up to each project and its maintainers.
Whatever shape your Trusted Committer role takes make sure it's clearly
documented somewhere in your project. This sets expectations for new community
members and outlines the role for future candidates.

Below we've provided a few guidelines for what Trusted Committers can be
invited to do:

* If a candidate participates often in community channels (e.g. Slack, JIRA
issue triaging, etc.) then becoming a Trusted Committer formalizes their role
in community support.

* A good candidate for a Trusted Committer, is someone who frequently submits
code, documentation, or other repository changes.  Start by including this
person on pull requests. If they are actively engaing in pull requests,
consider approaching them about opportunities for further collaboration on the
project.

## Formalizing Trusted Committers

The first step is to approach candidates about becoming a Trusted Committer.
Maintainers should make sure candidates understand the role. To be clear:
there is no expectation that candidates will accept the role. Each candidate
should figure out if they have the bandwidth to get involved.

When a candidate accepts the role it is up to the project maintainers to
publicly recognize the transition from user to Trusted Committer. It is also a
good idea to add their name to a Trusted Committers section in your project's
README.  As an example:

```markdown
# project-name

... your project's readme ...

## Project Leaders

### Maintainers

  - Your team

### [Trusted Committers]

  - The name of the new trusted committer

[Trusted Committers]: https://example.com/link/to/your/trusted/committer/documentation.md
```

## Maintaining Trusted Committer Relationships

When a new Trusted Committer is minted it’s a good idea to keep them in the
loop as you continue to iterate on your project. This can be as simple as
inviting them to your project channel or as involved as including them in your
planning sessions. More opportunities for involvement gives Trusted Committers
a path to Maintainer if they so desire.

Besides keeping Trusted Committers informed it’s a good idea to check in on a
regular basis. A good cadence is every week, but as the Trusted Committer
settles in this can drop to every few weeks or so. The purpose of these
check-ins is to make sure the Trusted Committer feels supported in their new
role, like a 1:1 with your manager. If things aren’t going well, listen and
try to understand what is preventing the Trusted Comitter from being successful.
If things are going well, [thank the Trusted Committer for their continued
effort][praise] in making the project successful and set a new date to check-in.

## Sunsetting a Trusted Committer

There comes a time when removal of a Trusted Committer is necessary, such as:

* No longer willing to take part
* No longer able to perform their duties
* No longer employed by the company

In each of the above cases a plan for removing access to project resources
should agreed upon by both parties. This includes their entry in a project’s
**Trusted Committer** section.

After access is removed it is courteous to [thank the Trusted Committer for
their participation in a public way][praise]. This ensures clear communication
and continuity within the community.

# Resulting Context

## For Contributors

Achieving Trusted Committer status for a project is a sign that the contributor
has demonstrated an improvement to a community project. Recognition for these
efforts can be used during annual reviews with managers.

## For Maintainers

As a project matures, maintainers can become less familiar with key aspects
of a project.  Trusted Committers fill in these gaps.  This ensures that all
aspects of the project are better served over time.

A healthy set of Trusted Committers ensures that if project maintainers move on
there is a plan for responsible stewardship.

# Known Instances

This has been tried and proven successful at Nike and PayPal.

# Authors

- Fernando Freire

# Acknowledgements

- [Russell Rutledge]
- [Loren Sanz]
- Noah Cawley
- [Jeremy Hicks]

# State

Published internally at Nike; drafted via pull-request in June of 2018.

# Variants

[Russell Rutledge]: https://github.com/rrrutledge
[Loren Sanz]: https://github.com/mrsanz
[Jeremy Hicks]: https://github.com/greatestusername
[praise]: https://github.com/paypal/InnerSourcePatterns/blob/master/praise-participants.md
