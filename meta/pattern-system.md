# InnerSource Pattern System

## About

This document shall serve to define a system with which we organize our
patterns using a limited set of classifications.

## Related Work

### Design Patterns (Erich Gamma et. al.)

From the Authors of the classic GoF book "Design Patterns":

> Design patterns vary in their granularity and level of abstraction. Because
> there are many design patterns, we need a way to organize them.

They classify patterns so that they "can refer to families of related patterns."
The authors also suspect that this classification will make "learning the
catalog" faster. They Classify patterns according to two criteria: Purpose and
Scope. They introduce the following classes of purpose in their book:

- Creational,
- Structural and
- Behavioral.

Orthogonal to this, they distinguish two scope classes, related to object
oriented SW development:

- Class and
- Object.

The main ordering criterion in the books catalog is the Purpose and each
pattern is "tagged" with the scope classification.

### Pattern-Oriented Software Architecture (Fram Buschmann et. al.)

Frank Buschmann also organizes the patterns in his (first) book using, what he
calls "categories". Similarly to the GoF book he uses one category to organize
the content of his book, in this case the level of abstraction the pattern
applies on:

- Architectural Patterns,
- Design Patterns and
- Idioms.

The second criterion categorizes the problems solved by the patterns:

- _From Mud to Structure_,
- _Distributed Systems_,
- _Interactive Systems_,
- _Adaptable Systems_,
- _Structural Decomposition_,
- ...

you get the point.

In addition to this, he postulates a number of properties, a pattern system
must exhibit. According to Buschmann, a pattern system

- should be simple and easy to learn,
- should consist of only a few classification criteria,
- should use a classification criterion that the reflects _natural properties_
  of patterns (e. g. kinds of problems, not e. g. what pattern language a
  patterns belongs to),
- should provide a _roadmap_ that leads users to a set of potentially
  applicable patterns and
- it should be open to the integration of new patterns.

### Conclusion

I have used both books extensively and found their respective pattern systems
very helpful in finding patterns for specific problems and for finding related
patterns. I also think that the criterions for a useful pattern system
postulated by Frank Buschmanns are sensible and might serve as a role model for
our InnerSource pattern system.

### A pattern language for creating pattern languages (Takashi Iba)

Takashi Iba has published an article in the ACM Digital Library from PLoP 2016:
[A pattern language for creating pattern languages: 364 patterns for pattern
mining, writing, and symbolizing](https://dl.acm.org/citation.cfm?id=3158175&CFID=831673585&CFTOKEN=74341142&qualifier=LU1011674)

- for those without ACM DL access, there is [an earlier draft of the paper from
PLoP 2016](http://www.hillside.net/plop/2016/papers/three/26.3.pdf).

## Candiate Classifications

This section shall serve to collect individual proposals for systems of ISC
patterns. Contribute away ;)

### Georg Grütter

I propose we use a classification of the problem, a pattern tries to solve as
the main criteria for organizing our list of patterns. The following
classifications come to mind:

- 1. Getting started with InnerSource
- 2. Getting sustainable middle management buy-in and support
- 3. Getting buy-in of developers
- 4. Fostering contributions
- 5. Interfacing with traditional, non-InnerSource projects

Tim: Could be tags, instead of (orthogonal) planes
Ofer: Ideas for vectors: Timeline, adoption, ...

As an additional category, we might classify the solutions provided by the
patterns into:

- organizational and
- social.

#### Test run

- 30 Day Warranty;1/2/3/4/5
- Common Requirements;1/4
- Contracted Contributor;1/2/4
- Dedicated Community Leader;1/4
- Discover Your InnerSource;1/4/5
- Improve Findability;? (similar to "Discover your InnerSource"?)
- Junkyard Styled InnerSource;3/4
- Modular Code;1/2/3/4/5
- Review Committee;1/2

- Change Middle Management Mindset
- Assisted Compliance
- Include Product Owners
- Start as Experiment
- Not Invented Here
- Change Developers Mindset
- Overcoming Project Management Time Pressures
- Open Source Trumps InnerSource
- Get Contributions Despite Silo Thinking
- Contained InnerSource

### Tim Yao

Another plane that would be useful is the plane of type of InnerSource.
InnerSource programs can be structured to accomplish different goals: e.g.,

* P: Product Development
* T: Tools Development
* I: Innovation (Proof of concepts, demos)
* S: Shared components development
* C: Culture

Each of these programs have some unique characteristics. E.g., sometimes in
Product Development, the open source characteristic of voluntariness has to be
sacrificed to ensure that sufficient development resources are dedicated to
meet customer commitments and schedules. Similarly, there might be a need to
limit code visibility/transparency for certain very proprietary products while
making use of InnerSource methods to facilitate joint development between
different business lines.

#### Test run

- 30 Day Warranty;P/T/S
- Common Requirements;P/I/S
- Contracted Contributor;P/T/I/S
- Dedicated Community Leader;P/T/I/C
- Discover Your InnerSource;T/S
- Improve Findability (s. above)
- Junkyard Styled InnerSource;T/S/C
- Modular Code;P/T/S
- Review Committee;I/S/C

- Change Middle Management Mindset
- Assisted Compliance
- Include Product Owners
- Start as Experiment
- Not Invented Here
- Change Developers Mindset
- Overcoming Project Management Time Pressures
- Open Source Trumps InnerSource
- Get Contributions Despite Silo Thinking
- Contained InnerSource

#### Pattern Classification vs. Pattern Language

One lesson from PLoP 2017 was that the GoF book presented not a pattern
language but a (useful) collection of patterns. Ideally, while we may have
different classification systems for our InnerSource patterns, I think we want
to develop a Pattern Language--a group of patterns that work together to solve
a larger problem (e.g., "How do I build a new InnerSource program appropriate
for my company") vs. a collection of patterns that might not have a larger
goal.

### Daniel Izquierdo

Another option would be to use the principles defined by Jim Jagielski in his
talk "InnerSource 101 and The Apache Way"[1] as a way to characterize patterns:

* Culture
* Communication
* Transparency
* Collaboration
* Community
* Meritocracy

And in addition, this would have some ortogonal techniques to work on building
a proper transparency (for instance) that could go from the infrastructure to
be used to monitoring the process and produce surveys, training and other
actions.

Another potential characterization would be to use a similar structure as
existing in the organizations. This would affect all of the departments in that
organization. For instance, the 'Review Committee' pattern helps with the
process of letting developers work on their own and still give control to
middle management and business roles. Would it make sense to have another
potential characterization based on the companies structure?

* IT/DevTeams
* Marketing
* Management
* Legal
* Business
* Financial

#### Test run

- 30 Day Warranty
- Common Requirements
- Contracted Contributor
- Dedicated Community Leader
- Discover Your InnerSource
- Improve Findability
- Junkyard Styled InnerSource
- Modular Code
- Review Committee

- Change Middle Management Mindset
- Assisted Compliance
- Include Product Owners
- Start as Experiment
- Not Invented Here
- Change Developers Mindset
- Overcoming Project Management Time Pressures
- Open Source Trumps InnerSource
- Get Contributions Despite Silo Thinking
- Contained InnerSource

[1] https://es.slideshare.net/jimjag/apachecon-2017-innersource-and-the-apache-way

### Russ Rutledge

I like a lot of the other planes suggestions.  Wanted to add one more - the point in the lifecycle of the InnerSource project.  Does this pattern apply to:

* Pre-launch (prepration to launch) an InnerSource project?
* Launch (initial kick-off)?
* Initial growth?
* Broad adoption?
* End-of-life?

#### Test run

- 30 Day Warranty
- Common Requirements
- Contracted Contributor
- Dedicated Community Leader
- Discover Your InnerSource
- Improve Findability
- Junkyard Styled InnerSource
- Modular Code
- Review Committee

- Change Middle Management Mindset
- Assisted Compliance
- Include Product Owners
- Start as Experiment
- Not Invented Here
- Change Developers Mindset
- Overcoming Project Management Time Pressures
- Open Source Trumps InnerSource
- Get Contributions Despite Silo Thinking
- Contained InnerSource

### Ofer Hermoni

tools
security
Culture change (probably need to separate into multiple categories)
buy in
trust
etc.
Processes / Methodology
Coding practices
