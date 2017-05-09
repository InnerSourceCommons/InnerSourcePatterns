# Title

30 Day Warranty

# Problem

A team developing a component which is used throughout an organization is
resisting to accept or rejects contributions (feature requests) and as a result
blocks progress or is disrupted by frequent escalations.

- TBD: link to pattern "setting clear expectations for contributing code"

# Context

Teams depends on other teams to add functionality to a component
they depend on so that they can deliver features in their own components. The
requiring team does not have the resources, knowledge, permission, or inclination 
to write the contributed component.

# Forces

- There is distrust of contributions due to a past history of cheating: teams
  submitted half finished contributions and subsequently filed requests for 
  fixes that make it ready for use in production.
- If code is contributed from outside the team, the team has the natural 
  suspicion that the other team does not know how to write code that would
  meet the teams expectations.
- Direction of loyalty: ?
- There is a natural aversion to taking responsibility for code not written
  by oneself.
- Contributed needs to be heavily rewritten before being accepted into the
  codebase.
- There is the fear of the contributors not being available for support with
  fixing bugs after the time on contribution.
- Teams fear contributed code will lead to high(er) maintenance costs but do 
  not know how to control for that
- Receiving teams may fear that teaching others how to contribute code will 
  expose technical debt in their system and that visibility may be damaging
- Receiving teams may not believe that they will get acceptable code no 
  matter how much mentoring they provide
- Either team may not feel confident in measuring risks or certifying that 
  they are mitigated in a contribution

# Solution

Address the fears of both the receiving and the contributing teams by 
establishing a warranty period, generally 30 days starting when the contributed code
goes into production. During this time the contributing team commits to provide
bug fixes and/or staff support to the receiving team for issues around their contribution.

- Clear contribution guidelines establish expectations and agreements before
   work starts
- Warranty periods may vary depending on the risk levels involved

# Resulting Context

- the receiving team is willing to accept contributions and able to share the
  workload of initial adaptations/fixes
- increased transparency and fairness
- keeps escalations from becoming too heavyweight

# Known Instances

PayPal

# Authors

- Cedric Williams

# Acknowledgement

- Dirk-Willem van Gulik
- Padma Sudarsan
- Klaas-Jan Stol
- Georg Grütter

# State

- Draft (2017 Spring InnerSource Summit)

# Variants

- (Dirk) Ensure cooperation of dependent teams by making them a community by having
  more than one, meritocratically appointed TCs take responsibility.
