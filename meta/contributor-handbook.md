# Contributor Handbook

This document lays out a basic guideline of how to write and contribute a new pattern.

## Maturity Levels

We defined four maturity levels for patterns: The higher a pattern's maturity level, the more strictly it was validated and the better is its writing.


### Maturity Levels Overview

| \# | Name | Description | Usage | Time to merge |
| ---- | ---- | ---- | ---- | ---- |
| 1 | Initial | Contains an initial pattern idea or what we call a donut (a pattern with missing sections). | Not included in any publications | A few days / weeks |
| 2 | Structured | Contains a complete pattern that it is not properly validated yet (e.g. because it only synthesizes an idea or the experiences from one instead of three organizations). | Included in the patterns catalogue but with a warning | A few days / weeks |
| 3 | Validated | The pattern is validated (e.g. because three or more instances exists and are synthesized by the pattern) and its writing is of high quality. | Included in the patterns catalogue | One or two months |
| 4 | Holy | The pattern is validated, its writing is of "text book" quality, and the community agrees it is responsible to use it as teaching material. | Included in the patterns catalogue and patterns book | As long as it takes |

To achieve a given maturity level a pattern has to satisfy the requirements for that given maturity level and lower levels. The following sections lay out the requirements per maturity level in detail.


### Requirements: Level 1 - Initial

Patterns (or other documents) of level 1 are stored in the directory `/1-initial`.

- Document types:
	- Patterns (`pattern-*.md`)
	- Donuts - patterns without solution or other missing sections (`donut-*.md`)
	- Tale - unstructured information in any form (`tale-*.md`)
	
- Validation requirements:
	- N/A
	
- Content requirements:
	- The document is readible & comprehensible for other's than the author(s)
	- The author(s) contribute the contents according to the [license](../LICENSE.md) & are allowed to do so
	- Thoughts and contents by third parties are quoted / referenced explicitly

	
### Requirements: Level 2 - Structured

Patterns of level 2 are stored in the directory `/2-structured`.

- Document types:
	- Patterns (`pattern-*.md`)
	
- Validation requirements:
	- N/A
	
- Content requirements:
	- Complies with [basic style guide](#) - *Oops! We have not yet developed this*
	
	
### Requirements: Level 3 - Agreed

Patterns of level 3 are stored in the directory `/3-agreed`.

- Document types:
	- Patterns (`pattern-*.md`)
	
- Validation requirements:
	- Is validated by at least three known instances
		- Or: pattern warrants to still be included (e.g. because validation is not feasible in the foreseeable future)
	- Considers all known instances to the best of working group members' knowledge
	- Community agreement (via lazy consensus of TCs) on correctness of contents
	
- Content requirements:
	- Uses & has no conflicts with working group terminology (defined by glossary / implicit usage) - *Oops! We have not yet developed this.*
	- Fits & has no conflicts with existing patterns (of this maturity level or higher)
	
	
### Requirements: Level 4 - Polished

Patterns of level 4 are stored in the directory `/4-polished`.

- Document types:
	- Patterns (`pattern-*.md`)
	
- Validation requirements:
	- Complies with [advanced style guide](#) - *Oops! We have not yet developed this.*
	- Community agreement (via lazy consensus of TCs) this representing universal truth about InnerSource (using best judgment) and it being responsible to push it out
	- Is free of conflicts with other InnerSource Commons learning materials and external InnerSource literature or adresses these conflicts explicitly
	