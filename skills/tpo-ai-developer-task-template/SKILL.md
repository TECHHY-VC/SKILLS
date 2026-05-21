---
name: tpo-ai-developer-task-template
description: technical product owner guideline module: Ai Developer Task Template. preserves source checklists, templates, gates, and execution rules.
---

# 03-ai-developer-task-template.md

Version: 1.0  
Role: Technical Product Owner Agent  
Purpose: Provide a standard task format for assigning precise, controlled work to AI Developer Agent.

---

## 1. Task creation principle

AI Developer Agent must receive tasks that are specific, bounded, testable, and reviewable.

A good task prevents uncontrolled implementation by making these things explicit:

- goal
- context
- scope
- out of scope
- requirements
- constraints
- acceptance criteria
- required output
- review gates

Never send AI Developer Agent a vague task like:

> Build the system.

Instead, send a scoped task like:

> Implement the intake wizard module with draft persistence, required field validation, back/cancel/resume behavior, and tests. CRM sync is out of scope.

---

## 2. Standard task template

```text
# Task for AI Developer Agent

## Task ID
[Unique ID]

## Title
[Short action-oriented title]

## Goal
[What must be achieved]

## Context
[Why this task exists and how it fits the product]

## Current state
[What already exists, if known]

## Scope
Included:
- ...

## Out of scope
Not included:
- ...

## Requirements
Functional:
- ...

Non-functional:
- ...

## Architecture constraints
- ...

## Files or modules affected
Expected:
- ...

Do not modify:
- ...

## Data requirements
Entities, fields, states, or schemas involved.

## UX/UI requirements
Screens, states, messages, flows, empty/error states.

## Security requirements
Secrets, auth, validation, authorization, logging constraints.

## Testing requirements
Required tests:
- ...

## Acceptance criteria
- ...

## Rejection criteria
Reject if:
- ...

## Required output from AI Developer Agent
Return:
1. Implementation summary
2. Files changed
3. Architecture notes
4. How to run
5. Tests added
6. Test results
7. Known limitations
8. Assumptions
9. Questions

## Decision status
Ready for implementation / Needs clarification / Blocked
```

---

## 3. Acceptance criteria rules

Acceptance criteria must be:

- observable
- testable
- specific
- linked to user or system behavior
- clear enough for review
- not mixed with implementation preferences unless needed

Bad acceptance criterion:

> The feature should be good.

Good acceptance criterion:

> When a user enters an invalid email, the bot rejects the value and explains the expected format.

---

## 4. Given When Then format

Use this format for behavior-heavy requirements.

```text
### AC-[Number]: [Name]

Given [initial state]
When [action]
Then [expected result]
And [additional expected result]
```

Example:

```text
### AC-001: Invalid email is rejected

Given the user is on the email step
When the user enters "mikhail"
Then the bot does not continue to the next step
And the bot shows a message explaining that a valid email is required.
```

---

## 5. AI Developer Agent response contract

AI Developer Agent must return:

```text
# Implementation Response

## Summary
What was implemented.

## Files changed
List of files.

## Architecture notes
Important structure or decisions.

## How to run
Commands and environment requirements.

## Tests
What tests were added or updated.

## Test results
Actual result of running tests, or clear explanation if not run.

## Known limitations
Anything not completed or intentionally deferred.

## Assumptions
Assumptions made during implementation.

## Questions
Remaining questions.
```

If AI Developer Agent does not provide this, return the task for clarification.

---

## 6. Task types

### Type A: Foundation task

Use for repository setup, runtime setup, config, database, logging.

Must include:

- setup commands
- environment variables
- folder structure
- tests or smoke check
- README update

### Type B: Feature task

Use for user-facing behavior.

Must include:

- user story
- flow
- validation
- success state
- error state
- acceptance criteria
- tests

### Type C: Integration task

Use for CRM, Telegram, payment, email, analytics, or external API.

Must include:

- provider
- credentials handling
- input and output mapping
- retry behavior
- failure behavior
- logs
- tests or mock strategy

### Type D: Refactor task

Use when improving structure without changing behavior.

Must include:

- current issue
- target structure
- behavior that must remain unchanged
- tests that must pass
- files not to change

### Type E: Bug fix task

Use when something is broken.

Must include:

- bug summary
- steps to reproduce
- expected result
- actual result
- suspected cause
- acceptance criteria
- regression test requirement

### Type F: QA or release task

Use before launch.

Must include:

- checklist
- environment
- release scope
- blockers
- rollback requirements
- monitoring requirements

---

## 7. Example: Feature task

```text
# Task for AI Developer Agent

## Task ID
DEV-INTAKE-001

## Title
Implement founder intake wizard

## Goal
Create a multi-step Telegram intake flow that collects required startup application data, validates answers, saves progress, and shows a final review before submission.

## Context
This is the main MVP flow. The data collected here will later be synchronized with CRM. CRM sync is out of scope for this task.

## Scope
Included:
- start intake flow
- ask one question at a time
- validate required fields
- validate email and URL fields
- save draft after every answer
- support back, cancel, and resume
- show final summary before submit
- store completed submission locally

## Out of scope
- CRM sync
- investor view
- AI scoring
- admin dashboard

## Requirements
Functional:
- User can start flow from /start.
- User can complete all required fields.
- User can go back one step.
- User can cancel.
- User can resume draft.
- User sees final summary before submit.

Non-functional:
- Flow steps must be configurable.
- Validation logic must not live directly inside Telegram handler.
- Errors must be logged.
- User-facing errors must be clear.

## Testing requirements
Add tests for:
- successful full flow
- invalid email
- invalid URL
- required field missing
- back behavior
- cancel behavior
- resume behavior

## Acceptance criteria
- Bot collects all required fields.
- Invalid email is rejected with helpful message.
- Invalid URL is rejected with helpful message.
- Draft is saved after each step.
- Final review appears before submit.
- Completed submission is stored.
- Tests pass.

## Rejection criteria
Reject if:
- Telegram handler contains all business logic.
- Draft state is lost after interruption.
- Invalid required fields can be submitted.
- No validation tests are added.

## Required output from AI Developer Agent
Return implementation summary, files changed, how to run, tests, test results, limitations, assumptions, and questions.

## Decision status
Ready for implementation.
```

---

## 8. Example: Bug fix task

```text
# Task for AI Developer Agent

## Task ID
BUG-CRM-002

## Title
Fix duplicate CRM records for repeat submissions

## Goal
Prevent duplicate CRM project records when a founder submits the same project more than once.

## Context
The current CRM sync creates a new record every time. This pollutes CRM and causes operator confusion.

## Steps to reproduce
1. Submit project with website https://example.com.
2. Complete CRM sync.
3. Submit the same project again with the same website.
4. Check CRM.

## Expected result
Existing CRM record is updated.

## Actual result
New duplicate CRM record is created.

## Scope
Included:
- duplicate check by local CRM ID
- duplicate check by normalized website
- update existing record when matched
- log duplicate matching decision
- regression test

## Out of scope
- manual merge UI
- advanced fuzzy matching
- investor notifications

## Acceptance criteria
- repeat submission with same website updates existing CRM record
- no duplicate record is created
- CRM ID is saved locally
- duplicate detection is covered by test
- matching decision is logged

## Decision status
Ready for implementation.
```

---

## 9. Review loop

After AI Developer Agent returns implementation:

1. Check whether output format is complete.
2. Verify scope.
3. Check acceptance criteria one by one.
4. Check architecture constraints.
5. Check tests.
6. Check security.
7. Decide: Approved, Approved with fixes, Needs revision, Blocked, or Rejected.
8. If not approved, create a revision task.

---

## 10. Revision task template

```text
# Revision Task for AI Developer Agent

## Original task
[Task ID and title]

## Review decision
Needs revision / Blocked / Rejected

## Main issue
[Summary]

## Required fixes
1. ...
2. ...
3. ...

## Do not change
- ...

## Acceptance criteria for revision
- ...

## Required output
Return updated implementation summary, files changed, tests, and test results.

## Decision status
Return for revision.
```

---

## 11. Source principles

This template follows these principles:

- Sprint planning clarifies why work matters, what can be done, and how selected work will be delivered.
- Product Backlog items should become sufficiently clear and small before selection.
- Definition of Done must create a shared quality threshold.
- Review comments should prioritize overall code health, facts, and continuous improvement.

Reference URLs:

- https://scrumguides.org/scrum-guide.html
- https://google.github.io/eng-practices/review/reviewer/standard.html
