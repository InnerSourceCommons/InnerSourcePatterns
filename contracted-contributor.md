## Title

_Contracted Contributor_ (aka _Free Electron_)

## Problem

Company A has started an InnerSource initiative. One of the goals for this
initiative is to foster innovation by allowing every associate to voluntarily
contribute to InnerSource projects, regardless of topic and business unit. 
After a year, only a few voluntary contributions have been received. While
engaging with potential individual contributors, the [[Dedicated Community Leader]]
determined that the main problem was that the contributors respective line 
managers did not allow them to contribute.

As a result, the total number of contributors remained small and progress was
not as fast as expected by top level management. Furthermore, contributions
mostly originated in the same business unit the Dedicated Community Leader
belonged to.  Innovation did not happen in the expected scale. Top management
is no longer convinced that InnerSource yields the expected benefits and
abandons the initiative altogether.

**Review Comments**

* (done) Clarify: "Not allowed to contribute"--by line managers (done)
* (done) **Introduce what was observed; then note that the main problem is XYZ**
* (done with previous two points) Seems to be several problems: not getting many contributions, line manager issue, top management not convinced that they are getting the benefits (how do you keep top management happy). Think about: what is really different; what part of the problem statement is solved by the solution.

## Context

- Top level management was on board with and is supporting the InnerSource initiative. For them, InnerSource initiative is just one of many initiatives to foster innovation. They are funding InnerSource with money and capacity for community leaders and are giving autonomy as for how the budget is spent. They are also limiting the breadth and duration of the initiative and partake in periodic reviews until there is proof that it yields the expected results. Top level management has announced their support for InnerSource on various company internal meetings, but has not empowered or incentivised mid-level managers to allow their employees to participate in cross-divisional InnerSource activities.
- The capacity of every associate is usually allocated to non InnerSource
  projects for 100 %.
- Cross organizational collaboration is not the norm.
- Line managers usually do not have targets outside of their own organisation.
- Contributions to InnerSource projects are expected to be made during working
  hours, not during free time.

**Review comments**

* **(done)** Top level management is aware, expecting savings, putting in money. Is this budget being put into saving capacity for InnerSource? Is a barrier preventing this? Where is that money going? People don't have to hide from top level management.
* **(done)** Is the budget in form of money? Has top level management fully bought into this? Budget is just one component. Point out how invested top management is.
* **(done)** Line management (mid-level) need to have some relief (explicit air cover) to ensure they are incentivized to support the behavior. So define what the top level support really means and how it relates to mid-level management. If there is no support at the mid-level, that's a huge problem. If there is and there is still not an InnerSource behavior, then that's different problem.
* **(done)** Meta comment: You could keep primary authors and list acknowledgements of those who had contributed a lot. Useful contact information (a resource). 

## Forces

- Managers of business units are held accountable for their results. Letting their
  staff participate in InnerSource activities not contributing to his organization
  would effectively reduce the capacity of his unit. This will likely make it harder
  for the managers to reach or exceed their goals.
- The performance review of all employees is based on what their line managers
  think they should do. Line managers (and HR) need to consider InnerSource
  activities as career relevant or else, the performance of employees participating
  in InnerSource as perceived by their line managers will suffer.
- The more time an associate spends on contributions to an InnerSource project
  which does not benefit his day-to-day work, the more will the workload for
  his teammates in his business unit increase.
- The individual contributor would like to participate to enhance his
  professional network within the company and gain knowledge and experience
  with both the InnerSource method and the technical area he makes a
  contribution to.
- The less executive air cover a line manager perceives he has, the less likely
  is he or she to have his or her staff participate in InnerSource activities which
  contribute to another business unit.
- The less transparency and control a line manager has of work done by one of
  subordinates InnerSource, the less likely is he or she to allow him or her to
  contribute.
- The less formal work in InnerSource is managed and organised, the less likely
  a line manager accustomed to formal processes is to sign off on one of his
  employees contributing to InnerSource.
  

**Review Comments**

* **(done)** Everyone assessed at the end of the year based on what the line manager thinks they should do; so whatever the contributor does should be recognized.
    - relevance to the career path of the contributor 
* **(done)** Managers don't feel they have air cover.
    - **(done - changed working of first bullet point)** Line managers would just need to let people join; can they accept that capacity? (Georg: that is what I tried to point out with my first bullet point above)
    - **(done - changed working of first bullet point)** Line managers also have to be reviewed (performance) and have to justify how they spend their capacity. (Georg: see first bullet point. Not clear enough?)
    - **(done)** Line managers usually don't have targets outside their own organization (should go into the context); managers should contribute some capacity to company's InnerSource ambitions (might be part of the solution).
 

## Solution

- Set up a governance office (_tbd. pattern link_) with central funding and budgetary
  independence from business units.
- The governance office sets up formal contracting between associate and his
  line management stating the ground rules for the associate participating in
  the InnerSource project. The contracting specifies a maximum percentage of
  the associates work time in InnerSource. The contracting also makes it clear
  that business usually takes precendence over work in InnerSource and that
  it is not required to work in InnerSource for the maximum percentage
  specified. The contracting is signed by the governance office, the community
  leader and the contributors line manager.
- The governance office refunds the business unit of the contributor for the
  time he participates in the InnerSource project with central funding. While
  that does not solve the business units problems related to meeting project
  deadlines and capacity for most business units, it does send a clear message
  to line managers that InnerSource has executive air cover and is something
  they expect from their organisation.
- The governance office mediates between the associate and his line management
  in case of conflict regarding the participation in the InnerSource project.
- The [[Dedicated Community Leader]] participates in or provides 
  input for the performance review of every associate contracted for more than
  20 % of his capacity.

**Review Comments**

* **(done)** For the line manager focused on deadlines and time, how was that handled (vs. cost)?
    - Not handled at all. Most important message: commitment of the central org to fund these activities (expresses blessing from top level management). Some BUs provide internal services (have to justify every hour); this allows their participation.
* **(done - see _Known Uses_)** Constraining scope of InnerSource to specific types (internal facing vs. public facing products)?
    - BU's allowed to use their code for products, but most was internal focused.
* **(open. Question: this seems to be more of a description of the Nokia approach to InnerSource. How does this apply to this pattern?)** Tried to connect product lines into an InnerSource community (co-create something they need for their product lines); implemented governance with central coordination and to set their focus for InnerSource scope. Still big challenges (not invented here). Project management activities through guardians.
     - Setting: predominant one wasn't participation in Product development but free innovation.

## Resulting Context

- Allocation of corporate funds to business units for reimbursement of 
  development capacity sets a clear sign that InnerSource is deemed valuable
  by the organization and that it has executive air cover.
- A formal contracting signals that work in InnerSource is managed 
  professionally and inspires trust.
- A formal contracting provides a basis for resolving conflict related to
  participation in InnerSource activities.
- A formal contracting increases transparency and provides a better overview
  about the associate's available capacity for his business unit and
  InnerSource projects, thus reducing the risk of "over-booked/planned
  capacity".
- With a stable group of contributors, it is more likely that some of them will
  eventually achieve trusted committer status.

**Review Comments**
* **(done: in solution)** A contract signed by line manager, contributor and the leader of the governance office and the community leader.
* **(done)** See if each of these isn't a force: lack of transparency--line manager doesn't know what his person is doing something anymore. Leave it here but also add them in the forces. These are things that make the problem difficult to solve.

## Known Instances

- _BIOS at Robert Bosch GmbH_. Note that InnerSource at Bosch was, for the majority, aimed at increasing innovation and to a large degree dealt with internal facing products. This pattern is currently not used at Bosch for lack of funding.

## Status

_Draft Pattern_

## Author

- Georg Grütter (Robert Bosch GmbH)

## Acknowledgements

- Diogo Fregonese (Robert Bosch GmbH)
- Robert Hansel (Robert Bosch GmbH)
- Jim Jagielski
- Tim Yao
- Cedric Williams
- Klaas-Jan Stol
- Padma Sudarsan
- Nick Stahl

## Changelog

- **2016-10-25** - first review