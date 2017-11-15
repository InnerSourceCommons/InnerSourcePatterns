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

## Candiate Classifications

This section shall serve to collect individual proposals for systems of ISC 
patterns. Contribute away ;)

### Georg Grütter

I propose we use a classification of the problem, a pattern tries to solve as
the main criteria for organizing our list of patterns. The following 
classifications come to mind:

- Getting started with InnerSource 
- Getting sustainable middle management buy-in and support 
- Getting buy-in of developers
- Fostering contributions
- Interfacing with traditional, non-InnerSource projects

As an additional category, we might classify the solutions provided by the
patterns into:

- organizational and
- social.















