# Pattern States (New Nomenclature)

Below shows the nomenclature around the maturity and state that each pattern can be in. Each pattern is either less or more mature (has a solution or doesn't), and goes through a multi-step review process.

<img src="/assets/img/patterns-steps-and-maturities.png" height="350" style="float:right" align="right" alt="Pattern Maturity and Review Steps as seen on Github">

## Pattern Maturity

Pattern Maturity describes what **state the Solution is in**. It gives the reader of these InnerSourcePatterns an idea how much they can trust the pattern.

* A - Donut (Lacks Solution)
* B - Unproven (Ideas)
* C - Proven (Draft)

## Review Steps

The **Review Steps** refer to what needs to be done next in the review process. This keeps reviews on track and helps to move the patterns towards the next level of Pattern Maturity.

* 0 - Incomplete
* 1 - Do 1st Review
* 2 - Needs Revision
* 3 - Do 2nd Review
* 4 - Finalize
* 5 - Accepted

## Examples

**Pattern Maturity** and **Review Steps** are used in combination. Therefore the [pull requests][pulls] on this repository often have two labels, one for the maturity of the solution, and one for the phase of the review the pattern is in.

Some examples to illustrate this:

* e.g., Donut pattern needing its 1st review
* e.g., Unproven pattern that has been reviewed once and is in need of a revision

# Explanation of Changes (from 03/2017)

Context: Some of these fields were renamed from a prior version of our repository. The below describes the changes made.

I renamed it "Pattern Maturity", because this was formerly not clear to me what a 'Pattern Type' was. It did not speak to the fact that the 3 'types' were levels of how complete or mature the pattern is.

"Unproven" and "Proven" will take us getting used to, but they explain the maturity-level better than 'Idea' and 'Draft', which both can mean things not intended (Georg, Daniel, and I used them incorrectly multiple times). When these two states were explained on the head wiki page (now on README) it had in parenthesis that their difference was really how proven or unproven the solutions were. So, why not just use the explanation instead of words that can take on arbitrary meanings?

I kept "Donut" as I tried a couple meaningful names, but it just sounds too catchy/rememberable as Donut. It definitely needs an explanation next to it "(Lacks Solution)" wherever mentioned - when I was new I couldn't figure out the "donut" references.

The "Review Steps" refer to what needs to be done NEXT. This keeps reviews on track and knowing what comes next.

The numbering / order helps on GitHub to visualize and keep reviewers on track. The coloring also helps with visualization. [Go check it out live][pulls].

"Early Idea" tag is for Issues where very initial or place holder ideas can be placed. "Non-Pattern" can be used for meta Pull Requests such as edits to README.md.

[pulls]: https://github.com/InnerSourceCommons/InnerSourcePatterns/pulls
