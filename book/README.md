# How to generate the InnerSource Patterns gitbook

Whenever changes to the [InnerSource Patterns][InnerSourcePatterns] GitHub repository are made, a new version of our InnerSource Patterns book is published at gitbook.com.

The files in the `./book` folder contain generator scripts and some extra content required to create our gitbook.

## Where is the book published?

The most up-to-date version of the book is available for readers/consumers at [innersourcecommons.gitbook.io/innersource-patterns/][book_production].

*NOTE:*
The final URL of the book has not been determined yet.

We also have a [Staging version][book_staging], used by the editors/producers of the book for testing purposes.

## Which patterns are published?

In the book we publish the patterns of maturity **Structured** (Level 2) or **Validated** (Level 3). For more on these maturity levels see the [Contributor Handbook](../meta/contributor-handbook.md).

## How does it work?

- `/.gitbook.yaml` - Holds basic configuration for the gitbook service. This never needs to be changed.
- `/book/toc.md` - An auto-generated table of contents (ToC) for the book i.e. a list of all pages and patterns that are part of the book. The ToC is what you see on the left-hand-side menu in gitbooks.
- `/book/generate_toc.rb` - Takes patterns of maturity **Structured** and **Validated**, extracts title and patlet, and injects this info into `/book/toc_template.md`. The output is written to `/book/toc.md`.
- `.github/workflows/book.yml` - A GitHub Action that triggers the execution of `/book/generate_toc.rb`.
- `/book/introduction.md` - The introduction to our book. This content is what the reader sees first when they open the book. The current content is based on [README.md](../README.md). We may need to modify this content even further, to address the readers of the book more specifically, rather than the readers of our GitHub repository.
- `/book/contribute-to-this-book.md` - Information about how to contribute to this book.

## Objectives of the book

These patterns are already publicly available in the [InnerSource Patterns][InnerSourcePatterns] GitHub repo. So why publish such a book at all?

We think there are a couple of good reasons to publish the InnerSource patterns as a gitbook:

- (consumers) have something that is “nicer” to read than things on GitHub
- (consumers) have stable URLs for patterns i.e. even if the files move in the folder structure in the repo, the URL of the pattern stay the same
- (consumers) export book as PDF and read on other devices
- (producers) a motivation for pattern authors (and all contributors) to level up patterns from 1-initial, as only 2-structured and 3-validated are published in the book
- (producers) a motivation for us to introduce more specific quality guidelines for level 2+3, so that we can be even more proud of the content in the book :)
- (producers) learn which patterns are most interesting for readers (e.g. through Google Analytics)

[InnerSourcePatterns]: https://github.com/InnerSourceCommons/InnerSourcePatterns
[book_production]: https://innersourcecommons.gitbook.io/innersource-patterns/
[book_staging]: https://innersourcecommons.gitbook.io/innersource-patterns-staging/v/book/
