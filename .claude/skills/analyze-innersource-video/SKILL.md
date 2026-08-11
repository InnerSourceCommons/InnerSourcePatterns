---
name: analyze-innersource-video
description: Analyze an InnerSource conference talk or community call — given either a YouTube URL or a transcript directly — and relate it to the InnerSourcePatterns library. Identifies which existing patterns the talk instantiates (Known Instance candidates), where it suggests clarifications to an existing pattern, and whether it justifies drafting a new pattern. Use when given a YouTube URL or a transcript of an InnerSource-related talk and asked to relate it to this repo's pattern library.
---

# Analyze InnerSource Video

## When to use

The user provides either a YouTube URL or an already-fetched transcript of an InnerSource talk and asks you to compare it to the patterns in this repo. **A transcript handed to you directly is the common case going forward** — an automated source (e.g. a Zoom transcript pulled once a community call finishes) supplies the transcript and whatever metadata it has (speaker, org, date) without a YouTube URL ever being in the loop. The YouTube-fetch path stays for backlog talks and one-off requests where only a URL exists. See Step 1 for both.

Goals: surface known instances, propose surgical clarifications to existing patterns, and identify genuinely new InnerSource pattern candidates.

## Default behavior

**Propose, never auto-edit.** Always present analysis and use `AskUserQuestion` to confirm direction before making file changes. Never commit or PR without explicit confirmation.

## Workflow

### Step 1 — Get transcript and metadata

**If a transcript was handed to you directly** (the going-forward case — e.g. a Zoom transcript an automated source already pulled), skip the fetch entirely. Take whatever metadata came with it (speaker, org, event, date); if any of it is missing, ask the caller before falling back to a placeholder — same rule as Step 7's Known Instance citation. There is no video to fetch and no YouTube URL required.

**If you only have a YouTube URL** (backlog talks, one-off requests), fetch both:

**Transcript** — use the `youtube-transcript-api` Python library (already available; pip-installable if not). Do *not* try `WebFetch` on YouTube watch pages — it returns only the footer.

Write a script to `.tmp/fetch_transcript.py`:

```python
from youtube_transcript_api import YouTubeTranscriptApi

video_id = "<VIDEO_ID>"
api = YouTubeTranscriptApi()
transcript = api.fetch(video_id)
with open(".tmp/transcript_raw.txt", "w", encoding="utf-8") as f:
    for s in transcript:
        f.write(f"[{s.start:.1f}] {s.text}\n")
```

Then collapse it to a flat readable form in `.tmp/transcript_flat.txt` (strip timestamps, join, normalize whitespace).

**Metadata** — use `yt-dlp` via `python -m yt_dlp` (the `yt-dlp` binary may not be on PATH on Windows even when the package is installed). Write `.tmp/fetch_metadata.py`:

```python
import json, yt_dlp
opts = {"quiet": True, "skip_download": True, "no_warnings": True}
with yt_dlp.YoutubeDL(opts) as ydl:
    info = ydl.extract_info("<URL>", download=False)
keys = ["title", "uploader", "channel", "upload_date", "duration", "description", "tags"]
out = {k: info.get(k) for k in keys}
with open(".tmp/video_metadata.json", "w", encoding="utf-8") as f:
    json.dump(out, f, ensure_ascii=False, indent=2)
print(out["title"]); print(out["channel"]); print(out["description"])
```

**The description usually contains speaker name and affiliation when the transcript does not** — this is the single most important reason to fetch metadata even when you have the transcript. Speakers often introduce themselves with just a first name or nickname.

**Fallback for title + channel only:** the YouTube oEmbed endpoint (`https://www.youtube.com/oembed?url=<URL>&format=json`) works through `WebFetch`.

### Step 2 — Summarize the talk

Produce a brief synthesis covering:

- **Title** (from metadata, not from the transcript's spoken title — they often differ)
- **Speaker** — full name from the description; note any nickname the speaker uses in the talk
- **Organization** — from the description
- **Channel / event** — typically the InnerSource Commons channel; the description often names a specific summit or webinar
- **Upload date** — useful for citation
- **Core thesis** in one or two sentences
- **Main artifacts / frameworks** the speaker introduces (named structures, checklists, blueprints, mantras)
- **Memorable lines** — verbatim quotes can become useful in the pattern's Known Instance description

### Step 3 — Survey adjacent patterns

Extract every pattern's title + patlet via a small script (write to `.tmp/extract_patlets.py`). Read the resulting file in full — you want the patlet, not just the title, to judge relevance.

Then pick the 3–6 patterns whose patlets sit closest to the talk's theme and read those in full. Don't rely solely on patlets to judge a match: the talk's content may overlap meaningfully with parts of a pattern that the patlet doesn't surface.

### Step 4 — Categorize the talk's content

For each substantive point in the talk, assign it to one of:

**A. Known Instance candidate** — the talk validates, exemplifies, or vividly re-derives an existing pattern's solution. The right action: add a citation under the pattern's `## Known Instances` section.

**B. Clarification candidate** — the talk surfaces a real gap or vagueness in an existing pattern. The right action: a small, surgical edit that fills the gap without reframing the pattern. Bias toward additions over rewrites; bias toward concrete guidance over editorial framing.

**C. New pattern candidate** — the talk presents a problem/solution pair that no existing pattern covers. The right action: propose drafting a new pattern using the AI-assisted prompt in `meta/pattern-drafts-with-ai.md`.

### Step 5 — Apply the "uniquely InnerSource" filter

**This is the most important judgment call and the easiest mistake to make.** A talk can contain genuinely good engineering advice that is *not* uniquely InnerSource. Examples that look like new patterns but probably aren't:

- "Treat docs like code" — general dev advice; well-trodden outside InnerSource.
- "Write better READMEs" — general OSS / dev advice.
- "Use linters / CI / automation" — general engineering.

What *is* uniquely InnerSource — the signal you're looking for:

- It addresses the specific dynamic of **contributors who are not on the host team** (no shared context, no shared OKRs, no shared manager).
- It addresses **cross-team collaboration friction** inside one company (Trusted Committers, escalation, ownership ambiguity, dual-line-management tension).
- It addresses **incentive misalignment** between a developer's team goals and contributing to a shared project.
- It addresses **scaling InnerSource adoption** across an organization (ambassadors, ISPO, governance levels).

If the talk's central insight would be equally at home in a generic "good engineering" talk, it is not new-pattern material. It may still be a Known Instance or a clarification.

### Step 6 — Present analysis

Present a clear, three-part writeup to the user:

1. **Talk summary** (5–10 lines: speaker, org, thesis, blueprint)
2. **Mapping to existing patterns** with confidence labels (strong match, partial match, tangential)
3. **Candidate actions** organized as: Known Instances to add, clarifications to make, new pattern candidates (with the "uniquely InnerSource" filter applied)

Then use `AskUserQuestion` to confirm which actions to take. **Do not edit any file before this confirmation.** If the user is non-committal ("you decide"), make a confident recommendation in your own voice rather than asking again.

### Step 7 — Apply chosen actions

**For Known Instance citations:**

- Match the existing style of that pattern's Known Instances section — typically `* **<Organization>** - <one-or-two-sentence description>` with the URL inline.
- The lead bold should be the speaker's *organization*, not "Community talk" or similar meta-labels — the existing entries are all organizational, so use the same convention. If you cannot find an organization, ask the user before defaulting to a placeholder.
- Quote a memorable line or describe the framework concisely. Cite the YouTube link.

**For clarifications:**

- Stay surgical. Prefer adding a new subsection or bullet over rewriting an existing one.
- If the change touches the pattern's templates (e.g. `templates/README-template.md`), edit those too.
- Cross-link to other related patterns when distinguishing what the talk adds vs. what's already covered (e.g. distinguishing a contributor-facing system map from ADRs).

**For new patterns:**

- Use the prompt in `meta/pattern-drafts-with-ai.md` as the basis for drafting.
- File name: lowercase, hyphenated, matching the title. Place in `patterns/1-initial/`.
- Set Status to `Initial`, Known Instances to the talk itself, Author to TBD, omit Acknowledgments.
- Be honest about what evidence the talk provides — one talk is one data point, not proof a pattern is widely applicable.

### Step 8 — Git workflow

- **Always branch off `main`**, not whichever branch the user is currently on. Confirm with `git status` and `git branch --show-current` first.
- **One talk = one PR.** Bundle everything the analysis found for a single talk into one PR — Known Instance citations across several patterns, clarifications, a new pattern draft, whatever applies — the way #909 added Thales as a Known Instance across five patterns in one PR. Only split into separate PRs when the changes come from genuinely different source talks, not because they touch different patterns or different candidate types.
- Match the repo's commit message style: sentence-case subject, no conventional-commit prefix (check `git log --oneline -5` for recent style).
- Write the commit message body to `.tmp/commit_msg.txt` and use `git commit -F` (per user's no-heredocs rule).
- Open the PR against `InnerSourceCommons/InnerSourcePatterns` upstream `main` (the user's fork is `origin`).
- Include a `## Test plan` checklist in the PR body — the repo's convention.
- Ask the user before pushing/PRing rather than auto-proceeding.

## Anti-patterns to avoid

- Don't use `WebFetch` on YouTube watch pages — it returns only the footer. Use `youtube-transcript-api` and `yt-dlp` instead.
- Don't trust the spoken introduction for the speaker's organization — get it from the video description.
- Don't add a Known Instance entry labeled "Community talk" or similar generic placeholder — the convention is to lead with the speaker's organization.
- Don't propose "Treat docs like code" or similar generic-engineering ideas as new InnerSource patterns. Apply the Step 5 filter.
- Don't split one talk's findings across multiple PRs — bundle Known Instances, clarifications, and new pattern drafts from the same talk into one PR (see Step 8).
- Don't auto-commit or auto-push without confirmation from the user, even on "high confidence" calls — community library content warrants a human in the loop.
- Don't write the commit message via heredoc — write to `.tmp/commit_msg.txt` and use `git commit -F`.

## Output format for the user-facing analysis

Structure the final writeup as:

```
## Video summary
<5–10 lines>

## How it maps to the existing pattern library

### Strong match — Known Instance candidate
**[Pattern Name](patterns/.../file.md)**
<why this talk is a known instance>

### Partial / adjacent match
**[Pattern Name](patterns/.../file.md)**
<what overlaps, what differs>

### Candidate new patterns
**Candidate A — "<name>"**
<problem/solution; "uniquely InnerSource" rationale or honest reason it's borderline>

## Recommendation
<which actions to take, in confident voice>
```

Then `AskUserQuestion` to confirm.
