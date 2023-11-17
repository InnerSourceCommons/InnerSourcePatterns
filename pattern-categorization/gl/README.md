# Pattern Categorization

We see more and more patterns being contributed by the InnerSource community. That is awesome!

Now how do we make it easier for readers to discover the patterns that can help them in their particular situation?

## InnerSource Program Mind Map

This first categorization effort uses a mind map to categorize patterns based on the different phases of an InnerSource Program, and the challenges that might appear in the respective phases. See [innersource-program-mind-map.html](innersource-program-mind-map.html). Note that this mind map contains only the patterns that are published in our book (i.e. Level 2-Structured and higher).

In the mind map you will see patterns categorized from left to right in increasing levels of detail.

```mermaid
graph LR
    L0(L0 InnerSource Program) --> L1(L1 Phase) --> L2(L2 Problem Category)
    L2(L2 Problem Category) --> L3(L3 Specific Problem) --> L4("L4 Pattern (Solution)")
````

The logic for these levels is:

- L0: the InnerSource program itself (as the root)
- L1: phase of an InnerSource Program (begin/adopt/grow/scale)
- L2: problem category
- L3: specific problem occurring in an InnerSource context
- L4: pattern (solution to the problem)

## Adding a Pattern to the Mind Map

To add new patterns to the mind map, edit the file [innersource-program-mind-map.md](innersource-program-mind-map.md). Also see the explanation of the different levels in the mind map above.

Then create a PR with your changes. This triggers an [action](https://github.com/InnerSourceCommons/InnerSourcePatterns/actions/workflows/generate-mindmap.yml) that generates the mind map in HTML and PNG format, and adds those to your PR.

To test your changes locally, you can also generate the mind map yourself like this:

We are using `node 12.x` at the moment.

```
npm install -g markmap-cli
npx markmap --no-toolbar innersource-program-mind-map.md
```

## Future Ideas for Categorization

We have some other ideas for categories by which the InnerSource Patterns could be grouped.

* **Single Project vs Organization** - Some patterns are applicable to single project, while others are organizational effort. For people working on specific initiative, single project level patterns might be more interesting. For people working on scaling InnerSource, organizational patterns are important.
* **InnerSource Adoption Obstacles** - The [2020 State of InnerSource Research](https://innersourcecommons.org/documents/surveys/State.of.InnerSource.Report.2020.pdf) identifies various obstacles for InnerSource adoption (see page 25). We could identify the patterns that help address each of these obstacles.
* **Management and Empowerment** - Some patterns help to manage, govern, mitigate risk. Some other patterns help to empower, attract, build communities. This categorization can help others to quickly find the group of patterns that fit their needs.

## References

The idea for categorizing patterns is loosely based a description in [Thoughts on an InnerSource Pattern Language](https://drive.google.com/file/d/13AY8glCOdpLOVuz7cVD6QOB8d2xbHCS1/view) by Tim Yao, Bob Hanmer and Padma Sudarsan (2018). For specifics see slide 15 in that slide deck.
