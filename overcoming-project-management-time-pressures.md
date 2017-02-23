**Title:** Time Constraints Hamper Inner Source Progress  

**Statement of Problem:**  Project management believes that timeline pressures and feature content commitments do not allow Developers to spend the time needed to develop shareable, reusable code and provide support. As a result, there is currently no code available for reuse, and Developers are writing redundant code.

**Context:** Customer deadlines and delivery commitments for feature content do not change.  

**Forces:**
- Aggressive roadmaps for delivery
- Project management concern that engagement will lead to missed deadlines 
- Project management concern that Code contribution and/or mentoring may lead to dilution of subject matter expert time spent on their own projects (other teams may require their time).
+ Elimination of rewriting common code saves time (write once, use many times)
+ Crowd-based testing and debugging saves time (and improves quality)
+ The collaboration and synergy of inner sourcing can generate new, innovative features  .
+ Test Driven Development could mitigate some of the above forces

**Resolution:** 
- Known pattern: temporary fork by product team, merging changes back later to component team
- Known anti-pattern: surreptitious temporary fork, no communication
- New Pattern: Pre-pull request (prior to release), to ensure component team has buy-in, to avoid breakage for temporary fork
- Allocate time into Development sprint/release schedules to allow for inner sourcing
- Provide education to product owners and Development leads regarding time saving benefits of Inner Source

**Resulting Context:** Time is allotted in the schedule for inner sourcing. Less duplicative development due to availability of reusable code. (No negative impact on customer deadlines or content delivery commitments.)
  
**Authors:**  
- Tim Yao
- Nick Stahl
- Guy Martin
- Michael Dorner
- Erin Bank

**Status:** Draft Pattern
