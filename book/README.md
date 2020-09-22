# How to generate the InnerSource Patterns gitbook

Whenever changes to this GitHub repository are made, a new version of our InnerSource Patterns book is published at gitbook.com.

The files in the `./book` folder contain both configuration and some extra content that is needed to generate our gitbook.

## Where is the book published?

Currently we host a **Staging version** of the book at:
https://innersourcecommons.gitbook.io/innersource-patterns-staging/v/book/

The final URL of the book has not been determined yet.

## Which patterns are published?

We publish the patterns that are of maturity **Structured** or **Validated**.

## How does it work?

- `/.gitbook` - Holds basic configuration for the gitbook service. This never needs to be changed.
- `/book/Introduction.md` - The introduction to our book. This content is what the reader sees first when they open the book. The current content is based on [README.md](../README.md) but we may modify this content even further, as we need to address the readers of the book (rather than the readers of our GitHub repository)
- `/book/toc.md` - This is the table of contents for the book i.e. it contains all pages and patterns that are part of the book. This file is also used to generate the left-hand-side menu in gitbooks as well. Currently this is manually generated but to make this process more easily maintainable we should automate this.
