## Title

Sponsor-Amplified Evangelism

## Patlet

An InnerSource program cannot reach broad, organization-wide awareness through its own team's channels alone. Direct outreach (roadshows, tech talks, a portal) only reaches the people already paying attention. Equip the program's sponsors with a simple, ready-to-share link and a natural cue for when to mention it, and align the program's message to organizational goals already on their agenda, so sponsors amplify the program into meetings and audiences the program team could never reach directly, turning each sponsor into a distribution channel rather than only a funding source.

## Problem

An InnerSource program's own team can run roadshows, give tech talks, and maintain a portal, but these channels only reach people who already attend those sessions or already know to look. In a large, decentralized organization, most engineering teams and their leadership never cross paths with the program's direct outreach at all.

Sponsors, by contrast, already have standing access to audiences the program team does not: their own monthly staff meetings, their business unit's all-hands, and executive readouts. But sponsors will not spontaneously know when or how to mention the program in their own meetings, and asking them to improvise a pitch on the spot is a poor use of their limited attention and carries the risk of an inconsistent or inaccurate message. Left unaddressed, sponsors' organizational reach goes largely untapped, and the program's visibility stays capped at whatever its own direct channels can achieve.

## Story

An InnerSource program at a large enterprise technology company ran its own direct outreach, roadshows and tech talks, but noticed these only ever reached people already somewhat aware of the program. During the program's quarterly sponsor readouts (see the companion pattern on sponsor communication), the program manager began explicitly planning, with each sponsor, where and how they could mention InnerSource in their own upcoming meetings: a monthly staff meeting, a business-unit all-hands, or an executive readout. Rather than leaving this to chance, the program manager gave sponsors a specific cue, tied to an organizational goal already on the sponsor's own agenda, and a single simple link: the InnerSource portal, which doubled as both a repository of active projects and a "how to get started" landing page.

Depending on the sponsor's preference, the program team either attended the meeting and dropped the link directly into the chat at the right moment, or the sponsor mentioned it themselves and shared the link on the program's behalf. Portal traffic was tracked and consistently showed a clear spike immediately following any of these meetings, direct evidence that sponsor-amplified mentions reached people the program's own channels had not.

## Context

* An InnerSource program has direct outreach channels of its own (roadshows, tech talks, an internal portal) but these reach only a limited, self-selecting audience.
* The program has an identified group of sponsors (see Sponsor Communication and Engagement) who hold standing, recurring access to audiences of their own: staff meetings, business-unit all-hands, executive readouts.
* Sponsors are generally supportive of the program but are not going to independently identify the best moment or framing to mention it in their own meetings without help.
* The organization has broader strategic goals or priorities that sponsors are already accountable for communicating in their own meetings, giving a natural hook for connecting InnerSource to something already on the agenda.
* The program has a single, simple, shareable resource (such as a portal link) that works both as a landing page for the curious and a directory for people ready to act.

## Forces

* **Program reach vs. sponsor bandwidth:** the program wants maximum organizational visibility, but sponsors have limited time and will not adopt a heavy or complicated ask.
* **Consistency of message vs. sponsor autonomy:** a scripted, precise message is easier to control and less likely to be garbled in retelling, but sponsors are more credible and natural when they can put the message in their own words tied to their own goals.
* **Direct program presence vs. sponsor-delivered message:** having the program team personally present or drop the link in chat guarantees accuracy, but relying only on that limits scale to however many meetings the program team can physically attend; a sponsor delivering the message themselves scales further but trades some control for reach.
* **Simplicity vs. completeness:** a single, simple link is far more likely to be shared and clicked than a longer explanation or multiple resources, but a single link must be good enough to serve very different audiences (the curious newcomer and the ready-to-contribute engineer) at once.
* **Opportunistic timing vs. planning overhead:** waiting for sponsors to organically find the right moment rarely happens, but planning specific cues for specific upcoming meetings takes deliberate, recurring coordination effort from the program team.

## Sketch

```
   Program's own channels          Sponsor's own channels
   (roadshows, tech talks,         (staff meetings, BU all-hands,
    portal outreach)                executive readouts)
        │                                  │
        │  reaches only people             │  reaches audiences the
        │  already paying attention        │  program team can't access
        ▼                                  ▼
   ┌─────────────────────────────────────────────────┐
   │  At sponsor readout: identify upcoming meeting,   │
   │  agree on cue (tied to org goal) + portal link    │
   └─────────────────────────────────────────────────┘
                          │
              ┌───────────┴───────────┐
              ▼                       ▼
     Program team attends      Sponsor delivers
     and drops link in chat    message themselves
              │                       │
              └───────────┬───────────┘
                           ▼
              Portal traffic spike
              (feedback signal)
```

## Solutions

Turn each sponsor's existing meetings into a distribution channel for the program, by planning specific, low-effort asks in advance rather than hoping sponsors improvise on their own.

**1. Use the sponsor readout as the planning venue.** During the program's recurring sponsor readouts, explicitly ask each sponsor what meetings they have coming up (their own staff meeting, a BU all-hands, an executive readout) where InnerSource could naturally fit. This turns a general ask for "evangelism" into a specific, scheduled opportunity rather than an open-ended favor.

**2. Tie the message to an organizational goal already on the sponsor's agenda.** Rather than asking a sponsor to introduce InnerSource as a standalone topic, connect it to whatever strategic priority or goal the sponsor is already planning to discuss. A message that reinforces something the audience already expects to hear about is far more likely to land and far easier for the sponsor to deliver naturally.

**3. Give sponsors one simple, dual-purpose link.** Provide a single resource, such as an InnerSource portal link, that serves both as a landing page explaining how to get started and a directory of active projects to browse. A single link is easy for a sponsor to remember, say out loud, or paste into chat; multiple links or a longer explanation are not.

**4. Offer two delivery modes and let the sponsor choose.** Some sponsors are comfortable delivering the message themselves and sharing the link on the program's behalf; others prefer the program team to attend the meeting directly and post the link into the chat at the right moment. Supporting both keeps the ask low-effort for sponsors while preserving accuracy when they want the extra support.

**5. Track the resulting portal traffic.** Monitor portal visits around the date and time of each sponsor-amplified mention. A visible spike immediately following the meeting is both feedback that the channel is working and concrete evidence to bring back to sponsors and the program's own leadership about the value of their advocacy.

## Resulting Context

The InnerSource program gains visibility in audiences its own direct channels could never reach, without requiring sponsors to invest significant time or improvise a message on the spot.

* **The program's reach compounds through its sponsors' organizational position.** Each sponsor's regular meetings become an extension of the program's own outreach, multiplying the program's effective audience without multiplying the program team's own workload.
* **Sponsors get a low-effort, high-credibility way to actively support the program.** Rather than a vague request to "spread the word," sponsors receive a specific cue and a single link, which is easy to act on and reinforces the value of the readout relationship described in the companion sponsor communication pattern.
* **Portal traffic becomes a feedback loop, not just a vanity metric.** Correlating visible spikes with specific sponsor-amplified moments gives the program team clear evidence of what is working, and clear evidence to bring back to sponsors themselves and the program's own leadership.
* **The message stays connected to what the organization already cares about.** Anchoring the ask to a sponsor's existing goals, rather than treating InnerSource as an unrelated add-on topic, keeps the program's visibility tied to organizational priorities instead of feeling like a separate campaign competing for attention.

This solution introduces a few things to manage deliberately: identifying the right upcoming meeting and cue for each sponsor takes real, recurring coordination effort from the program team, on top of running the readout itself; a single portal link only works if the portal itself is genuinely useful and current, a stale or confusing landing page will undercut every mention driving traffic to it; and over-relying on this channel without also investing in the program's own direct outreach risks making visibility entirely dependent on sponsor turnover and availability.

## Rationale

The pattern works because it treats sponsors as a distribution channel, not only a funding and governance relationship. Sponsors already have standing, credible access to audiences the program team structurally cannot reach on its own, staff meetings, BU all-hands, executive readouts, but that access goes untapped unless someone identifies the specific, low-effort moment to use it. Planning the cue during the sponsor readout, rather than hoping sponsors find the moment themselves, converts a vague aspiration ("get the word out") into a concrete, scheduled action, which is far more likely to actually happen.

Tying the message to a goal already on the sponsor's agenda and reducing the ask to a single, simple link both serve the same underlying purpose: minimizing the friction between a sponsor's willingness to help and their actual capacity to do so. A sponsor who has to construct an unrelated pitch, or remember multiple resources, is less likely to follow through than one being asked to mention one link in service of something they were already going to talk about. Tracking portal traffic closes the loop, turning what could be an act of faith (sponsors are helping, we assume) into something the program can measure and use to reinforce the sponsor relationship itself, showing sponsors concretely that their advocacy worked is, in turn, more likely to make them willing to do it again.

## Related Patterns

* Sponsor Communication and Engagement (proposed in [PR #931](https://github.com/InnerSourceCommons/InnerSourcePatterns/pull/931), pending review): the sponsor readout described in that pattern is the planning venue this pattern relies on to identify specific evangelism opportunities with each sponsor; this pattern is a direct, tested extension of that relationship into program-wide visibility.
* [InnerSource Portal](https://patterns.innersourcecommons.org/p/innersource-portal): provides the underlying discovery tool that this pattern's single shareable link points to. The Portal pattern addresses building the resource itself; this pattern addresses actively distributing awareness of it through sponsors, beyond what a portal launch's own communications campaign would reach.
* [InnerSource Portal - Hygiene](https://github.com/InnerSourceCommons/InnerSourcePatterns/blob/main/patterns/1-initial/innersource-portal-hygiene.md): keeping the portal's project listings current and credible matters directly to this pattern, since sponsor-driven traffic spikes are only valuable if the destination page holds up to scrutiny.
* [Crossing the InnerSource Chasm](https://github.com/InnerSourceCommons/InnerSourcePatterns/blob/main/patterns/1-initial/crossing-chasm.md): addresses the broader strategic challenge of adoption slowing once early adopters are exhausted. Sponsor-amplified evangelism is one concrete tactic for reaching the wider, less self-selecting audience that pattern describes needing different outreach methods for.
* [InnerSource as a Career Booster](https://github.com/InnerSourceCommons/InnerSourcePatterns/blob/main/patterns/1-initial/innersource-as-career-booster.md): a message a sponsor could plausibly deliver as part of their own meeting cue, connecting individual career benefit to the organizational goal already being discussed.
* [Introducing Metrics in InnerSource](https://github.com/InnerSourceCommons/InnerSourcePatterns/blob/main/patterns/1-initial/introducing-metrics-in-innersource.md): the portal-traffic tracking in this pattern is a specific, applied instance of the broader practice of using metrics to demonstrate and justify InnerSource program value.

## Known Instances

A large enterprise technology company used this practice as part of its CTO-funded InnerSource program. During quarterly sponsor readouts, the program manager worked with each sponsor to identify an upcoming meeting (a monthly staff meeting, a business-unit all-hands, or an executive readout) and a specific cue tied to an organizational goal already on that meeting's agenda. Depending on the sponsor's preference, the program team either attended the meeting and posted the InnerSource portal link into the chat, or the sponsor delivered the message and shared the link themselves. The program consistently observed a measurable spike in portal traffic immediately following these sponsor-amplified mentions, confirming the channel reached audiences the program's own direct outreach (roadshows and tech talks) had not.

## Status

Structured

## Author(s)

Shruti Bist

## Alias

Sponsor-Driven Program Visibility
