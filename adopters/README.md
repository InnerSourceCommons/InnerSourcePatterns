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