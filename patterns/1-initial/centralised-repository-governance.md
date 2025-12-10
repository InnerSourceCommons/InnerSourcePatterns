## Title

Centralised Repository Governance

## Patlet

It's easy for repository settings to drift when many teams manage their own projects. A central governance repository, backed by automated nightly audits, helps keep everything aligned with the organisation's engineering standards while allowing teams to work freely.


## Problem

As organisations grow, each team naturally sets up repositories in their own way. Over time, these settings begin to diverge:

* branch protection disappears or becomes inconsistent,
* workflow permissions expand beyond what's allowed,
* CODEOWNERS files go missing,
* admin bypass quietly slips in,
* and new repositories start life without any safeguards at all.

No one notices immediately, and no one does it on purpose. It just... happens.
Manual audits are slow and rarely complete. Before long, the organisation has dozens of small risks scattered everywhere, hidden in plain sight.

## Story

A platform team in a large engineering organisation realised something worrying: every few weeks, a production incident or security concern could be traced back to a simple repository misconfiguration. Nothing dramatic—just things like a missing review requirement or an overly generous GitHub Actions permission.

People weren't careless; they were busy. They moved fast, created new repos, copied old workflows, and tweaked settings when needed. Over time, these changes compounded into a patchwork of configurations.

Instead of telling every team to "be more careful", the platform team built a small governance repository. It held a clear, versioned baseline of expected repo settings, and each night a GitHub Action scanned every repository, comparing it with the baseline.

The next morning, teams received a calm, simple report:
* Here's what changed. 
* Here's where drift happened. 
* Here's how to fix it.

Within a month, the number of incidents dropped, standards became consistent, and onboarding new repos felt effortless.
The best part? No one's workflow was interrupted. The whole system quietly supported good engineering hygiene in the background.

## Context

* Many repositories exist across multiple teams.
* Teams have the freedom to configure their own repos.
* Engineering or security leadership expects a shared baseline.
* Visibility across all repos is limited.
* GitHub Actions or similar tooling is available for automation.

## Forces

* **Autonomy vs alignment:** Teams need freedom to build, but consistent safeguards matter.
* **Scale:** Manual reviews fail once repository numbers grow.
* **Transparency:** Policies should be easy to understand and open to contribution.
* **Low friction:** Governance should guide, not block.
* **Early warning:** Small mistakes should surface before they turn into costly incidents.

## Solutions

Create a **central governance repository** that stores baseline policies as code and runs a scheduled audit—usually nightly—to compare real repository configurations against the baseline.

The repository contains three essential parts.

### 1. Policy-as-Code

Store baseline expectations under a `policies/` directory.
This might include:

```
policies/
  branch_protection.yml
  workflow_permissions.yml
  codeowners.yml
  commit_signing.yml
  tag_protection.yml
```

**Example baseline (branch_protection.yml):**

```yaml
required_pull_request_reviews:
  required_approving_review_count: 1
require_signed_commits: true
enforce_admins: true
```

These files become the shared, reviewable definition of "how we configure repositories here".

### 2. Audit Engine

An audit script (Python, Node, or Go) uses the GitHub API to inspect every repository and compare its configuration to the baseline.

**Example behaviour:**

* Check branch and tag protection
* Validate CODEOWNERS
* Examine workflow permissions (including nested job/step scopes)
* Detect risky triggers (`pull_request_target`)
* Identify admin bypass or unapproved overrides

**Simplified Python example:**

```python
if "pull_request_target" in workflow_yaml.get("on", {}):
    findings.append(f"{repo.name}: Uses pull_request_target")
```

When differences appear, the engine records them as drift.

### 3. Nightly Audit Workflow

A GitHub Actions workflow runs the audit automatically.

```yaml
on:
  schedule:
    - cron: "0 2 * * *"
```

It collects findings, creates a summary report, and optionally:

* posts to Slack,
* opens GitHub Issues on non-compliant repositories, or
* creates PRs to apply straightforward fixes.

**Key principles:**

* Read-only access
* No blocking behaviour
* Clear, actionable reporting

## Resulting Context

* Repository settings become more consistent and predictable.
* Drift is found early rather than after an incident.
* Teams stay autonomous while receiving helpful guidance.
* Policies remain transparent and open to discussion.
* New repositories inherit standards from day one.
* Leadership gains confidence in organisational hygiene without micromanagement.

## Use This Pattern When

* You have many repositories owned by different teams.
* You want reliable, repeatable engineering safeguards.
* You prefer guidance rather than strict enforcement.
* You want policies to be version-controlled and adaptable.
* You want to reduce manual audit work and platform overhead.

## Do Not Use This Pattern When

* Only a few repositories exist and manual checks are enough.
* You need hard, immediate enforcement at merge time.
* Baseline policies change too frequently to maintain.
* A GitHub App or read-access token cannot be used.
* Most teams require unique repo configurations that don't fit a shared baseline.

## Known Instances

* Large technology organisations using GitHub Enterprise.
* Platform teams responsible for organisational governance and lifecycle tooling.
* Engineering groups moving towards policy-as-code and automation.

## Status

* Initial

## Author(s)

[Amburi Roy](https://www.linkedin.com/in/amburi/)

## Related Patterns

* **Automated Testing** — shared automated checks for quality.
* **InnerSource Product Owner** — helps with stewardship of the governance repo.
* **Trusted Committers** — supports safe and consistent policy changes.
* **InnerSource Portal** — complements central access to shared organisational knowledge.
