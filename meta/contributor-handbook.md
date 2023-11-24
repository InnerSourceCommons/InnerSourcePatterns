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

### Requirements: [Level 1 - Initial][patterns-initial]

- Validation requirements:
  - N/A

- Content requirements:
  - The pattern is readable & comprehensible for others (not just for the authors)
  - The authors contribute the contents according to the [license](../LICENSE.txt) & are allowed to do so
  - Thoughts and contents by third parties are quoted / referenced explicitly
  - The markdown of the pattern complies with [Check: Markdownlint](https://github.com/InnerSourceCommons/InnerSourcePatterns/actions/workflows/markdownlint.yml)

- Artifacts:
  - The patterns are stored as markdown files in [/patterns/1-initial][patterns-initial].

### Requirements: [Level 2 - Structured][patterns-structured]

- Validation requirements:
  - Is validated by at least 1 (one) known instance
    - Alternatively: key elements of the pattern have been validated in separate contexts and, in consequence, it is justified to believe the full solution will function

- Content requirements:
  - Uses the format described in the [Pattern  Template](pattern-template.md) - validated in parts by [Check: Pattern Syntax Validation](https://github.com/InnerSourceCommons/InnerSourcePatterns/actions/workflows/lint-patterns.yml)
  - Follows the [Pattern Style Guide](pattern-style-guide.md)
  - The title of the pattern is **memorable**, **concise**, and **descriptive** of what the pattern is about. For further tips see [Naming Patterns](pattern-style-guide.md#naming-patterns).
  - The pattern links to related patterns of this level or higher.
  - Links from the pattern to outside resources are working and are referencing a trusted resource - whether links are working is verified by [Check: Links](https://github.com/InnerSourceCommons/InnerSourcePatterns/actions/workflows/link-checker.yml)
  - The pattern is added to at least one phase of the [InnerSource Program Mind Map](../pattern-categorization/README.md).
  - Spelling & Styles checks pass - see [Check: Spelling & Styles](https://github.com/InnerSourceCommons/InnerSourcePatterns/actions/workflows/vale.yml)

- Artifacts:
  - The patterns are stored as markdown files in [/patterns/2-structured][patterns-structured].
  - The patterns are published at [patterns.innersourcecommons.org][book] - supported by automation via [Book ToC Generation][book-toc-automation]

### Requirements: [Level 3 - Validated][patterns-validated]

- Validation requirements:
  - Is validated by at least 3 (three) known instances
  - Considers all known instances to the best knowledge of the working group
  - Community agreement (via lazy consensus of trusted committers) on correctness of contents

- Content requirements:
  - Provides a visual/sketch that helps to illustrate the problem and/or the solution of the pattern. The visual also helps to make the pattern more memorable. Visuals are stored in [assets/img](../assets/img/).
  - Uses & has no conflicts with working group terminology (defined by [Glossary](glossary.md) / implicit usage)
  - Fits & has no conflicts with existing patterns (of this maturity level)
  - Thorough review by at least two [trusted committers](../TRUSTED-COMMITTERS.md)

- Artifacts:
  - The patterns are stored as markdown files in [/patterns/3-validated][patterns-validated].
  - The patterns are published at [patterns.innersourcecommons.org][book] - supported by automation via [Book ToC Generation][book-toc-automation]

[patterns-initial]: ../patterns/1-initial/
[patterns-structured]: ../patterns/2-structured/
[patterns-validated]: ../patterns/3-validated/
[book]: https://patterns.innersourcecommons.org
[book-toc-automation]: https://github.com/InnerSourceCommons/InnerSourcePatterns/actions/workflows/book.yml
