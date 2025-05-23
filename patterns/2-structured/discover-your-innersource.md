## Title

Discover Your InnerSource

## Patlet

When developers don't look for or can't find internally developed solutions, they may waste time and resources creating redundant software. To solve this, implement a robust internal search engine and processes that encourage the discovery and reuse of internal code.

## Problem

People don't bother looking for internally developed solutions - they might not find the repo at all or be aware of its existence.

## Context

* Software component(s) are available internally but users can't easily find these.
* This problem is more likely to occur in large, federated companies where different organizational units operate as silos.
* Historically, the company does not have a culture of sharing code across silos.

## Forces

* No good internal search engine (or not connected to git repositories; and difficult to make this change happen)
* Users may not know there are common places to find internally developed solutions.
* People don't expect to find solutions internally.
* Many silos in the company; difficult to reach the developer base across those silos (a communications problem).
* People might not want to use internal SW because they don't believe it will be helpful
    - might not be maintained
    - might have poor reusability
    - if someone put out a SW internally, the expectation is that they wouldn't have time to support it (vs. open source options)
* Difficulty in adding content to the search index makes it hard for people to find anything

## Solution

Make it easy to find the reusable code.

* Pull in Repo names, descriptions and README.md files into the search engine assuming that a search engine exists. Note: a one-stop-shop kind of search engine for all relevant communication and documentation is difficult to attain. Even when using Github's enterprise offering, people often deploy additional systems like wikis to host content orthogonal to what is in the code repositories, slack channels (or IRC), mailing lists (or even nntp servers), some place to store stuff written down in office formats, search over personal e-mail etc. Several of these systems come with search built-in, but integrating this content in one search box or even just deploying a federated search engine across all sources often doesn't come off-the-shelf.
* Consider using existing tools:
  * GitHub Enterprise and npmjs have built-in searches on meta-data
  * PayPal's Agora project (planned to be open sourced) addresses similar challenges with data source integration
* Implement process change to first check for internal solutions for this problem.
* Tool with a central view (but people are more inclined to google externally than look internally)
* Concierge service (guide) to help product people find stuff. Might not scale but could be helpful in the beginning.
* Need some very visible lighthouse projects that start using InnerSource components and make positive statements about the InnerSource program.
* Establish a common, asynchronous communication platform (e.g., chat based) across team boundaries.
  * This might not scale beyond a certain organization size.
  * When using common chat systems, start with one single chat channel for the InnerSource project, only split into multiple channels by topic once traffic gets too high. This way the channel feels alive. In addition the number of input channels to watch is kept at a minimum for the host team.
  * Note: having one channel for many users of one tool might be considered an anti-pattern because they can't find it unless they already know about it.
* Encourage (and reward) owners of reusable code to use the same search engine to continually search for products that are candidates for use and adoption of the reusable code but not currently doing so.
* Consider creating a marketplace for marketing InnerSource programs (management can use this mechanism to know which InnerSource projects to fund, but seeing how the marketplace reacts). - see [Gig Marketplace](../2-structured/gig-marketplace.md)

## Resulting Context

* Internal components are easily visible
* Developers looking for code can search for it and find it quickly.
* Developers are now looking internally for software components
* Search results are combined (internal and external)
* Process changes, establishing a common communications channel, and encouraging and rewarding owners of reusable code to use the same search engine can contribute to changing the corporate culture. Transformation begins from the grassroots but requires strategic involvement of thought leaders.
* See [Improved Findability](../1-initial/improve-findability.md) (aka Poor Naming Conventions or Badly Named Piles) as a related pattern.

## Known Instances

* Nike Inc.
* WellSky

## Status

* Structured

## Authors

* Georg Gruetter
* Erin Bank
* Padma Sudarsan
* Tim Yao

## Acknowledgements

* Russ Rutledge
* Ofer Hermoni
* Robert Hanmer

## Alias

* Not looking for stuff internally
* Don't bother looking
* Find it Inside
