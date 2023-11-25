# Adopters

Each pattern in this book has been contributed by an organization. That confirms that a single organization is using a given approach.

However the idea of a pattern is that they provide repeatable, proven solution that other organizations can apply in their own context.
Therefore these patterns become more powerful, when multiple organizations confirm that they have implemented a pattern.

This provides a great low-friction way for all readers of this book to contribute!

## Share your pattern adoption

If you see a pattern in this book that you are using at your organization, please do the following:

- on a given pattern page, click the 'Edit on GitHub' button
- add your own organization to the 'Known Instances' section
- then submit your changes as a Pull Request

## Showcase your InnerSource approach

Once the Pull Request with your changes has been merged, you will not only be listed on the pattern itself, but you will also get a dedicated page for your organization, showcasing all the patterns that you are using.

See the pages below for all organization that have confirmed their adoption and implementation of some of our patterns.

## Backup

Implementation approachs:

a)

- take a list of predefinded organization names (e.g. from a file `adopters.txt`)
- loop through all pattern files
- extrac the "Known Instances" section
- check if it contains the name of the organization, and if yes, story it in a list dict[org] => [list of patterns]
- then generate a file `adopters/<org_name>.md`
- write a list of patterns to that file
- commit these changes

- have the `book.yaml` GHA run after this, so that it can pick up these `adopters/*.md` files, and add them to `toc.md`