# RepoSync Worker Templates

## Work Item manifest

```yaml
work_item_id: PROJECT-WI-0001
title: Short task title
status: active
category: backend
complexity: medium
risk: medium
assigned_agent: codex
model: model-version
branch: agent/task-name
acceptance_criteria:
  - Define measurable completion condition.
affected_modules: []
```

## Chronicle

```markdown
# Chronicle

## YYYY-MM-DD HH:MM UTC

- Event: started | decision | blocker | resumed | completed
- Agent: <agent/model>
- Summary: <concise factual update>
- Evidence: <commit, PR, test, or file>
```

## Handoff

```markdown
# Handoff

- From agent:
- Recommended next agent:
- Current status:
- Completed:
- Remaining:
- Decisions:
- Blockers:
- Tests executed:
- Files to review:
- Evidence:
```

## Outcome

```markdown
# Outcome Report

## Task
- Work Item:
- Category:
- Complexity:
- Risk:

## Agent
- Agent:
- Model:

## Result
- Status: completed | partial | failed | abandoned | reverted
- PR merged: yes | no
- Tests passed: yes | no | partial
- Review rounds:
- Major rework: yes | no
- Production incident: yes | no

## What worked
-

## What did not work
-

## Recommendation for future work
-

## Evidence
-
```
