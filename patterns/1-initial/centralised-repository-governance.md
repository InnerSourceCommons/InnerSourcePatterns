## Title

Centralised InnerSource Repository Governance

## Patlet

InnerSource repositories lose contributor readiness when project hygiene drifts across teams. A central governance repository defines readiness checks as policy-as-code and runs automated audits that help Trusted Committers and repository maintainers keep projects discoverable, understandable, and contribution-ready without removing local ownership.

## Problem

As InnerSource adoption grows, teams publish repositories with uneven documentation, ownership clarity, contribution guidance, communication channels, and discoverability metadata. Some projects have strong `README.md` and `CONTRIBUTING.md` files; others have no maintainer contact, no issue templates, unclear CODEOWNERS, stale labels, or no clear signal that outside contributions are welcome.

Contributors then hesitate. They cannot tell whether a repository is active, who owns it, how to ask questions, what contributions are welcome, or whether the project follows the organisation's InnerSource standards. Manual reviews by an InnerSource Program Office, platform team, or community group do not scale.

## Story

An InnerSource Program Office observed that contributors often stopped before opening a pull request. The source code was visible, but the contribution path was not. Some repositories lacked `CONTRIBUTING.md`; others had outdated contacts or no newcomer-friendly issue labels.

The program office created a governance repository with versioned InnerSource readiness policies. A scheduled audit compared participating repositories with those policies and sent Trusted Committers and repository maintainers a concise report: which checks passed, which needed attention, who owned the repository, and how to remediate gaps.

The audit did not block teams. It made readiness visible and helped maintainers improve discoverability, documentation, ownership, and contribution paths.

## Context

* InnerSource is practiced across many teams, business units, or repositories.
* Teams retain ownership of their repositories and contribution process.
* Contributors need clear signals for how to use, discuss, and contribute to projects.
* Trusted Committers and repository maintainers keep project documentation and contribution paths usable.
* An InnerSource Program Office, platform team, or community group stewards shared readiness expectations.
* An InnerSource Portal, source code inventory, or repository catalogue may already exist.
* GitHub Actions, GitHub APIs, or similar automation tooling is available.

## Forces

* **Autonomy vs consistency:** Teams need local ownership; contributors need predictable project signals.
* **Contributor confidence:** Missing documentation, stale ownership, or unclear communication channels discourage contributions.
* **Scale:** Manual InnerSource readiness reviews fail as repository count grows.
* **Signal quality:** Noisy or generic findings are ignored.
* **Quality over presence:** A repository can contain the expected files and still be hard to contribute to if they are incomplete, outdated, or ignored.
* **Valid variation:** Governance levels and maturity stages may need different readiness expectations.
* **Infrastructure strain:** Large audits can consume API rate limits, runner capacity, logs, and team attention.
* **Control-plane security:** Tampering with governance policies, exceptions, inventory, or workflows can hide readiness gaps across many repositories.

## Solution

Create a **central InnerSource governance repository** that defines contributor-readiness expectations as policy-as-code and audits repositories in scope. Treat it as an internal product with clear roles, review rules, actionable reports, and an exception process.

Example structure:

```text
innersource-governance/
  policies/
    default/
      base-documentation.yml
      contribution-process.yml
      communication.yml
      discoverability.yml
    shared-ownership/
      codeowners.yml
      maintainer-model.yml
  repository-inventory.yml
  exceptions.yml
  audit/
    audit.py
  .github/
    workflows/
      readiness-audit.yml
```

### InnerSource Policies

Store readiness expectations in `policies/`. Use a small set of profiles aligned with your InnerSource operating models, such as `default`, `contributions-welcome`, or `shared-ownership`.

Typical checks include:

* `README.md` with purpose, usage, and getting-started guidance,
* `CONTRIBUTING.md` with contribution and review expectations,
* CODEOWNERS or documented maintainer ownership,
* issue and pull request templates,
* documented communication channels,
* support or maintainer contact information,
* license or internal sharing guidance,
* repository description, topics, and discoverability metadata,
* labels such as `good first issue` or `help wanted`,
* InnerSource Portal badge or registration metadata, and
* repository settings that support trusted collaboration, such as branch protection or workflow permissions.

Avoid checkbox compliance. Where possible, evaluate freshness, required sections, useful links, and whether contribution-related information is maintained.

### Repository Inventory

Maintain the audit scope in `repository-inventory.yml`, or import it from an InnerSource Portal or source code inventory.

```yaml
repositories:
  - name: payments-api
    owner: payments-platform-team
    profile: contributions-welcome
    lifecycle: active
    portal_slug: payments-api
```

Each repository should have an owner, lifecycle state, and assigned InnerSource profile. If a portal or inventory is already authoritative for ownership, lifecycle, or discoverability metadata, consume that data instead of duplicating it. Store only governance-specific configuration in the governance repository.

### Exception Registry

Record approved deviations from the readiness baseline in `exceptions.yml`. Each exception needs an owner, reason, and expiry or review date.

```yaml
exceptions:
  - repository: payments-api
    policy: issue_templates_required
    reason: Team is migrating from an external tracker this quarter.
    owner: payments-platform-team
    expires: 2026-12-31
```

Exceptions keep governance practical, but they must remain visible in reports. Avoid broad or non-expiring exceptions because they hide contributor-experience problems.

### Readiness Audit

Audit each repository against its assigned InnerSource policy profile. Findings should include repository, owner, policy, severity, expected state, actual state, exception status, and suggested remediation.

Prioritise checks that affect contributor success:

* missing or incomplete base documentation,
* missing contribution process,
* unclear ownership or maintainer contact,
* undocumented communication channel,
* missing issue or pull request templates,
* stale portal metadata or missing discoverability tags,
* missing newcomer-friendly labels, and
* repository settings that make contribution review unsafe or unclear.

Design the audit to be incremental and rate-aware. Store the last known state and re-check changed repositories where possible. Use `ETag` / `If-None-Match`, cache expensive checks such as repository metadata, branch names, workflow files, and CODEOWNERS, and use GraphQL batching carefully for bulk metadata. Stagger scans by importance: active InnerSource projects nightly, candidate projects every few days, and archived or sandbox repositories weekly or monthly.

### Reporting and Remediation

Run the audit on a schedule and publish a digest report.

```yaml
on:
  schedule:
    - cron: "0 2 * * *"
```

Start with visibility-only reporting. Reports should help Trusted Committers, repository maintainers, and contributors improve contributor experience; they should not rank or shame teams. Leadership views should aggregate trends without ranking individual teams.

For each finding, include remediation guidance or links to templates. If remediation is automated later, use reviewable pull requests for straightforward fixes, such as adding a missing template file.

Track:

* percentage of repositories covered,
* percentage passing readiness checks,
* open findings by severity,
* mean time to remediate contributor-blocking gaps,
* active and expired exceptions,
* false positives and repeated findings,
* audit runtime, API usage, and runner minutes.

### Govern the Governance Repository

The governance repository should itself follow strong InnerSource practices. Policy changes happen through pull requests with visible discussion and review by the InnerSource Program Office, platform team, security partners, and affected Trusted Committers or repository maintainers.

Roles:

* **Contributors** use readiness signals to decide whether and how to contribute.
* **Trusted Committers and repository maintainers** keep project guidance current and act on findings.
* **InnerSource Program Office or community stewards** maintain readiness policies, templates, and reporting practices.
* **Platform and security partners** support automation, credentials, repository settings, and control-plane protection.
* **Product Owners or business sponsors** help prioritise remediation when contributor-readiness work competes with feature delivery.

Trusted Committers and repository maintainers should be able to propose policy changes, improve templates, and challenge low-value checks.

Protect the governance repository more strictly than ordinary project repositories. Require branch protection, mandatory reviews, CODEOWNERS approval for `policies/`, `exceptions.yml`, inventory, audit code, and workflows, and signed or verified changes for sensitive files.

Use least-privilege credentials. Separate read-only audit credentials from remediation credentials. Log and alert on changes to policies, exceptions, inventory, workflows, and credentials. Periodically audit the governance repository through an independent check.

## Resulting Context

* Contributors can quickly assess whether a repository is ready for InnerSource participation.
* Trusted Committers and repository maintainers receive actionable guidance for documentation, ownership, communication, and discoverability.
* InnerSource expectations are transparent, version-controlled, and open to contribution.
* Exceptions are explicit, time-bound, and visible.
* InnerSource Portal and inventory data become more reliable.
* Incremental, staggered scans control audit cost and infrastructure load.
* Leadership sees InnerSource health trends without micromanaging Trusted Committers or repository maintainers.

## Use This Pattern When

* You have many InnerSource repositories owned by different teams.
* Contributors struggle to identify how to use or contribute to projects.
* InnerSource Portal quality depends on repository metadata and project hygiene.
* Manual readiness checks are too slow or incomplete.
* You want transparent policy-as-code instead of undocumented central checks.
* Poor contributor experience costs more than maintaining the governance process.

## Don’t Use This Pattern When

* Only a few InnerSource repositories exist and manual support is enough.
* You need hard enforcement at merge time rather than periodic guidance.
* You cannot maintain repository ownership or lifecycle metadata.
* You cannot protect the governance repository and its credentials.
* Most projects require unique contribution models that do not fit a small set of profiles.

## Known Instances

TBD

## Status

* Initial

## Authors

* [Amburi Roy](https://www.linkedin.com/in/amburi/)

## Related Patterns

* [Standard Base Documentation](../2-structured/base-documentation.md) — defines contributor-facing files that readiness checks can evaluate.
* [Assisted Compliance](assisted_compliance.md) — helps Trusted Committers and repository maintainers add missing contribution guidance.
* [Communication Tooling](../2-structured/communication-tooling.md) — describes communication channels that readiness checks can require.
* [Issue Tracker Use Cases](../2-structured/issue-tracker.md) — supports checks for issue templates and transparent planning.
* [Unified Source Code Inventory](source-code-inventory.md) — can provide audit scope and repository metadata.
* [Explicit Governance Levels](../2-structured/governance-levels.md) — can provide profiles for InnerSource operating models.
* [InnerSource Portal - Hygiene](innersource-portal-hygiene.md) — overlaps with checks for portal badges, metadata, and active projects.
* [Include Product Owners](include-product-owners.md) — helps with stewardship of the governance repository.
* [Trusted Committer](../2-structured/trusted-committer.md) — supports safe and consistent policy changes.
* [InnerSource Portal](../2-structured/innersource-portal.md) — complements central access to shared organisational knowledge.
