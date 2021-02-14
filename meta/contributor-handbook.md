# Contributor Handbook

This document lays out a basic guideline of how to write and contribute a new pattern.

## Maturity Levels

We have defined three maturity levels for patterns: The higher a pattern's maturity level, the more strictly it was validated and the better is its writing.

### In a Nutshell

| \# | Name | Description | Time to merge |
| ---- | ---- | ---- | ---- |
| 1 | Initial | Contains an initial pattern idea or what we call a donut (a pattern with missing sections). | A few days / weeks |
| 2 | Structured | Contains a complete pattern that it is not properly validated yet (e.g. because it only synthesizes an idea or the experiences from one instead of three organizations). | A few days / weeks |
| 3 | Validated | The pattern is validated (e.g. because three or more instances exists and are synthesized by the pattern) and its writing is of high quality. | A few months |

For the first pattern you contribute, you should aim for maturity levels `1: Initial` or `2: Structured`.

If you want to help promoting a pattern one maturity level up, we suggest to first create an issue to discuss the matter and see if someone else is working on that already. After that, you can create a pull request with the necessary changes.

To achieve a given maturity level, a pattern has to satisfy the requirements for that maturity level and lower levels. The following sections lay out the requirements per maturity level in detail.

### Requirements: Level 1 - Initial

Patterns of level 1 are stored in the directory [/patterns/1-initial](../patterns/1-initial/).

- Validation requirements:
  - N/A

- Content requirements:
  - The pattern is readable & comprehensible for others (not just for the authors)
  - The authors contribute the contents according to the [license](../LICENSE.txt) & are allowed to do so
  - Thoughts and contents by third parties are quoted / referenced explicitly
  - The markdown of the pattern complies with [Check: Markdownlint](https://github.com/InnerSourceCommons/InnerSourcePatterns/actions?query=workflow%3AMarkdownlint)

- Artifacts:
  - The patterns are stored as markdown files in [/patterns/1-initial](../patterns/1-initial/).

### Requirements: Level 2 - Structured

- Validation requirements:
  - Is validated by at least 1 (one) known instance
    - Alternatively: key elements of the pattern have been validated in separate contexts and, in consequence, it is justified to believe the full solution will function

- Content requirements:
  - Complies with the format described in the [Pattern  Template](pattern-template.md) - validated in parts by [Check: Pattern Syntax Validation](https://github.com/InnerSourceCommons/InnerSourcePatterns/actions?query=workflow%3A%22Pattern+Syntax+Validation%22)
  - Complies with *basic style guide* - *Oops! We have not yet developed this*
  - The title of the pattern is concise and chosen based on either the problem or the solution outlined in the pattern. The file name is the same as the title. For further details follow the *basic style guide* - *Oops! We have not yet developed this*
  - The pattern references other patterns of this level or higher where appropriate (including links to the pattern)
  - Links from the pattern to outside resources are working and are referencing a trusted resource - validated in parts by [Check: Links](https://github.com/InnerSourceCommons/InnerSourcePatterns/actions?query=workflow%3A%22Link+Check+on+Patterns+and+README%22)

- Artifacts:
  - The patterns are stored as markdown files in [/patterns/2-structured](../patterns/2-structured/).
  - The patterns are published at [innersourcecommons.gitbook.io/innersource-patterns](https://innersourcecommons.gitbook.io/innersource-patterns/) - supported by automation via [Book ToC Generation](https://github.com/InnerSourceCommons/InnerSourcePatterns/actions?query=workflow%3A%22Book+ToC+Generation%22)

### Requirements: Level 3 - Validated

- Validation requirements:
  - Is validated by at least 3 (three) known instances
  - Considers all known instances to the best knowledge of the working group
  - Community agreement (via lazy consensus of trusted committers) on correctness of contents

- Content requirements:
  - Uses & has no conflicts with working group terminology (defined by glossary / implicit usage) - *Oops! We have not yet developed this.*
  - Fits & has no conflicts with existing patterns (of this maturity level)
  - Thorough review by at least two [trusted committers](../TRUSTED-COMMITTERS.md)
  - Spell Checking passes - *Oops! We have not yet developed this*

- Artifacts:
  - The patterns are stored as markdown files in [/patterns/3-validated](../patterns/3-validated/).
  - The patterns are published at [innersourcecommons.gitbook.io/innersource-patterns](https://innersourcecommons.gitbook.io/innersource-patterns/) - supported by automation via [Book ToC Generation](https://github.com/InnerSourceCommons/InnerSourcePatterns/actions?query=workflow%3A%22Book+ToC+Generation%22)
