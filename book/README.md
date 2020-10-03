# How to generate the InnerSource Patterns gitbook

Whenever changes to the [InnerSource Patterns][InnerSourcePatterns] GitHub repository are made, a new version of our InnerSource Patterns book is published at gitbook.com.

The files in the `./book` folder contain generator scripts and some extra content that is needed to create our gitbook.

## Where is the book published?

The latest version of the book for readers/consumers is hosted at [innersourcecommons.gitbook.io/innersource-patterns/v/book/](https://innersourcecommons.gitbook.io/innersource-patterns/v/book/).

*NOTE:*
The final URL of the book has not been determined yet.

We also have a [Staging version](https://innersourcecommons.gitbook.io/innersource-patterns-staging/v/book/), mostly used by the editors/producers of the book for For testing purposes.

## Which patterns are published?

We publish the patterns that are of maturity **Structured** (Level 2) or **Validated** (Level 3).

## How does it work?

- `/.gitbook` - Holds basic configuration for the gitbook service. This never needs to be changed.
- `/book/Introduction.md` - The introduction to our book. This content is what the reader sees first when they open the book. The current content is based on [README.md](../README.md) but we may modify this content even further, as we need to address the readers of the book (rather than the readers of our GitHub repository)
- `/book/toc.md` - This is the table of contents (ToC) for the book i.e. it contains all pages and patterns that are part of the book. This file is used to generate the left-hand-side menu in gitbooks.
- `/book/generate_toc.rb` - Takes patterns of maturity **Structured** and **Validated**, . the ToC for the book using `/book/toc_template.md` as a template. Output is written to `/book/toc.md`. (the generating process runs via a GitHub Action defined in `/.github/workflows/book.yml`)


## Objectives of the book

These patterns are already publicly available in the [InnerSource Patterns][InnerSourcePatterns] GitHub repo. So why publish such a book at all, you might argue?

We think there are a couple of good reasons to publish the InnerSource patterns as a gitbook:

* (consumers) have something that is “nicer” to read than things on GitHub
(consumers) have stable URLs for patterns i.e. even if the files move in the folder structure in the repo, the URL of the pattern can stay the same
* (consumers) export book as PDF and read on other devices
* (producers) a motivation for pattern authors (and all contributors) to level up patterns from 1-initial, as only  2-Structured and 3-Validated are published in the book
* (producers) a motivation for us to introduce more specific quality guidelines for level 2+3, so that we can feel even more proud of the content in the book :)
* (producers) learn which patterns get viewed most frequently (e.g. through Google Analytics)

[InnerSourcePatterns]: https://github.com/InnerSourceCommons/InnerSourcePatterns
