---
name: prd-quality-review
description: Perform the final red-team quality review of a PRD before engineering handoff. Use when the user has a draft or completed PRD and needs checks for clarity, completeness, contradictions, scope control, testability, user value, acceptance criteria, dependency gaps, unresolved decisions, and readiness for implementation planning.
---

# PRD Quality Review

Use this skill as the final PRD gate after `prd-writer` and, for complex or trust-sensitive products, after `prd-risk-nfr-review`.

Review the PRD as if engineering, QA, design, support, and product leadership must execute from it without additional context.

## Workflow

1. Determine whether the PRD has a clear problem, goals, non-goals, users, scope, requirements, acceptance criteria, risks, dependencies, and open questions.
2. Look for contradictions, hidden scope, ambiguous language, untestable requirements, missing edge cases, and decisions disguised as requirements.
3. Check whether v1 can be built and tested from the document.
4. Check whether every primary scenario maps to requirements and acceptance criteria.
5. Produce a verdict with prioritized findings and concrete edits.
6. Do not rewrite the entire PRD unless the user explicitly asks for a revised version.

## Output Structure

Write in Russian unless the user requests another language:

```markdown
# PRD Quality Review: <название PRD>

## Verdict
Ready / Needs revision / Blocked

## Critical Issues
## Major Issues
## Minor Issues
## Ambiguities
## Missing Acceptance Criteria
## Scope and Non-Goal Problems
## Engineering Handoff Gaps
## Recommended Edits
## Final Checklist
```

Use this finding format:

```markdown
### <severity>: <short title>
- Проблема: <what is unclear, missing, contradictory, or risky>
- Где видно: <section, requirement ID, or "not specified">
- Почему важно: <handoff impact>
- Исправление: <specific edit>
```

## Quality Checklist

- Problem statement is specific and tied to users.
- Goals are measurable or observable.
- Non-goals protect release scope.
- Requirements are testable and uniquely identifiable.
- Acceptance criteria cover success, failure, permissions, empty states, and edge cases.
- Dependencies and open decisions are visible.
- Metrics can show whether the release worked.
- Risk and NFR gaps are either resolved or explicitly accepted.

## Verdict Rules

- `Ready`: only minor issues remain, and engineering can start planning.
- `Needs revision`: important gaps remain, but the PRD direction is clear.
- `Blocked`: core problem, scope, requirements, or decisions are too unclear for responsible engineering handoff.
