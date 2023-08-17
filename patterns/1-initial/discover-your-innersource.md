## Title

Discover Your InnerSource

## Patlet

TBD

## Also Known As

* Not looking for stuff internally
* Don't bother looking
* Find it Inside

## Context

* Software component(s) are available internally but users can't easily find these.
* This problem is more likely to occur in large, federated companies where different organizational units operate as silos.
* Historically, the company does not have a culture of sharing code across silos.

## Discussion on

* Comments may appear in the timeline but not with the file once it is edited (github)?
* https://github.com/InnerSourceCommons/InnerSourcePatterns/pull/60
* If only X knew what X knew; the internal search engine is bad. No one can find anything because it is difficult to add things  to the search index.
* We have similar challenges getting data sources pulled into the search engine. PayPal is building a project called Agora to do this and they are planning to open source it.
* Github Enterprise and npmjs have built-in searches on meta-data. Enterprise that opts into these tooling will get some of that functi
* Software component(s) are available internally but users can't easily find these.
* This problem is more likely to occur where there are silos in the company (e.g., larger companies; smaller companies may have fewer opportunities for reuse of internally developed software).
* The company traditionally has been bad at sharing across silos (people don't have the culture of sharing).

## Problem

People don't bother looking for internally developed solutions - they might not find the repo at all or be aware of its existence.

## Forces

* No good internal search engine (or not connected to git repositories; and difficult to make this change happen)
* Users may not know there are common places to find internally developed solutions.
* People don't expect to find solutions internally.
* Many silos in the company; difficult to reach the developer base across those silos (a communications problem).
* People might not want to use internal SW because they don't believe it will be helpful
    - might not be maintained
    - might have poor reusability
    - if someone put out a SW internally, the expectation is that they wouldn't have time to support it (vs. open source options)

## Solution

Make it easy to find the reusable code.

* Pull in Repo names, descriptions and README.md files into the search engine assuming that a search engine exists. Note: a one-stop-shop kind of search engine for all relevant communication and documentation is difficult to attain. Even when using Github's enterprise offering, people often deploy additional systems like wikis to host content orthogonal to what is in the code repositories, slack channels (or IRC), mailing lists (or even nntp servers), some place to store stuff written down in office formats, search over personal e-mail etc. Several of these systems come with search built-in, but integrating this content in one search box or even just deploying a federated search engine across all sources often doesn't come off-the-shelf.
* Implement process change to first check for internal solutions for this problem.
* Tool with a central view (but people are more inclined to google externally than look internally)
* Concierge service (guide) to help product people find stuff. Might not scale but could be helpful in the beginning.
* Need some very visible lighthouse projects that start using inner source components and make positive statements about the inner source program.
* Establish a common, asynchronous communication channel (e.g., like slack or metamorph or yammer) across team boundaries. This might not scale beyond a certain organization size. It is possible people will start splitting this one channel into multiple channels by topic once traffic gets too high. Note: having one channel for many users of one tool might be considered an anti-pattern because they can't find it unless they already know about it.
* Encourage (and reward) owners of reusable code to use the same search engine to continually search for products that are candidates for use and adoption of the reusable code but not currently doing so.
* Consider creating a marketplace for marketing InnerSource programs (management can use this mechanism to know which InnerSource projects to fund, but seeing how the marketplace reacts).

## Known Instances

TBD

## Resulting Context

* Internal components are easily visible
* Developers looking for code can search for it and find it quickly.
* Developers are now looking internally for software components
* Search results are combined (internal and external)
* Process changes, establishing a common communications channel, and encouraging and rewarding owners of reusable code to use the same search engine can contribute to changing the corporate culture. Transformation begins from the grassroots but requires strategic involvement of thought leaders.
* See [Improved Findability](improve-findability.md) (aka Poor Naming Conventions or Badly Named Piles) as a related pattern.

## Status

* Initial (brainstormed solution)

## Authors

* Georg Gruetter
* Erin Bank
* Padma Sudarsan
* Tim Yao

## Acknowledgements

* Contributions from Russ Rutledge, Ofer Hermoni and Robert Hanmer
