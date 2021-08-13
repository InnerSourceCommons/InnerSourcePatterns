# Pattern Categorization

We see more and more patterns being contributed by the InnerSource community. That is awesome!

Now how do we make it easier for readers to discover the patterns that can help them in their particular situation?

## InnerSource Program Mind Map

This first categorization effort uses a mind map to categorize patterns based on the different phases of an InnerSource Program, and the challenges that might appear in the respective phases. See [innersource-program-mind-map.html](innersource-program-mind-map.html). Note that this is still an incomplete visualization i.e. it does not contain all of our patterns.

To add new patterns to the mind map, edit the source file `innersource-program-mind-map.md`, and then regenerate the visualization like this:

```
npm install markmap-lib -g
markmap innersource-program-mind-map.md
```

Once this is done please replace `book/innersource-program-mind-map.png` with an updated version of this mind map.

## Future Ideas for Categorization

We have some other ideas for categories by which the InnerSource Patterns could be grouped.

One is **management and empowerment**. Some patterns help to manage, govern, mitigate risk. Some other patterns help to empower, attract, build communities. This categorization can help others to quickly find the group of patterns that fit their needs.

Another angle is **single project vs organization**. Some patterns are applicable to single project, while others are organizational effort. For people working on specific initiative, single project level patterns might be more interesting. For people working on scaling InnerSource, organizational patterns are important.

## References

The idea for categorizing patterns is loosely based a description in [Thoughts on an InnerSource Pattern Language](https://drive.google.com/file/d/13AY8glCOdpLOVuz7cVD6QOB8d2xbHCS1/view) by Tim Yao, Bob Hanmer and Padma Sudarsan (2018). For specifics see slide 15 in that slide deck.
