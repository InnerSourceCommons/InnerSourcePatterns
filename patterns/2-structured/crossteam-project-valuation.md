## Title

Cross-Team Project Valuation

## Patlet

It's hard to sell the value of cross-team InnerSource projects that don't provide a direct impact on company revenue.
Here's a data-driven way to represent your project that both articulates its value and amplifies it.

## Context

* You are responsible for a cross-team that serves as a platform for others in the company.
* The cross-team project does not deliver any direct value for company revenue.

## Problem

Cross-team projects can potentially have a very large impact on the company yet are difficult to represent in a data-driven fashion.
As a result, it is easy and common to either pursue projects that do not provide real value or to underfund what would otherwise produce great value.

## Forces

* Projects need to show value (objective or subjective) to company leadership in order to be funded.
* Cross-team project value is dispersed across multiple end business units.
* Due to this dispersal, cross-team project value is difficult to measure directly.

## Solution

Set in place a pattern and model of how to value cross-team projects.
Such models give us the tool that we need to focus and amplify high-value collaboration for the company.

The core of all cross-team project value is the idea that we can get more done together than apart.
Ascribing value to a cross-team effort is an exercise in quantifying _how much more_ is getting done together.
The exact delta in productivity will vary by domain and project.
There is a common process, by which you can create a model to calculate it.

### Explanation

Assemble a small team of subject matter experts in your domain.
Using that team of experts, estimate 4 things about each consumer of your project output:

* How long does it take them to consume your project output?
* How long would it otherwise take them to home-roll the value of your project output for themselves?
* What percentage of your project output is actually useful for them?
* How much time on an ongoing basis (ideally per-use) would they otherwise spend maintaining their home-rolled solution?

When making these estimations, it's impossible to know with high accuracy _exactly_ how long any activities take.  That's not your goal.
Rather than exactness, you should strive to _**set a worst-case bound**_ on these estimates.
The idea is for the group of experts to be able to say to each other, "We don't know exactly how long it would take, but we can all agree it's _at least_ this much."
Specifically, you should estimate a _maximum_ reasonable time to consume your project output and _minimum_ reasonable times for consumers to otherwise home-roll, use and maintain their own solutions.

One note about cost of "rolling your own solution" (home-roll).  The cost to home-roll a solution is NOT necessarily (very unlikely, in fact) the same as the cost of making a shared solution.
Oftentimes for the same functionality the modularity and quality involved in building a cross-team, shared solution makes it a noticeably higher investment than a quick, hard-coded implementation used just once.

### Formula

Once you have your worst-case bounds you can value your cross-team project output during a given time frame via the simple formula:

```
[Time Saved] - [Time Invested]

([Count of New On-boardings] * [Cost to Home-Roll] * [Percent Useful Functionality] + [Count of Usages] * [Maintenance Cost Per Use]) - ([Count of New On-boardings] * [Cost to On-board])

[Count of New On-boardings] * ([Cost to Home-Roll] * [Percent Useful Functionality] - [Cost to On-board]) + [Count of Usages] * [Maintenance Cost Per Use]
```

### Commentary

Despite the trappings of rigor, this process does not yield an exact way to measure cross-team project output.
In-practice, however, it does give a framework by which you can make a sound decision at how to fund this work.
After having good, reasonable data according to the above explanation, you should fund dedicated development hours toward running the project up to _**at least**_ of the lesser of the following three levels:

1. The raw hours saved by the formula above.  Since we're all sure that the formula will produce a number that is below the true number of hours saved, you can have confidence that funding the project up to that point is a sure win for you.
1. The amount of time that it takes to support inner sourced contributions to cross-team projects.  Since the contributor would likely have done the work anyway in a one-off fashion, it is worth it to fund the time it takes to facilitate their work going into a shared location.
1. Whatever feels good to you.  One intentional side effect of having a valuation formula is that it naturally forces measurement of the key points of usage that provide value to consumers.

Those measurements can be understood and consumed in their raw form to provide you with a gut-feel idea of how valuable is the project.

Some may be concerned about the lack of accuracy in this valuation approach.  It's okay for this process to not give an exact measurement.  It just needs to be accurate enough to accomplish 2 purposes:

1. Give a means to represent the value of what is happening to those that are organizing and funding cross-team efforts.
1. Help those involved to know what areas of cross-team effort are higher priority to pursue based on their value.

In-practice, as long as these valuations are within an order-of-magnitude of reality and one-another, they are sufficiently accurate to fill these purposes.
They will provide a head-and-shoulders improvement in on-the-ground results over the ad hoc valuations (and resultant effects) described in the **Problem** section at the beginning of this document.

## Resulting Context

* Data-driven means to discuss the value and funding of the cross-team project with leadership.
* Key metrics around the cross-team project instrumented in raw form.
* Defining how the cross-team project provides value tends to lead to it actually producing greater value for the company.
* Generally-successful project and "buzz" around it.

## Known Instances

* Nike

## Status

* Structured
* Proven in multiple domains.

## Authors

* Russ Rutledge

## Acknowledgments

* Jeremiah Wright for teaching me to think about cross-team projects as an internal business dealing in the currency of developer time.
