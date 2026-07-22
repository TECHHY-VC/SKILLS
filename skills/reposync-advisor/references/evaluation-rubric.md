# RepoSync Advisor Evaluation Rubric

## Evidence priority

1. Merged code and objective checks.
2. Human review and acceptance.
3. Rework, revert, and incident evidence.
4. Handoff quality and task continuity.
5. Agent outcome self-report.

Never let self-report override objective evidence.

## Review dimensions

### Task completion
- Completed and accepted.
- Partially completed.
- Failed, abandoned, or reverted.

### Quality
- Acceptance criteria met.
- Relevant tests added and passed.
- Project conventions preserved.
- No unresolved high-severity review findings.

### Rework
- Number and significance of review rounds.
- Major redesign after first implementation.
- Follow-up fixes caused by avoidable omissions.

### Safety
- Security, privacy, data-loss, or production incidents.
- Risky changes without review or tests.
- Correct escalation for critical work.

### Process discipline
- Work Item and branch protocol followed.
- Decisions recorded.
- Handoff complete when responsibility changed.
- Outcome report factual and evidence-linked.

### Efficiency
Use only when evidence exists:
- time to useful result;
- unnecessary tool or token usage;
- avoidable duplicated work;
- cost information.

## Confidence

### Low
Use when there are fewer than three comparable tasks, evidence is incomplete, or tasks differ substantially.

### Medium
Use when multiple comparable tasks show a consistent pattern but the sample remains limited or model versions vary.

### High
Use when repeated comparable tasks, objective checks, and human reviews support the same conclusion with no major contradictory evidence.

## Advisor review template

```markdown
# RepoSync Advisor Review

- Project:
- Review period:
- Work Items reviewed:
- Agents observed:

## Executive summary

## Evidence reviewed

## Agent observations

### <Agent>
Strong results:
-

Weak results or limitations:
-

Evidence:
-

## Repeated positive patterns

## Repeated negative patterns

## Proposed recommendations

| Task category | Preferred | Alternative | Confidence | Evidence |
|---|---|---|---|---|

## Recommendation changes

## Evidence gaps

## Next review trigger
```
