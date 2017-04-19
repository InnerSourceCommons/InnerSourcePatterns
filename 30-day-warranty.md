# Title

30 Day Warranty

# Problem

A team developing a component which is used throughout an organization is
resisting to accept or rejects contributions (feature requests) and as a result
blocks progress or is disrupted by frequent escalations.

- TBD: link to pattern "setting clear expectations for contributing code"

- Team is scared of but in control (compensation)
- contributed code had to be heavily rewritten
- contributors might not be available after contribution for modifications/bugfixes

# Context

Teams depends on another team accepting their contributions so that a component
produced by the receiving team can be used by the contributing team. The
receiving team does not have the resources, knowledge, permission, inclination 
to write the contributed component.

# Forces

- There is distrust of contributions due to a past history of cheating: teams
  submitted half finished contributions and subsequently filed requests for 
  fixes that make it ready for use in production.
- If code is contributed from outside the team, the team has the natural 
  suspicition that the other team does not know how to write code that would
  meet the teams expectations.
- Direction of loyalty: ?
- There is a natural aversion to taking responsibility for code not written
  by oneself.
- Contributed needs to be heavily rewritten before being accepted into the
  codebase.

# Solution

Address the fears of both the receiving and the contributing teams by 
establishing a 30 day period starting the with time the contributed code
goes into production, during which the contributing team consents to provide
bug fixes to the receiving team.

a) clear contribution guidelines spelling out the expectations of the receiving
   team and

- as a contributor, you have to certify that the code meets defined
  expectations (e. g. bugs can be fixed)
- create run books and desaster scenarios, warranty applies after desaster
  scenario has been test.

# Resulting Context

- the receiving team is willing to accept contributions and able to share the
  workload of initial adaptations/fixes
- increased transparency and fairness
- keeps escalations from becoming to heavyweight

# Known Instances

PayPal

# Authors

- Cedric Williams

# Acknowledgement

- Dirk
- Padma Sudarsan
- Klaas-Jan Stol
- Georg Grütter

# State

- Draft (2017 Spring InnerSource Summit)

# Variants

- (Dirk) Ensure cooperation of dependent teams by making them a community by having
  more than one, meritocratically appointed TCs take responsibility.
