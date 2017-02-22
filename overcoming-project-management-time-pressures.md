**Title:** ??  

**Statement of Problem:**  Project management believes timeline pressure and commitments on feature content does not allow for developers to spend the time needed to develop shareable code and provide support.

Context: Customer deadlines (and committed feature content) do not change. InnerSource has already been tried on separate internal tooling projects.  

**Forces:**
- Project management is concerned/fearful that we will miss the committed dates if its developers spend time working on other projects or on documentation so that their code is modular or are spending time supporting shared code.
- Project managers worry that other organizations may require the time of their experts (dilution of expert time spent on their own projects).
- Inner sourcing can generate new, innovative features and could save time: benefitting the project manager. 
- Time in testing could also be saved by using more robust software (shared code is more likely to be more robust).
- Adopting InnerSource initially will slow you down.
- Test Driven Development could mitigate some of the above forces


**Resolution:** 
- Known pattern: temporary fork by product team, merging changes back later to component team
- Known anti-pattern: surreptitious temporary fork, no communication
- New Pattern: Pre-pull request (prior to release), to ensure component team has buy-in, to avoid breakage for temporary fork



**Resulting Context:** Time is allotted in the schedule to allow for inner sourcing.  

**Authors:**  
- Tim Yao
- Nick Stahl
- Guy Martin
- Michael Dorner

**Status:** Draft Pattern
