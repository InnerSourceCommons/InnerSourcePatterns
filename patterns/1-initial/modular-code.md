## Title

Modular Code

## Patlet

The lack of modularization in the software architecture prevents reuseability, and with that the ability to reap the benefits of InnerSource. By helping the teams to understand the benefits of modularization, and making time to work towards that goal, more InnerSource collaboration can happen and the software architecture overall can be improved.

## Problem

With rare exceptions, monolithinc code is difficult to contribute to as it packs much functionality (much to read, much to grasp, much to test, much to review, and much to document). Finding slots and the right mood to attack big chunks of work is difficult.

The same functionality is reimplemented redundantly causing waste of unneeded re-design and re-development and duplicated mainteinance effort.

Sometimes the first problem causes the second, but it might also happen spontaneously.

## Context

* There might be potentially reusable functionality buried in monolithic code. Legacy code tends to be less modular than new one.
* There is an available repository for sharing code.
* Source code can be as useful as documentation on small enough pieces.
* Documentation needed for getting started using a small piece of code is easy to write.
* Time commitments might already have been made for customer deliveries (not changeable).
* The value of modularity is nearly invisible for end users.

## Forces

* Against:
  * Developers who develop monolithic code bases might lack the perspective of how modularity might improve how they work.
  * Developers might not know how to write modular code.
  * You might be dealing with legacy systems. Might be a fear that if not done properly, quality might be impacted.
  * Architectural constraints might impact modularity.
  * The value of modularity is nearly invisible for end users.
* In favor:
  * Modularization mitigates risk and fear of quality degradation from accepting InnerSource contributions.
  * Companies moving to use more open source code will appreciate modularity more over time.
  * Code protected through reliable automated testing offers a chance for newcomers to safely have an impact by refactoring. Modularization is a powerful goal for refactoring. And refactoring usually drags additional benefits.
  * Frequent turnover of team members speaks for modularization, as it helps newcomers to learn about the system at smaller bits.
* Neutral / Two-folded:
  * Some companies have a common components group that develops reusable code, but others feel that such components should be developed by those business lines that are using the components and a library of common components could be established.
  * Level of communication between teams can impact ability/inclination to modularize.

## Solutions

Modular code is far more reusable. Decoupling functionality into smaller narrow-focused modules eases
and therefore promotes external contributions and onboarding of newcomers.

* Offer education.
  * On why: Lack of modularity is technical debt. It increases costs but hides them by shifting these into the future.
  * On how: Modular code is well-understood; there is a lot of literature in favor of this that can be used for training.
  * Select certain "success projects", teams that have developed reusable code and can demonstrate the long term success. This can help motivate others, as they see what is possible and what is in it for them. Learning directly from other developers is critical.
* Introduce refactoring as an organic effort and strive for it to become part of the culture.
  * Acknowledge and drive acceptance for the investment in modularization. Build time into the release schedule for this.
* Search for modularizable functionalities:
  * Identify common functionalities and code blocks with potential for profitable modularity.
  * Establish a checklist of elements to be checked off to classify a component as reusable.
    There could be requirements on tests, tools and documentation before considering a component as reusable.
    Establish standards on testing methodology, labeling of repos.
* Eat the elephant in small bites. Break modularization down into baby steps, like
  1. Find internal would-be customers. Better ask them over guessing on your own.
  1. Define decoupling scope and preferred decoupling methods.
  1. Develop automated testing protection.
  1. Document usage of modules.
  1. Introduce semantic versioning.
  1. Committing to not breaking backwards compatibility.
  1. Use a dependency management software such as pip, nuget, npm.
* More information and techniques are available from the book *[Working Effectively with Legacy Code](https://www.oreilly.com/library/view/working-effectively-with/0131177052/)* by Michael Feathers and *[Refactoring: Improving the Design of Existing Code](https://martinfowler.com/books/refactoring.html)* by Martin Fowler.

## Resulting Context

* Modular code facilitates division of parallel labor (as required for work in larger teams, or as an open source project).
* Modular projects enable team members to focus on their own smaller assigned tasks.
* Modular code helps Agile: For the same functionality, you'll need to change more bits, but the modularity helps to materialize sooner (earlier and more reliable validations) and to prioritize the most relevant bits (separate value from waste).
* Modular efforts increase autonomy and accountability for Engineers, which can raise satisfaction and quality.
* Modular code makes the pathway to InnerSource and open source smoother.
* Modular code gets used more often, and that diverse set of users often leads to higher quality code.

## Known Instances

Elements of the resolution have been proven by various companies such as

- GitHub

## Status

Initial

## Authors  

* Tim Yao, Nokia
* Erin Bank, CA Technologies
* Keerthi Surapaneni
* Igor Zubiaurre
