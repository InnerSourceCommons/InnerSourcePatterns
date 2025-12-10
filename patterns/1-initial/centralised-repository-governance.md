# **Centralised Repository Governance**

## **Patlet**

Large organisations often struggle to keep repository settings aligned across many teams. Over time, policies such as branch protection, workflow permissions, and commit signing drift away from the intended standard. A central governance repository that runs automated audits can detect this drift early and give teams clear feedback without interrupting their work.

## **Problem**

When many teams manage their own repositories, settings naturally become inconsistent. Typical issues include:

* missing or weakened branch protection,
* overly broad workflow permissions,
* missing or outdated CODEOWNERS files,
* admin bypass enabled unintentionally,
* use of risky workflow triggers,
* or new repositories lacking required protections altogether.

Manual checking does not scale. Teams focus on delivery, not on remembering organisation-wide rules. As a result, gaps grow slowly and silently, increasing both security exposure and operational risk.

## **Context**

* The organisation hosts many repositories on GitHub.
* Teams have autonomy to create and configure their own repos.
* Leadership expects predictable engineering safeguards.
* There is no simple way to see where configuration drift has occurred.
* Automation is accepted and available through GitHub Actions.

## **Forces**

* **Autonomy vs consistency** — teams should move fast, but common safeguards matter.
* **Scale** — manual audits fail once repo count grows.
* **Transparency** — policies should be visible and reviewable.
* **Low friction** — governance should not slow everyday work.
* **Early detection** — drift needs to be surfaced before it becomes risky.

## **Solution**

Create a dedicated “Governance Repository” that stores the organisation’s baseline policies as code and contains an audit engine that checks all repositories on a set schedule, such as nightly. The audit compares each repository’s real configuration to the baseline and reports any drift.

The governance repository includes three main components:

### **1. Policy-as-Code**

Store expected settings in version-controlled files under `policies/`.

**Example structure:**

```
policies/
  branch_protection.yml
  workflow_permissions.yml
  codeowners.yml
  commit_signing.yml
  tag_protection.yml
```

**Example baseline rule:**

```yaml
required_pull_request_reviews:
  required_approving_review_count: 1
enforce_admins: true
require_signed_commits: true
dismiss_stale_reviews: true
```

These files form a clear, shared baseline for all teams.

### **2. Audit Engine**

A script (written in Python, Node, or Go) loops through all organisation repositories using the GitHub API, retrieves their configuration, and compares it to the baseline.

**Python example (simplified):**

```python
from github import Github
import yaml, os

gh = Github(os.environ["GITHUB_TOKEN"])
org = gh.get_organization("my-org")

baseline = yaml.safe_load(open("policies/branch_protection.yml"))

for repo in org.get_repos():
    rules = repo.get_branch("main").get_protection()
    if rules.required_pull_request_reviews is None:
        findings.append(f"{repo.name}: Missing PR review rule")
```

Checks may include:

* branch protection
* tag protection
* CODEOWNERS consistency
* required reviews and approvers
* commit signing rules
* workflow permissions (including nested job/step scopes)
* risky triggers such as `pull_request_target`
* ruleset and bypass drift

**Workflow trigger example:**

```python
if "pull_request_target" in workflow_yaml["on"]:
    findings.append(f"{repo.name}: Uses pull_request_target")
```

### **3. Scheduled Audit (GitHub Actions)**

A workflow in the governance repo runs the audit regularly.

**Example `.github/workflows/audit.yml`:**

```yaml
name: Nightly Audit

on:
  schedule:
    - cron: "0 2 * * *"
  workflow_dispatch:

jobs:
  audit:
    runs-on: ubuntu-latest
    permissions:
      contents: read
      actions: read
    steps:
      - uses: actions/checkout@v4
      - name: Install dependencies
        run: pip install -r requirements.txt
      - name: Run audit
        env:
          GITHUB_TOKEN: ${{ secrets.GOVERNANCE_TOKEN }}
        run: python audit/runner.py
      - name: Store report
        uses: actions/upload-artifact@v4
        with:
          name: nightly-report
          path: reports/latest.json
```

The token should be a GitHub App or PAT with read-only org access.

### **4. Reporting**

Results are summarised in a consolidated report. Teams may be notified through:

* a Slack message,
* a Markdown summary stored in the governance repo,
* GitHub Issues created on affected repositories,
* or optional PRs that apply simple fixes.

**Example GitHub Issue:**

```
Title: Repository policy drift detected

Your repository does not match the organisation’s baseline.

Findings:
- Missing CODEOWNERS file
- Workflow grants overly broad write permissions
- Signed commits not enforced

Please review and update the configuration.
```

## **Resulting Context**

* Repository settings stabilise over time, reducing risk.
* Drift becomes visible early and is easy to address.
* Teams keep their autonomy while receiving clear, automated feedback.
* Policy changes flow through normal code review and remain transparent.
* New repositories inherit governance automatically.
* Leadership gains an accurate daily snapshot of organisational configuration health.

## **Use This Pattern When**

* You have many repositories maintained by different teams.
* You want consistent engineering safeguards across the organisation.
* You need early visibility into risky configuration changes.
* You prefer light-touch governance rather than strict enforcement.
* You want policies to be explicit, reviewable, and version-controlled.
* You want to reduce manual auditing work.

## **Don’t Use This Pattern When**

* Your organisation has only a few repositories and manual checks are easier.
* You need strict enforcement at merge time rather than advisory feedback.
* Your baseline policies change frequently and are not yet stable.
* You cannot grant a GitHub App or token read access across the organisation.
* Many repositories require unique settings, making a single baseline impractical.
* Your organisation is not ready to adopt policy-as-code.

## **Authors**

[Amburi Roy](https://www.linkedin.com/in/amburi/)

## **Alias**

Governance-as-Code Audit Repository

## **Related Patterns**

* **Automated Testing** — shared automated checks for quality.
* **InnerSource Product Owner** — defines ownership of the governance repo.
* **Trusted Committers** — supports safe changes to shared policy.
* **InnerSource Portal** — complements centralising organisational knowledge.

