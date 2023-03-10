## Title

Concept Anchor

## Alias

Explaining InnerSource to Management by anchoring it to Agile / DevOps / Lean

## Patlet

Those wanting to bring InnerSource to organizations have difficulty starting a discussion with management. This can sometimes be made easier by anchoring InnerSource to more well known concepts such as Agile / DevOps / Lean.

## Problem

Often InnerSource is a term that's novel to organizations, making it often difficult to start a conversation with management about adopting InnerSource.

## Context

An individual sees an opportunity for InnerSource to make an impact within an organization. They would like to discuss InnerSource with management. Being a relatively traditional and bureaucratic company, it is difficult to broach the subject of InnerSource with management as they are reluctant to engage on a topic that they've neither heard of nor know anything about.

These organizations might have an existing strategy, such as Agile, Lean, or DevOps transformation. To gain mindshare, it might be useful to start with these existing, well known concepts and build InnerSource on top of these concepts.

## Forces

* Management are reluctant to talk to you unless you can tie projects in to an existing corporate strategy.
* Starting to explain InnerSource may be difficult unless one starts with a point decision makers are familiar with.
* Agile/DevOps/Lean have already been heavily marketed and are commonly discussed terms in corporations, conferences, magazines etc.

## Solutions

### Agile

There are several approaches that can be taken in the context of Agile depending on who's listening. The following main concepts are from [Wikipedia](https://en.wikipedia.org/wiki/Agile_software_development)

* _Incremental and evolutionary processes_ - Submitting pull requests for early feedback, or creating an issue for early stakeholder discussion aids this process, allowing ideas to be shaped and defined in the very early conceptual stages, thus being able to nourish good ideas and filter out unfeasible ideas before there are any significant costs associated with them.
* _Efficient and face-to-face communication_ - Many enterprises still implement collaboration models centered around face to face collaboration with teams being colocated. It is possible that management may view the "If it isn't written down and announced on the mailing list, it didn't happen" cultural norm of IS as unnecessary. For IS to work, having communications written down is crucial.
One can highlight benefits to corporations from implementing IS practices.
a) Business continuity in managing "Key man risk"
When key people depart, the knowledge does not go out of the door with them. Robust documentation including decision records/RFCs and the like capture the rationale for important project design decisions and are key to continued productivity of new employees within the scrum team.
b) Fostering productivity
While the corporation's strategy may involve colocating employees who collaborate with each other regularly, it may still be a global corporation. Robust CI/CD and documentation facilitates collaboration and productivity across time zones and geographical locations. It eliminates barriers between teams and the production environment.
* _Quality Focus_ this is a major point for IS. Because of the expected submission by a variety of teams and individuals, extra care is taken to make sure that the submitted code is screened to be production quality. Comprehensive documentation for submitters, test coverage, CI/CD, static code analysis and other techniques are often used to screen code from strangers in the open source world, these techniques have great benefits for internal teams.

#### [Modern Agile](https://modernagile.org)

The four principles of "Modern Agile" can be connected easily to the goals of InnerSource practices.

For example:

* **Make People Awesome**: A significant advantage of InnerSource is to promote team collaboration. The collaboration process positively exposes people, allowing everyone to know their contributions, thus encouraging them to contribute more and get recognized for it.
* **Make Safety A Prerequisite**: Open and transparent collaboration promoted by InnerSource is a great way to encourage and demonstrate that collaboration is discussed respectfully and aimed at promoting learning.
* **Experiment & Learn Rapidly**: Experimentation and learning are in the essence of the open source model and naturally are a fundamental part of the InnerSource. Fast development, good documentation, code reuse, and team collaboration promote experimentation and quick learning.
* **Deliver Value Continuously**: This is a consequence of the three previous principles, and all the InnerSource work philosophy supports it.

_Note: The above is just an illustration of how to explain this connection. It is by no means the only way to tie these two concepts together._

#### [SCRUM](https://en.wikipedia.org/wiki/Scrum_%28software_development%29)

To shorten the example and make it more concrete for SCRUM, a popular Agile methodology, one could cite the following scenario:
Team A depends on Team B's code. Team A has a pressing priority for delivery, Team B has their own priorities, none of which is Team A, what to do? Using InnerSource, Team A can put the required code changes in to their own backlog and submit it to Team B, essentially removing block making things more "Agile".

### DevOps

There is no fixed definition of DevOps but much of it is focused around integrating Software Development and other dependencies such as Operations (auxiliary support such as servers, security etc.) and other business to reduce time required to deliver value. So where Agile focuses on the actual software development, DevOps is seen to incorporate all the other areas involving delivery.

One major concept with DevOps is not to fear change, to be able to remove the risks so that experiments on the system can be comfortably performed.

InnerSource helps in this process by its emphasis on a CI/CD workflow as well as a culture to automate much of the risk management and checks as possible. The more contributors there are, the more eyeballs there are. The more eye balls there are, the more diverse perspectives there are on managing risk. These diverse perspectives help the operations team design for the lowest and broadest common denominator thus improving the overall quality and experience for all.

## Resulting Context

Management and newcomers to InnerSource engage in conversations around InnerSource, perceived benefits, expected difficulties, etc.
They are usually comparing InnerSource to previous experiences around the anchored concepts.

## Status

* Initial

The above are ideas for solutions to the problem that have not been tested yet.
This pattern does not have any Known Instances yet.

## Author(s)

* Mishari A. Muqbil (Zymple)

## Acknowledgements

* Fei Wan
* Sebastian Spier
* Danese Cooper
* Johannes Tigges
