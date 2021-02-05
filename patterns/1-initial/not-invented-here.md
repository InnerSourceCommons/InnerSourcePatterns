## Title

Overcoming the Not-Invented-Here Mindset

## Patlet

TBD

## Problem

"Not Invented Here" mindset exists and has the following impact: Duplicative development, Cost, Redundancy, Missed opportunities for knowledge transfer, Slower time to market/bottlenecks, Quality impact (potential to miss out on leveraging superior technology), excessive ownership culture, lowered morale that can lead to talent retention issue.

Notes:

* Is the cost of adoption / integration of code from outside a reason for "Not Invented Here" rather than a peer issue?
* from Daniel to everyone: adoption/integration/understanding
* from Tom to everyone: Is there the concept of defined anti-patterns within ISC?
* from Tom to everyone: It might be better to define it from the other side
* from Tim Yao to everyone: Very true, Tom. Anti-patterns can be effective. We don't have any in the ISC yet, though.
* from Daniel to everyone:

Following items should move into sub-patterns:
High quality solutions are being rejected due to the "Not Invented Here" mindset. Engineers and their managers are choosing to rewrite the same functionality even though an alternative exists.
Notes: Not invented here can inject itself into many situations. It's a mindset.

Team or community is resistant to accept contributions from external contributors. Note: Split this based on use case: org-wide dysfunction vs team-level

## Story

Team agrees that one or more stories could be helpful here, to illustrate the problem.

Company x has a software system available. A User Group realized that a common problem needed to be solved connected to that system. If there were failures during connecting time, need to retry. A library was created. Maintainers of the system looked at the library and rewrote it instead of leveraging the library that was written by another team. They assessed the library to be sub-par. The user group who wrote the library believes that it was not a quality issue that caused them to rewrite it, but that they rewrote it because they wanted to do it their way.

## Context

* Traditional development teams lack experience and knowledge of community engagement.
* Company has deeply silo-ed engineering teams
* Excess of ownership culture.
* Little to no history using open source.
* Company has mature/entrenched engineering cultures.
* There is focus on intra-team cohesion and collaboration as opposed to cross-team collaboration
* You can't predict where the next contribution is coming from (might be a force?)
* Historical culture of silos, lack of cross-domain collaboration

Acknowledge that no matter what you do, some won't read contrib files
Acknowledge that no matter what you do, conflicting business goals/measures may result in dis-incentive to engage
Individuals fear being made replaceable
Your contribution extends the usability of my widget, but I'm not allocated to support it/I fear change - fear of increased support load
Fear of increased support load in general
Companies with software developers :) We suppose that this may also be a more common problem among deeply silo-ed engineering teams and/or in companies with more mature/entrenched engineering cultures.

## Forces

* Lack of trust. Limited opportunities to build relationships and trust with Developers outside of their particular area.
* Strong egos (team or individual).
* Unwillingness or reluctance to work with others.
* Concern that contributions from non-team members might be of inferior quality.
* Concerns related to time constraints. Project Managers need to to deliver the project in alignment with schedule commitments.
* Belief that learning and implementing something new will take away from the prime directive.
* No incentive to contribute or even consume because it is counter to their KPIs.
* Software may not be modular/designed for reuse. Team writing the code is not positioned to accept InnerSource contributions.
* Fear of losing control.
* Security can be a problem.

* Teams tightly control their processes/engagement models
* Contributing teams do not read contrib.md or prepare ("fling it over the wall")
* Conflicting business goals/individual performance measures may result in groups or individuals being dis-incented to engage
* Fear of diluting your perceived value
* Teams are more comfortable being held accountable for their own work - hesitant to take on unknown risk- ex: will i break my own product if I accept this? will I break stuff on a wider scale?
* Teams are hesitant to reuse/consume others' code
* Perceived value of accepting contributions that have narrow impact

- Team egos
- Individual egos
- The obvious benefit of what the solution could bring
- Optics challenges - teams being judged for bringing in software from outside the walls
- What metrics are being measured
- Reward system

## Solutions

* [Going deep into the not-invented-here syndrome](http://blog.hypeinnovation.com/the-not-invented-here-syndrome) touches on this topic, describing a prescription for overcoming the "Not Invented Here" mindset:
    * Acknowledge that the "Not Invented Here" mindset (NIH) exists
    * Assess the impact of NIH on your innovation efforts. For example, have you missed opportunities?
    * Build in explicit incentives to overcome NIH
    * Engage people outside of the organization in strategy/evaluation phases for fresh perspectives
* DSM video [Open Innovation: Proudly Found Elsewhere](https://www.youtube.com/watch?v=jNNz9poyKJs): Discusses the shift from strict NIH to empowering the "Proudly Found Elsewhere" approach.
    * "It pays to look outside ones area (open innovation). The open Innovation funnel has permeable walls-->greater chance of success, greater speed."

* Provide template to use for code submission requirements. (Must include testing. Many companies have built-in, automated testing. Documented communication) For both host and contributors. Requires/assumes compliance.
* Mentorship (requirements can be informed via tracking above results)
* Talking is good /relationship building
* Finding incentives to drive InnerSource behavior (incentives and measures can vary at a team level)
* Shift to a "profoundly found elsewhere" culture
* Demonstrate organizational interest in outside opinions
* Identify influencers who agree to be early adopters - set the stage for others
* Contributability is a mark of quality

## Resulting Context

* Developers search for and leverage existing options as opposed to rewriting. This results in:
    * increased efficiency
    * increased reuse
    * higher levels of developer satisfaction
    * increased speed to market
* Developers interact with code and products produced by others with the same trust and engagement as those that they themselves have produced.

## Known Instances

TBD

## Status  

* Initial
* Brainstormed solution (not proven)

## Author(s)

* Erin Bank, CA Technologies
* Tim Yao, Nokia
* Padma Sudarsan, Nokia
* Georg Gruetter, Bosch
* Ofer Hermoni
* Rob Mulcahy
* Max Capraro
* Jory Burson
* John McDonough
* Shola
* Becky - name only
* Russ - name only
* Nick

## References

* Oana-Maria Pop, Hype Innovation Blog: [Does Your Organization Have the Not Invented Here Syndrome?](http://blog.hypeinnovation.com/the-not-invented-here-syndrome)
* DSM, Open Innovation: [Proudly Found Elsewhere](https://www.youtube.com/watch?v=jNNz9poyKJs)
