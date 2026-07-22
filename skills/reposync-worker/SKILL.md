---
name: reposync-worker
description: Enforce the RepoSync GitHub working protocol for AI coding agents. Use when an agent starts, continues, reviews, hands off, or completes work in a repository that contains AGENTS.md or a .reposync directory. Requires reading project recommendations, working through a Work Item, recording decisions, preparing handoffs, and leaving a concise outcome report.
---

# RepoSync Worker

Follow the project `AGENTS.md` as the canonical authority. Use this skill to execute the common workflow consistently across Codex, Claude Code, Kimi Code, Zcode, Cursor, Copilot, and generic agents.

## Start

1. Read `AGENTS.md`.
2. Read `.reposync/config.yaml`.
3. Read `.reposync/advisory/recommendations.md`.
4. Identify the current agent and model version.
5. Identify or create the active Work Item under `.reposync/work-items/<WORK-ITEM-ID>/`.
6. Classify the task category, complexity, risk, and affected modules.
7. Compare the current agent with the applicable recommendation.
8. Notify the user when another agent is materially preferred.
9. Never transfer work without explicit user approval.

## Execute

1. Work only in the assigned branch.
2. Keep changes inside the active Work Item scope.
3. Record important decisions and blockers in `chronicle.md`.
4. Preserve other agents' work and do not overwrite unrelated changes.
5. Run relevant checks before requesting review.
6. Keep evidence links to commits, Pull Requests, tests, and reviews.

## Handoff

When responsibility changes:

1. Stop at a stable checkpoint.
2. Commit or clearly identify uncommitted work.
3. Complete `handoff.md`.
4. Record completed work, remaining work, decisions, blockers, tests, and files requiring review.
5. Wait for user approval before another agent takes ownership.

## Complete

1. Complete `outcome.md`.
2. State the actual agent and model.
3. Record status, tests, review rounds, rework, incidents, and evidence.
4. Describe what worked and what did not work.
5. Add a short recommendation for similar future tasks.
6. Do not claim success without objective or human evidence.

## Mismatch message

Use this structure:

```text
Task classification: <category and risk>.
Current agent: <agent and model>.
Recommended agent: <agent and model>.
Evidence: <evidence and confidence stated in recommendations>.
Recommendation: <continue or transfer suggestion>.
Decision requested: continue with current agent or prepare handoff.
```

## Core rule

> Agent Advisor recommends. The current agent warns. The user decides. GitHub records.

Use templates from `references/templates.md` when the project does not already provide its own templates.
