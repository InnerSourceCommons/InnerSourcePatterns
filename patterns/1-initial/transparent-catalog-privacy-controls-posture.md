# Title

Transparent Catalog of Privacy Controls and Posture

# Patlet

Large organizations often have no standardized, discoverable set of privacy controls that engineering teams can implement against, and no reliable visibility into which teams actually comply with existing privacy requirements, so risk stays hidden until an audit or incident surfaces it. Publish a version-controlled Privacy Controls Catalog as the shared baseline (open to engineering-proposed refinements but authored by privacy/legal), and maintain a separate, access-tiered Privacy Posture Register through the same pull-request and trusted-committer workflow, so compliance becomes a continuously queryable property of the codebase instead of a periodic audit exercise.

# Problem

In a large enterprise, privacy requirements typically live in policy PDFs, wiki pages, or the heads of a small central privacy/legal team. Two distinct but related problems follow from this:

1. **No standardized baseline.** Engineering teams have no single, authoritative, implementation-level reference for which privacy controls apply to their service, what "compliant" looks like in code, or how to implement it. Every team interprets policy language independently, producing inconsistent, duplicated, and sometimes incorrect implementations of the same underlying requirement (for example, PII redaction, retention, or consent handling).
2. **No visibility into actual posture.** Even where controls exist, the central privacy team has no reliable, current view of which services actually implement them, or in some cases, even what capabilities or data practices (such as generative AI usage) are deployed at all. Status lives in spreadsheets, stale PIA documents, or people's memory, so the true compliance picture is only reconstructed periodically, at high cost, during an audit or a customer inquiry, by which point gaps may have existed, unnoticed, for months.

These two problems compound each other: without a common, structured baseline, there is no consistent schema to report compliance against, which makes visibility even harder to establish.

# Story

A platform team at a large financial services company is asked, ahead of a regulatory audit, to confirm that all customer-facing services encrypt PII at rest and support data-subject deletion requests within the required window. The privacy team sends a spreadsheet to sixty engineering teams and asks them to self-report. Three weeks later, half the responses are missing, several are contradictory, and two teams admit they were not aware the requirement applied to them because it was only described in a policy document last updated two years earlier. The audit preparation becomes a fire drill instead of a report generated from ground truth.

Separately, three teams in the same organization each independently build their own solution for redacting PII from application logs, over the same two year period. None of them know the others exist. One team's implementation misses a common data format and leaks partial PII into a logging pipeline for months before anyone notices. When the gap is eventually found, the privacy team realizes there was never a single, authoritative reference for how to redact PII from logs at this company, only three different, unreviewed interpretations of the same underlying requirement, each with its own gaps.

A privacy manager receives a customer security and privacy questionnaire ahead of a contract renewal. One section asks not just whether the product uses generative AI, but how: what it's used for, what data it touches, and what safeguards are in place. The privacy manager knows GenAI is used somewhere in the product, but not in what capacity, for which features, or on what data. What follows is several days of chasing the product manager and engineering team for answers before the questionnaire can be answered accurately. The customer is left waiting on a response that should have taken minutes, for information that already exists somewhere in the organization, just not anywhere the privacy manager could find it. This is the same visibility gap as the audit fire drill above, just triggered by an external customer question instead of an internal audit, and made worse because the missing information is about what's deployed at all, not only whether a known control is met.

# Context

* The organization has many engineering teams building and operating services independently (a decentralized engineering model).
* A central privacy (and/or legal, compliance) function exists and is accountable for defining regulatory and policy requirements, but is small relative to the number of engineering teams.
* Source code and infrastructure configuration for these services already live in version-controlled repositories, and teams already use pull-request-based workflows for code changes.
* Privacy requirements change over time (new regulations, new data flows, new products) and cannot be treated as a one-time exercise.
* Some information about a team's privacy posture (in particular, unaddressed gaps) is itself sensitive: if broadly exposed, it can function as a map of weak points rather than just a status report.
* Unlike security, privacy typically lacks equivalent visibility tooling and cultural maturity. Security has decades of dedicated infrastructure (vulnerability scanners, SIEMs, dependency scanning, CVE feeds, security scorecards) that give organizations at least an approximate, largely automated view of exposure. Privacy has no comparable standard tooling: requirements like purpose limitation, consent validity, or retention compliance are much harder to detect automatically than a known vulnerability signature, so privacy status defaults to manual self-reporting, spreadsheets, and stale PIAs far more often than security status does.

# Forces

* **Standardization vs. team autonomy:** a single, mandatory baseline is easier to audit and enforce, but engineering teams resist controls that ignore their specific context or slow them down.
* **Visibility vs. security exposure:** the more detailed and centralized the record of "what's missing," the more useful it is to leadership and auditors, but also the more useful it is to anyone trying to find the weakest target.
* **Central authority vs. scaling expert attention:** legal interpretation of regulation must stay authoritative and centralized, but a small central team cannot review every implementation detail across every service without becoming a bottleneck.
* **Currency vs. effort:** a baseline or posture record that is accurate today becomes stale unless updating it is cheap and built into normal engineering workflow, but keeping documentation current is usually treated as separate, de-prioritized work.
* **Transparency vs. trust:** teams are more willing to record known gaps honestly if doing so doesn't feel like exposing themselves to blame or to attackers; excessive exposure discourages honest self-reporting.

# Sketch

```
 ┌─────────────────────────────┐        ┌───────────────────────────────┐
 │   Privacy Controls Catalog   │        │   Privacy Posture Register     │
 │   (broadly readable)         │        │   (access-tiered)              │
 │                               │        │                                 │
 │  PC-001 Data retention        │  used  │  service-a.md: PC-001 ✓ PC-002 ✗│
 │  PC-002 Encryption at rest    │◄──by──►│  service-b.md: PC-001 ✓ PC-002 ✓│
 │  PC-003 Consent management    │  teams │  service-c.md: PC-001 ✗ ...     │
 │  reference implementations    │        │                                 │
 └───────────────┬───────────────┘        └───────────────┬─────────────────┘
                  │  PR + review                            │  PR + review
                  ▼                                          ▼
        Trusted committers                          Trusted committers
     (privacy / legal / security)                (privacy champions + core team)
```

Both repositories are maintained through the same InnerSource mechanics (pull requests, review, versioning), but with different read-access levels: the catalog is the open standard; the register is the tiered record of who meets it.

# Solutions

Maintain two separate, InnerSource-governed repositories instead of one undifferentiated "privacy documentation" space, because standardization and visibility have different audiences and different risk profiles.

**1. Publish a Privacy Controls Catalog as the open baseline.**
Create a repository containing individually identified controls (for example, `PC-001-data-retention.md`), each with a short, stable definition, the regulatory clause it maps to, its tier (mandatory / recommended / situational), and, where possible, a reference implementation (a shared library, Terraform module, or config template that a team can literally import). This repository is broadly readable across engineering, the same as any shared internal SDK, because driving adoption depends on it being easy to find and use.

Distinguish two kinds of contribution, since they carry different risk:
- **Refining an existing control:** fixing an unclear description, flagging that the reference implementation doesn't cover a given tech stack, or improving a code example. This is open to any engineer by pull request, and it's where InnerSource-style openness adds the most value: the people who just tried to implement a control are best placed to spot where it's ambiguous or incomplete, and their input improves the control without requiring legal judgment.
- **Authoring a new control:** asserting that a new obligation exists, or that a regulation applies in a new way. This is seeded by privacy/legal, not by open proposal. Engineers can still raise the need for a new control (for example, "we don't have a control covering this new data flow"), but the control's substance originates from, or is explicitly commissioned by, privacy/legal, even though drafting and discussion can still happen transparently in the same repo.

In both cases, privacy/legal act as trusted committers with final review and merge authority, so no proposal, whether a refinement or a new control, becomes part of the baseline without their sign-off. This keeps ultimate authority over what is legally required centralized, while distributing the work of writing, refining, and maintaining implementation guidance.

**2. Maintain a separate, access-tiered Privacy Posture Register for visibility.**
Create a second repository (or a restricted-access section of the same repository) where each team records, per control ID, whether and how their service implements it, for example `service-a.md: PC-001 implemented, PC-002 gap, target Q3`. Updates happen via pull request whenever a team's data model or controls change, keeping the register current as a byproduct of normal engineering work rather than a separate reporting exercise. Restrict broad read access to this repository (or to its gap-detail fields specifically) to privacy champions, team leads, and the central privacy team, since a full list of unaddressed gaps is itself a sensitive asset. Broadly visible dashboards can still be generated from aggregated or redacted status (for example "4 of 5 required controls implemented") without exposing which specific control, or which specific data type, is at risk.

**3. Use trusted committers and champions to scale review.**
Central privacy/legal/security staff act as trusted committers on both repositories, with final merge authority. Designate privacy champions embedded in individual product teams who can review routine, low-risk pull requests locally and escalate anything ambiguous, so the central team's attention scales with the number of champions rather than the number of engineering teams.

**4. Make staleness visible by construction.**
Because both repositories are version-controlled, the age of the last update to a control's implementation guidance, or to a service's posture entry, is a plain git-log query, so no separate audit is needed to detect that a record has gone stale relative to the code it describes.

**5. Where possible, enforce controls in CI rather than relying on documentation alone.**
Pair controls that have a code-detectable signature (for example, "must use the approved PII redaction library") with a CI check that other repositories can import, so conformance is checked automatically on every pull request rather than solely self-reported in the posture register.

# Resulting Context

Engineering teams have a single, discoverable, versioned place to find out what privacy controls apply to them and how to implement them, reducing inconsistent or incorrect implementations. The privacy team can query current compliance posture directly from the register instead of running a manual survey before every audit, and staleness or drift is visible as a natural property of the repository rather than something that must be actively investigated.

Different stakeholders benefit in different, specific ways:

* **Engineering teams** get a single, discoverable, versioned reference for what's required and how to implement it, with no more guessing at policy language or duplicating redaction/consent/retention logic independently. Reporting posture becomes a byproduct of the pull requests they already make, not a separate task.
* **Privacy Operations Manager (or equivalent role)** can query current compliance posture directly from the Register at any time, instead of running a manual survey across dozens of teams before every audit. Staleness is visible by construction: a service whose posture entry hasn't been touched while its codebase has shipped many changes is a plain git-log query, not something that requires active investigation.
* **GRC / central privacy and legal function** retains authoritative control over what's legally required (control authorship, sign-off on merges) while offloading the ongoing maintenance and implementation-detail burden to trusted committers and champions, so their limited capacity scales with the number of champions rather than the number of engineering teams.
* **People responding to customer or regulatory audits** can generate an evidence trail directly from repository history (pull request review comments, merge timestamps, and version diffs) rather than reconstructing a compliance picture from emails, spreadsheets, and memory under time pressure. Aggregated, redacted posture dashboards can also be produced for external audiences without exposing granular gap detail.
* **Privacy champions embedded in product teams** get a defined, scoped role (reviewing routine local contributions, escalating ambiguous ones) rather than being informally expected to "know privacy" without any structure or authority.

This solution introduces new, smaller problems that may need their own patterns: maintaining two repositories in parallel requires discipline to keep control IDs and posture entries mapped consistently; the trusted-committer group can itself become a bottleneck if the number of proposed controls or posture updates grows faster than review capacity; and access tiering on the posture register requires ongoing administration (who counts as a "privacy champion" or "team lead") as the organization's team structure changes.

# Rationale

The pattern works by giving the two problems, lack of standardization and lack of visibility, separate solutions with separate risk profiles, rather than solving both with a single undifferentiated space. Standardization benefits from maximum openness where openness is low-risk: the wider the catalog is read and refined, the more consistent implementations become, and refinements to an existing control carry little risk because they come from engineers who have actually tried to implement it. Authorship of new controls stays centralized because that judgment, whether a new legal or regulatory obligation exists, is not something breadth of contribution improves; the catalog itself still carries little risk once merged, because it describes the *standard*, not any specific organization's current *gaps*. Visibility, by contrast, is only safe to distribute as widely as the sensitivity of the underlying data allows; a full account of "who is not compliant with what" is functionally a prioritized attack-surface map if it leaks or is over-shared. Applying InnerSource's usual mechanics (pull requests, versioning, trusted committers) to both repositories keeps the workload distributed and the record current in both cases, while applying access control asymmetrically preserves the safety of the more sensitive artifact without sacrificing the org-wide benefit of the less sensitive one.

This pattern is not simply a relabeling of general InnerSource security-sharing practices. Security-related sharing already benefits from mature, largely automated visibility tooling (scanners, SIEMs, dependency graphs), so the open-source-inside-the-firewall question for security is mostly "how open should access to already-visible information be." Privacy starts a step earlier: the information often isn't reliably visible or standardized at all, regardless of access level, because the tooling and organizational habits that make security status legible haven't been built for privacy. This pattern's two-repository structure exists specifically to close that earlier gap, creating the standardized, structured record in the first place, before the same access-tiering logic used in security contexts can even be meaningfully applied.

# Related Patterns

* [Trusted Committer](https://patterns.innersourcecommons.org/p/trusted-committer.md): this pattern is the direct governance model used for both the Controls Catalog and the Posture Register. Privacy/legal/security staff act as trusted committers with final review and merge authority, while broader engineering can propose changes.
* [Common Requirements](https://patterns.innersourcecommons.org/p/common-requirements.md): describes the general problem of many teams needing the same underlying requirement met inconsistently. The Privacy Controls Catalog is a specific application of this pattern to privacy/regulatory requirements.
* [Document your Guiding Principles](https://patterns.innersourcecommons.org/p/document-your-guiding-principles.md): the Controls Catalog is, in effect, a domain-specific instance of documenting guiding principles (in this case, privacy requirements) so that contributors across the organization share a common, explicit reference instead of relying on tribal knowledge.
* [Standard Base Documentation](https://patterns.innersourcecommons.org/p/base-documentation.md): provides the underlying convention (consistent, discoverable documentation structure across repositories) that both the Catalog and the Register rely on to remain usable at scale.
* [Explicit Governance Levels](https://patterns.innersourcecommons.org/p/governance-levels.md): relevant to the asymmetric access tiering between the openly-readable Catalog and the restricted-access Posture Register. Both repositories can be understood as operating at different, explicitly defined governance/visibility levels.
* [Transparent Cross-Team Decision Making using RFCs](https://patterns.innersourcecommons.org/p/transparent-cross-team-decision-making-using-rfcs.md): offers a complementary mechanism for proposing new or changed controls in the Catalog with visible, structured cross-team input before a trusted committer merges them.
* [Balancing Openness and Security](https://github.com/InnerSourceCommons/InnerSourcePatterns/blob/main/patterns/1-initial/balancing-openness-and-security.md): a more general pattern addressing how Security/Legal can be embedded in InnerSource collaboration through explicit sharing levels and sensitivity classification. This pattern specializes and extends that idea for privacy specifically. Unlike security, privacy typically lacks the mature, largely automated visibility tooling (scanners, SIEMs, dependency graphs) that lets security status be classified and shared at the right level in the first place. This pattern's two-repository structure exists to first create a standardized, structured record of privacy controls and posture, a step security's tooling already provides, before the same access-tiering logic can be applied.

# Known Instances

TBD

# Status

Initial

# Author(s)

Shruti Bist

# Alias

Privacy Controls Catalog and Posture Register
