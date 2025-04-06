## Title

Walk the InnerSource talk

## Patlet

Teams across the organization are encouraged to adopt InnerSource principles such as working openly, sharing code, and
collaborating transparently. But, if the team behind the InnerSource initiative doesn’t follow these practices
themselves, it undermines credibility and adoption. Therefore, this team should lead by example: documenting their
decisions as code, working in the open, and treating their work as an InnerSource project to build trust and show others
how it’s done.

## Problem

The team behind the InnerSource initiative promotes transparency, collaboration, and best practices across the
organization. However, if the team itself does not adhere to these principles, others may perceive InnerSource as mere
rhetoric rather than a transformative practice. Without leading by example, adoption and trust in InnerSource
initiatives may suffer.

## Story (optional)

At Siemens, when the InnerSource journey began, many of the early contributors were deeply inspired by the Open Source
culture, several were also active participants in community projects. For them, setting up an InnerSource platform
wasn’t a stretch; it was a natural continuation of how they already worked: asynchronously across locations, sharing
ideas through issues, and documenting decisions transparently.

This Open Source-inspired mindset gave the InnerSource platform a distinctly different character - transparent,
collaborative, and developer-friendly - compared to the closed, proprietary environments many developers were used to.
Unsurprisingly, it quickly attracted experts and engineers seeking more open, cross-team collaboration and meaningful
technical exchange.

## Context

In many large organizations, IT services rely on what we might call a “TicketOps” model: users submit requests into a
system, but the people and decisions behind the process remain invisible. This lack of transparency often breeds
frustration and mistrust, making true collaboration across departments difficult.

In contrast, developer-centric initiatives like InnerSource thrive on openness and shared ownership. Instead of hiding
behind tickets, teams work in open repositories, discuss decisions transparently, and empower others to contribute. This
shift fosters trust, reduces the frustration of not knowing what happens behind the scenes, accelerates problem-solving,
and turns support into collaboration.

## Forces

### What makes the problem difficult?

- In large, traditionally structured organizations, teams - especially platform, architecture, or governance groups -
are often used to working behind closed doors. Decision-making happens in meetings, documentation is internal or
scattered, and ownership is unclear. Shifting to transparent, open collaboration requires both cultural change and a
reevaluation of existing workflows.
- Working in the open can feel scary - when everything is public, people might hold back from contributing because they worry their work isn't perfect enough. This fear of not being "good enough" can stop many valuable ideas from being shared.
- People in central roles may fear scrutiny, overload from unsolicited input, or loss of control. Additionally, moving
towards open collaboration demands more discipline in documentation, async communication, and community management -
skills not always prioritized in internal tooling teams.

### What are the trade-offs?

- **Transparency vs. Control**: Sharing decisions and code openly fosters trust, invites valuable feedback, and
  increases acceptance, especially when people feel included in the process. However, it also requires a mindset shift:
  embracing open discussion, being comfortable with disagreement, and being willing to justify decisions in public and
  potentially critical forums.

- **Speed vs. Quality**: working transparently can slow things down in the short term compared to quick, closed
  decision-making. However, this slower pace often leads to higher-quality outcomes: better-informed decisions, fewer
  misunderstandings, and solutions that are easier to maintain.

- **Effort vs. Reuse**: documenting decisions, maintaining contribution guidelines, and curating issues takes time. But
this investment leads to higher reusability, easier onboarding, and better scaling of knowledge.

- **Risk vs. Trust**: opening up work may expose mistakes or half-finished ideas. But by showing authentic work in
progress, teams build credibility and foster trust across organizational boundaries.

The solution - working in the open, documenting decisions transparently, and following InnerSource best practices
internally - addresses these forces by modeling the desired behavior. It increases alignment with developer
expectations, improves trust in the initiative, and helps shift the broader organizational culture over time.

## Solutions

✅ Verified Resolutions

These have been successfully applied in real-world InnerSource initiatives (including at Siemens) and are known to help
solve the problem:

1. Use version-controlled repositories for all InnerSource-related assets (policies, guidelines, tooling code,
documentation), accessible to all relevant developers.
1. Make decisions in the open by using issue trackers and discussions rather than closed-door meetings or emails.
1. Apply contribution workflows to internal platforms and tools exactly as recommended for InnerSource projects: open
pull requests, reviews, contribution guidelines, etc.
1. Document frequently asked questions (FAQs), design rationales, and change histories transparently, as part of the
repositories.
1. Encourage asynchronous collaboration, especially across locations and time zones, to foster inclusiveness and reduce
dependency on synchronous coordination.
1. Guide new contributors with patience and understanding, creating a welcoming environment where mistakes are seen as learning opportunities. Provide constructive feedback in a respectful and supportive manner, remembering that everyone was once a beginner.

💡 Possible Resolutions

These could be explored to address the problem further, depending on organizational context and maturity:

1. Create InnerSource “meta-projects” that transparently host governance decisions, tooling roadmaps, and shared
architecture discussions - open to comment and contribution from the developer community.
1. Embed technical community leads or advocates into platform/tooling teams to help translate feedback and improve
transparency across organizational layers.
1. Use lightweight tooling (e.g. chat bots, dashboards) to surface changes, decisions, and contributions happening
within InnerSource-supporting teams, making their work more visible and discoverable.
1. Promote a “working out loud” culture through internal blogs, changelogs, or recorded demos where teams share updates
and learnings openly - even outside of the InnerSource platform.
1. Set up health checks or self-assessments for InnerSource-supporting teams to reflect on how well they themselves are
practicing the principles they advocate.

## Resulting Context

When the team behind the InnerSource initiative consistently applies the same principles they promote - working
transparently, documenting decisions, and enabling contributions - credibility increases across the organization.
Developers begin to see the InnerSource approach as authentic and achievable, not just aspirational.

This fosters greater trust, encourages broader adoption, and creates a feedback loop where teams start to mirror these
practices in their own projects. The organization gradually shifts toward a more open, collaborative engineering
culture.

However, this transparency can also surface new challenges, such as increased demand for contributions, the need for
community moderation, or pressure on core maintainers. These may lead to follow-up patterns like "Growing a Trusted
Committer Base" or "InnerSource Project Lifecycle Management" to ensure sustainability.

## Known Instances

- At Siemens, the experts behind the InnerSource initiative applied the same principles they advocated, developing key
assets such as documentation portals and contribution tooling transparently in shared repositories. Discussions about
governance, onboarding, and platform features were handled openly using issue trackers and pull requests. This visible
commitment to openness not only boosted trust among developers but also encouraged other teams to adopt similar
practices, accelerating InnerSource adoption organically across departments.

## Status (optional until merging)

> General pattern status is stored in GitHub's Label tagging - see any pull request. Note that this GitHub label tagging
  becomes less visible once the pattern is finalized and merged, so having some information in this field is helpful.
  You might store other related info here, such as review history: "Three of us reviewed this on 2/5/17 and it needs
  John's expertise before it can go further."

## Author(s)

- Florian Greinacher (Siemens AG)
- Marion Deveaud (Siemens AG)
- Nejc Habjan (Siemens AG)
- Roger Meier (Siemens AG)

## Acknowledgments

- Antoine Auger (Siemens AG)
- Diego Louzan
- Ercan Uçan (Siemens AG)
- Fabio Huser (Siemens AG)
- Max Wittig (Siemens AG)
