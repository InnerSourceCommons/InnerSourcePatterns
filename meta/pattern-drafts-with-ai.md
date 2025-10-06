# Drafting InnerSource Pattern with AI

Our AI friends can help us to brainstorm and write new InnerSource patterns.
Usual precaution should apply, as always with AI ;)

## How to use this

- Paste the below prompt into ChatGPT or your AI agent of choice.
- Add a description of the **problem** you are looking to solve, as well as the intended **solution** (if you already have one in mind).
- Let AI do its magic.
- Then populate the missing sections and adapt the pattern manually as you see fit.
- Finally, submit your work as a pull request to our repo.

You might also want to instruct the AI to return the answer as a markdown file, that you can more easily copy and paste into a GitHub Pull Request.

## Prompt

```
I want to write a new InnerSource Pattern.

The pattern needs to follow this template:
https://github.com/InnerSourceCommons/InnerSourcePatterns/blob/main/meta/pattern-template.md

Further instructions:
- Each headline in the template starts a new section, with a distinct semantic purpose.
- Therefore the names of the headlines should be kept as they are. The headlines in the final pattern should appear in the same order as in the template.
- The value of these sections should be "TBD": Known Instances, Author
- The value of the Status section should be "Initial".
- These sections should be removed: Acknowledgments
- The section "Related Patterns" should contain markdown links to relevant patterns from https://patterns.innersourcecommons.org, including an explanation of how these patterns relate to this new pattern.
- The word "(optional)" should be removed from the headlines.

This is the concept that I want to explain in the pattern:

<describe the problem and intended solution here in rough terms>
```
