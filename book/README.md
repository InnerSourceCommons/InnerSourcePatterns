# How to generate the InnerSource Patterns gitbook

Whenever changes to the [InnerSource Patterns][InnerSourcePatterns] GitHub repository are made, a new version of our InnerSource Patterns book is published at [patterns.innersourcecommons.org][book_production].

## Where is the book published?

The most up-to-date version of the book is available for readers at [patterns.innersourcecommons.org][book_production].

We also have a [Staging version][book_staging], used by the editors/producers of the book for testing purposes. If you want to make any structural changes to the book, please send a PR to merge your changes into the `book-staging` branch. That way we can test your changes on the Staging version first, before they go live.

## Which patterns are published?

The book contains patterns of maturity **Structured** (Level 2) or **Validated** (Level 3). **Initial** (Level 1) patterns are not published in the book, because those are still subject to a lot of change, and have likely not even proven to work yet. For more on these maturity levels see the [Contributor Handbook](../meta/contributor-handbook.md).

## How does it work?

The `/book` folder contains generator scripts and extra content required to create the gitbook.

- `.github/workflows/book.yml` - A GitHub Action that triggers scripts to generate the book.
- `/book/scripts/generate_toc.rb` - This script generates the table of contents (ToC) for the book. It takes patterns of maturity **Structured** and **Validated**, extracts title and patlet, and injects this info into `/book/en/toc_template.md`. The output is written to `/book/en/toc.md`. The ToC is what you see on the left-hand-side menu in the gitbook.
- `/book/en/.gitbook.yaml` - Holds basic configuration for the gitbook service. This file is copied to the root of the repo, if the English book is generated.
- `/book/en/introduction.md` - The introduction to our book. This is what the reader sees first when they open the book. *Note:* The current content is based on [README.md](../README.md).
- `/book/en/contribute.md` - Information about how to contribute to this book.
- `/book/en/explore-patterns.md` - Show the mind map of all patterns. Allows readers to link to the mind map directly.
- patterns content:
  - The English patterns are in `/patterns`
  - The translated patterns (e.g. for Japanese) are in `/translation/japanese`

The book is generated in multiple languages.

The descriptions above are for the English book. You find the language specific content in `/book/en`.

For other languages (e.g. for Japanese), the content is mirrored and translated to folders like  `/book/jp`.

### Triggering the book generation

The book is generated in multiple languages.

Depending on which **branch** a change is merged into, a different book is generated:

* changes merged to `main` branch: triggers the book generation for the **English** book.
* changes merged to `book-jp` branch: triggers the book generation for the **Japanese** book.

## Objectives of the book

These patterns are already publicly available in the [InnerSource Patterns][InnerSourcePatterns] GitHub repo. So why publish such a book at all?

There are a couple of good reasons to publish the InnerSource patterns as a gitbook:

* (consumers) have something that is “nicer” to read than things on GitHub
* (consumers) search for keywords across all patterns
* (consumers) export book as PDF and read on other devices
* (consumers) have stable URLs for patterns that can be used as references in other material e.g. from the Learning Path (i.e. even if the files move in the folder structure in the GitHub repo, we can keep the URL of the pattern in the book the same)
* (producers) a motivation for pattern authors and all contributors to level up patterns from 1-initial, as only 2-structured and 3-validated are published in the book
* (producers) a motivation for us to introduce more specific quality guidelines for level 2+3, so that we can be even more proud of the content in the book :)
* (producers) learn which patterns are most interesting for readers (e.g. through Google Analytics)

[InnerSourcePatterns]: https://github.com/InnerSourceCommons/InnerSourcePatterns
[book_production]: https://patterns.innersourcecommons.org
[book_staging]: https://innersourcecommons.gitbook.io/innersource-patterns-staging/v/book-staging/
