## Title

Discovering Cross-Team Success Stories

## Patlet

Once an InnerSource program has scaled to hundreds of projects and many participating teams, it becomes impossible to know, just by asking around, which of those projects have real cross-team collaboration happening versus visibility alone. Programmatically compare each InnerSource repository's contributors against the org's team or business-unit directory to flag contributions from outside the owning team, then follow up on the flagged cases to confirm and understand the collaboration, turning a scale problem into a systematic way of finding genuine success stories worth telling.

## Problem

An InnerSource program's early success is often measured by adoption: how many repositories have been made InnerSource-visible, how many projects are listed in the portal. But visibility alone does not mean collaboration is actually happening. A repository can be perfectly discoverable and still receive contributions from nobody outside its own team.

At a small scale, a program team can informally track which projects have real cross-team activity simply by asking around or staying close to a handful of visible efforts. Once the program has scaled to hundreds of InnerSource repositories and many participating teams, that informal approach breaks down entirely. There are too many projects and too many teams to track by word of mouth, and asking every team individually does not scale either. Without a systematic way to find where real collaboration is happening, the program loses its best source of evidence, concrete, specific success stories, at exactly the point in its growth when it most needs them to justify continued investment and demonstrate impact to sponsors and the wider organization.

## Story

An InnerSource program at a large enterprise technology company had scaled to several hundred InnerSource repositories across many participating teams. The program team wanted to know whether real cross-team collaboration was actually happening as a result, not just repository visibility, but asking around was no longer practical at that scale.

The team wrote a script to pull contributor data from InnerSource repositories and cross-reference each contributor's identity against the org's team or business-unit mapping. Any contribution from someone outside the repository's own owning team was flagged. This produced a short, manageable list of specific, concrete instances of cross-team activity, rather than an unmanageable pile of raw contribution data or a vague sense that "some collaboration is probably happening somewhere."

The program team then reached out directly to the flagged contributors and repository owners to understand the nature of each case. Some turned out to be organic, unplanned contributions. Others were the result of two business units with genuinely overlapping needs deliberately choosing to collaborate through the InnerSource repository. Either way, these conversations produced the specific detail (who, why, what problem, what outcome) needed to turn a flagged data point into an actual success story, the same kind of story later used in sponsor readouts and shared more broadly as part of the program's evangelism efforts.

## Context

* The InnerSource program has scaled to a large number of repositories and participating teams, large enough that informally tracking collaboration by word of mouth is no longer feasible.
* Contribution activity (commits, pull requests, or equivalent) on InnerSource repositories is available in a form that can be queried or extracted programmatically.
* The organization has some existing directory or mapping of individuals to their team or business unit (an org chart, HR system, or internal directory) that can be used to determine a contributor's home team.
* The program wants to identify not just that collaboration is happening, but specific, concrete instances detailed enough to serve as evidence for sponsors and as case studies for broader promotion.
* Not all flagged cross-team activity is equally meaningful; some may be incidental (a one-off typo fix) rather than a genuine collaboration worth telling as a story.

## Forces

* **Manual awareness vs. programmatic detection:** asking teams directly is more contextual and often surfaces detail a script cannot, but it does not scale once the number of repositories and teams grows large; a script scales but only produces a signal, not the full story.
* **Signal vs. noise:** flagging any contribution from outside the owning team is simple to implement, but not every flagged case represents meaningful collaboration; some manual triage is needed to separate incidental contributions from genuine cross-team work.
* **Automation effort vs. ongoing value:** building and maintaining the script and the contributor-to-team mapping takes upfront and ongoing engineering effort, but pays off repeatedly as the program continues to scale, unlike a one-time manual survey that goes stale immediately.
* **Privacy and framing vs. usefulness:** using contributor identity data to flag individuals' activity is useful for the program, but should be framed and used carefully, as a way to find and celebrate collaboration, not as a surveillance or performance-monitoring mechanism.
* **Breadth of coverage vs. depth of understanding:** a script can scan every repository in the program, but understanding why a flagged case matters, and whether it was organic or a deliberate response to shared business needs, still requires a human conversation with the people involved.

## Sketch

```
   Hundreds of InnerSource repos, many teams
   (too many to track by asking around)
                    │
                    ▼
   ┌──────────────────────────────────────────┐
   │  Script: pull contributors per repo,       │
   │  map each contributor to their team/BU     │
   │  via org directory                          │
   └──────────────────────────────────────────┘
                    │
                    ▼
        Flag: contributor's team ≠
        repository's owning team
                    │
                    ▼
   ┌──────────────────────────────────────────┐
   │  Manual follow-up: reach out to confirm    │
   │  and understand the nature of the           │
   │  collaboration (organic vs. deliberate)     │
   └──────────────────────────────────────────┘
                    │
                    ▼
        Concrete, specific success story
        → sponsor readouts, evangelism, portal
```

## Solutions

Replace informal, ask-around discovery of cross-team collaboration with a programmatic scan of contribution data against the org's team structure, then follow up manually on what the scan surfaces.

**1. Establish a contributor-to-team mapping.** Use whatever directory the organization already maintains (an org chart, HR system, or internal people directory) to determine which team or business unit each individual contributor belongs to. This mapping is the foundation the rest of the detection depends on, and it needs to be kept reasonably current as teams reorganize.

**2. Script the comparison against each InnerSource repository's contributors.** Pull the list of contributors (via commit history, pull request authorship, or equivalent) for each InnerSource repository, and compare each contributor's mapped team against the repository's own owning team. Flag any contributor whose team does not match the repository's owning team.

**3. Treat the flagged list as a lead list, not a finished result.** The output of the script is a manageable set of specific, concrete candidates for further investigation, not a final answer about collaboration quality. Some flagged cases will be trivial (an incidental one-line fix); others will be substantial, ongoing collaboration.

**4. Follow up directly with the people involved.** Reach out to the flagged contributor and the repository's owning team to understand the nature of the activity: whether it was organic and unplanned, or a deliberate collaboration arising from two teams' overlapping needs. This conversation is what turns a data point into a story with enough specific detail (who, why, what problem, what outcome) to actually be useful.

**5. Feed confirmed stories into existing sponsor and evangelism channels.** Route the resulting case studies into the program's sponsor readouts and broader evangelism efforts (see the companion patterns on sponsor communication and sponsor-amplified evangelism) as concrete, specific evidence of the program's impact, rather than only aggregate metrics.

## Resulting Context

The program gains a systematic, repeatable way to find real, specific instances of cross-team collaboration at a scale where informal awareness alone is no longer possible.

* **The program can distinguish visibility from collaboration.** Repository counts and portal traffic show that projects are discoverable; this practice shows whether people are actually working across team boundaries because of that discoverability.
* **Case studies become concrete and specific rather than generic.** A story built from a real, confirmed instance ("Team A's request-retry library was adopted and extended by Team B, who needed the same capability for an unrelated product") is far more persuasive to sponsors and to the wider organization than a general claim that "collaboration is happening."
* **The detection method scales with the program.** Once the script and mapping exist, scanning a growing number of repositories costs comparatively little additional effort, unlike an ask-around approach that gets harder as the program grows, not easier.
* **Some flagged cases reveal previously invisible, deliberate collaboration.** Cases where two business units chose to collaborate through an InnerSource repository specifically because their needs overlapped are valuable evidence that the program is enabling collaboration the organization would not have achieved otherwise, distinct from purely organic, incidental contributions.

This solution introduces a few things to manage deliberately: the contributor-to-team mapping needs periodic upkeep as people and teams change, or the script's flags become unreliable; every flagged case still requires a human conversation to confirm and understand, so the practice does not eliminate manual effort, it focuses it on the cases most likely to be worthwhile; and using individual contribution data this way should be handled and communicated carefully, so it is understood as a way to find and celebrate collaboration rather than as monitoring individual activity.

## Rationale

The pattern works because it replaces an approach that does not scale (asking around, staying close to a handful of visible projects) with one whose cost grows much more slowly than the number of repositories and teams involved. Once a contributor-to-team mapping exists, comparing contributors against owning teams is a mechanical operation that can run across an arbitrarily large set of repositories, which is exactly the property an ask-around approach lacks.

The practice also correctly separates two different problems: finding candidates, and understanding them. The script's output is deliberately treated as a lead list rather than a finished result, because a contributor-to-team mismatch is a strong signal that something worth investigating happened, but not, by itself, evidence of a story worth telling. Reaching out to confirm and understand each flagged case is what supplies the specific detail, who was involved, why, what problem it solved, that makes a case study concrete and credible rather than a vague claim. Feeding the resulting stories directly into the sponsor readout and evangelism practices closes the loop: this pattern is what supplies those other practices with genuine, specific material to work with, rather than leaving them to rely only on aggregate metrics.

## Related Patterns

* [Sponsor Communication and Engagement](sponsor-communication-and-engagement.md): the case studies this pattern surfaces are a direct input to the sponsor readouts described in that pattern, giving sponsors concrete, specific evidence of the program's impact rather than only aggregate metrics.
* [Sponsor-Amplified Evangelism](sponsor-amplified-evangelism.md): confirmed success stories from this pattern are exactly the kind of concrete material that makes a sponsor's cue, and the broader evangelism effort, credible and specific rather than generic.
* [Introducing Metrics in InnerSource](https://github.com/InnerSourceCommons/InnerSourcePatterns/blob/main/patterns/1-initial/introducing-metrics-in-innersource.md): addresses the broader need for concrete metrics to justify and understand an InnerSource program. This pattern is a specific, applied technique for generating one particularly persuasive kind of evidence, individual, confirmed collaboration stories, rather than aggregate statistics alone.
* [Repository Activity Score](https://github.com/InnerSourceCommons/InnerSourcePatterns/blob/main/patterns/2-structured/repository-activity-score.md): provides a numeric measure of a repository's overall activity. This pattern is a complementary, more targeted technique aimed specifically at detecting cross-team activity rather than activity in general.
* [Code Consumers](https://github.com/InnerSourceCommons/InnerSourcePatterns/blob/main/patterns/1-initial/code-consumers.md): addresses the related problem of losing visibility into who consumes a team's shared code once it is opened for InnerSource reuse. This pattern applies a similar programmatic-detection approach, but to code contribution rather than consumption, and for the purpose of surfacing stories rather than managing deprecation or vulnerability communication.
* [Cross-Team Project Valuation](https://github.com/InnerSourceCommons/InnerSourcePatterns/blob/main/patterns/2-structured/crossteam-project-valuation.md): addresses articulating the value of cross-team InnerSource projects in a data-driven way. This pattern supplies one concrete source of the underlying evidence, confirmed instances of real cross-team contribution, that a data-driven valuation could draw on.
* [Praise Participants](https://github.com/InnerSourceCommons/InnerSourcePatterns/blob/main/patterns/2-structured/praise-participants.md): addresses recognizing and thanking contributors once they are identified. The follow-up conversations in this pattern are a natural moment to also apply that pattern's recognition practices with the specific contributors this pattern surfaces.

## Known Instances

A large enterprise technology company used this practice once its InnerSource program had scaled to several hundred repositories across many participating teams. The program team wrote a script that pulled contributor data from InnerSource repositories and mapped each contributor to their business unit using the organization's existing directory, flagging any contribution from someone outside the repository's owning business unit. The team followed up directly on flagged cases to confirm and understand the nature of the collaboration, distinguishing organic contributions from deliberate collaboration driven by two business units' overlapping needs. Confirmed cases became case studies used in sponsor readouts and in the program's broader efforts to promote InnerSource across the company.

## Status

Structured

## Author(s)

Shruti Bist

## Alias

Cross-Team Contribution Mining
