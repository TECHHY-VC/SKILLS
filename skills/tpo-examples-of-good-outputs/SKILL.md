---
name: tpo-examples-of-good-outputs
description: technical product owner guideline module: Examples Of Good Outputs. preserves source checklists, templates, gates, and execution rules.
---

# examples-of-good-outputs.md

Version: 1.0  
Owner: Technical Product Owner Agent  
Purpose: Provide examples of strong outputs that the agent should use as a quality benchmark when planning, supervising, reviewing, and accepting AI-assisted product development work.

---

## 1. How the agent should answer

A good Technical Product Owner Agent output must be:

- structured
- specific
- actionable
- testable
- product-aware
- technically realistic
- easy for an AI Developer Agent to execute
- easy for a human owner to verify

The agent should not give generic advice when a concrete product, feature, module, screen, task, or code change is being discussed.

Every output should usually include:

1. Goal
2. Context
3. Scope
4. Decisions
5. Assumptions
6. Requirements
7. Risks
8. Acceptance criteria
9. Next steps
10. Decision status

Use this decision vocabulary:

- Approved
- Approved with fixes
- Needs revision
- Blocked
- Rejected

---

## 2. Example: Product idea analysis

### User input

> I want to build a Telegram bot that collects startup applications, stores them in CRM, and helps investors review projects.

### Good output

## Product analysis

### Product goal

Build a Telegram-first intake and review system that allows startups to submit applications, stores structured data in CRM, and gives investors a clear way to review, score, and follow projects.

### Target users

| User type | Goal | Main need |
|---|---|---|
| Startup founder | Submit project information | Fast intake with clear questions |
| TECH HY operator | Review and manage submissions | Structured CRM records |
| Investor | Review projects | Clear summary, links, scores, status |
| Admin | Control quality and access | Permissions, audit trail, moderation |

### Core product flow

1. Founder opens Telegram bot.
2. Bot starts intake wizard.
3. Founder submits project details, links, deck, fundraising data, and contacts.
4. System validates required fields.
5. Bot creates or updates CRM record.
6. Operator reviews application.
7. Project receives status.
8. Investor-facing summary is generated.
9. Updates are tracked over time.

### MVP scope

In scope:

- Telegram bot intake
- structured project application form
- CRM record creation
- admin review status
- project summary generation
- basic investor review view
- audit log for major changes

Out of scope for MVP:

- token rewards
- public marketplace
- advanced investor matching
- on-chain verification
- automated legal review

### Key risks

| Risk | Impact | Mitigation |
|---|---|---|
| Founders submit incomplete data | Poor review quality | Required fields and validation |
| CRM records become duplicated | Data mess | Identity matching by email, Telegram ID, project URL |
| Investors see unverified claims | Trust risk | Add source labels and review status |
| AI summaries hallucinate details | Credibility risk | Generate only from submitted fields and approved notes |

### Clarifying questions

1. Which CRM should be the source of truth?
2. Should founders be able to edit submissions after sending?
3. Who approves investor-visible summaries?
4. Which fields are mandatory for MVP?
5. Should investors access data inside Telegram, web dashboard, or both?

### Decision status

Needs clarification before architecture is finalized.

---

## 3. Example: Product requirements output

### User input

> Create PRD for the intake bot.

### Good output

# Product Requirements Document: Startup Intake Bot

## 1. Objective

Create a Telegram bot that collects startup application data and converts it into a structured CRM record for review by TECH HY operators.

## 2. Problem

Current startup intake is scattered across chats, decks, forms, and manual notes. This creates duplicated work, inconsistent records, missing data, and slower investor review.

## 3. Success metrics

| Metric | Target |
|---|---|
| Intake completion rate | 70 percent or higher |
| Required field completeness | 95 percent or higher |
| Duplicate CRM records | Less than 5 percent |
| Operator review time | Reduced by 50 percent |
| Time from first contact to structured record | Under 10 minutes |

## 4. User stories

### Founder

As a founder, I want to submit my project through Telegram so that I do not need to fill out long external forms.

### Operator

As an operator, I want every submitted project to become a structured CRM record so that I can review it without manual copy-paste work.

### Investor

As an investor, I want to see a clean project summary so that I can decide whether the project is relevant.

## 5. Functional requirements

| ID | Requirement | Priority |
|---|---|---|
| FR-001 | Bot starts intake flow from /start | Must |
| FR-002 | Bot collects founder contact details | Must |
| FR-003 | Bot collects project name, website, deck, sector, raise amount, stage | Must |
| FR-004 | Bot validates required fields | Must |
| FR-005 | Bot creates or updates CRM record | Must |
| FR-006 | Bot assigns review status | Must |
| FR-007 | Bot sends confirmation to founder | Should |
| FR-008 | Bot notifies operator | Should |

## 6. Non-functional requirements

| Area | Requirement |
|---|---|
| Reliability | Failed CRM sync must be retried or placed into a retry queue |
| Security | Secrets must not be stored in code |
| Privacy | Founder data must be visible only to authorized roles |
| Observability | Intake events must be logged |
| Maintainability | Bot flow must be modular and easy to extend |

## 7. Acceptance criteria

The MVP is accepted only if:

- a founder can complete the full intake flow
- missing required fields are detected
- a CRM record is created or updated
- duplicate submissions are handled
- operator receives notification
- failed sync is logged
- no secrets are committed to repository
- basic tests pass

## 8. Open questions

1. Which CRM fields already exist?
2. Which status values should be supported?
3. Should the bot support multiple languages?
4. Should founders upload files directly or provide links?

---

## 4. Example: Architecture planning output

### User input

> Plan architecture for the intake bot.

### Good output

# Architecture Plan: Startup Intake Bot

## 1. Architecture goal

Create a modular Telegram-first intake system that can collect founder data, validate submissions, synchronize with CRM, and support future investor-facing workflows.

## 2. Recommended architecture

```text
Telegram User
    |
Telegram Bot Runtime
    |
Intake Flow Module
    |
Validation Module
    |
Submission Service
    |
CRM Sync Adapter
    |
CRM System

Supporting modules:
- Notification Service
- Audit Log
- Admin Review Module
- AI Summary Generator
```

## 3. Main modules

| Module | Responsibility | Notes |
|---|---|---|
| Bot Runtime | Receives Telegram updates and sends responses | Keep thin |
| Intake Flow Module | Controls wizard steps and user state | Should be configurable |
| Validation Module | Validates required fields and formats | No business logic in UI layer |
| Submission Service | Creates internal submission object | Source of business rules |
| CRM Sync Adapter | Maps submission data to CRM fields | Adapter pattern recommended |
| Notification Service | Notifies operators | Async preferred |
| Audit Log | Tracks important events | Required for trust |
| AI Summary Generator | Creates structured summaries from submitted data | Must be source-grounded |

## 4. Data flow

1. Telegram update is received.
2. Bot Runtime identifies user and session.
3. Intake Flow Module determines current step.
4. Validation Module checks input.
5. Submission Service stores draft or final submission.
6. CRM Sync Adapter creates or updates CRM record.
7. Notification Service alerts operator.
8. Audit Log records the event.

## 5. Technical decisions

| Decision | Recommendation | Reason |
|---|---|---|
| Bot framework | Use a mature Telegram framework | Reduces bot runtime risk |
| State storage | Use database-backed sessions | Avoid losing draft submissions |
| CRM integration | Use adapter layer | Prevents CRM-specific logic from spreading |
| AI summary | Generate only from approved structured fields | Reduces hallucination risk |
| Logs | Structured logs | Easier debugging |

## 6. Risks and mitigations

| Risk | Mitigation |
|---|---|
| CRM API failure | Retry queue and operator alert |
| Duplicate founders | Identity matching logic |
| Incomplete submissions | Required fields and draft state |
| Data leakage | Role-based access control |
| AI-generated inaccurate summary | Source-grounded generation and human approval |

## 7. Implementation phases

### Phase 1: Foundation

- project structure
- bot runtime
- database schema
- environment config
- basic logging

### Phase 2: Intake MVP

- wizard flow
- validation
- draft state
- final submission

### Phase 3: CRM sync

- field mapping
- create or update logic
- duplicate detection
- retry handling

### Phase 4: Review workflow

- operator notification
- status changes
- audit log

### Phase 5: AI summary

- structured summary template
- source-grounded generation
- approval workflow

## 8. Acceptance criteria

Architecture is accepted if:

- each module has one clear responsibility
- CRM integration is isolated in adapter layer
- failures are logged and recoverable
- session state survives bot restart
- AI summary cannot invent facts outside submitted data
- structure supports future investor review module

Decision status: Approved for MVP planning.

---

## 5. Example: Module decomposition output

### User input

> Break the project into modules.

### Good output

# Module Decomposition

## Module map

| Module | Owner agent | Priority | Status |
|---|---|---:|---|
| Bot Runtime | AI Developer Agent | P0 | Not started |
| User Session | AI Developer Agent | P0 | Not started |
| Intake Wizard | AI Developer Agent | P0 | Not started |
| Validation Rules | AI Developer Agent | P0 | Not started |
| Submission Storage | AI Developer Agent | P0 | Not started |
| CRM Adapter | AI Developer Agent | P0 | Not started |
| Operator Notification | AI Developer Agent | P1 | Not started |
| Admin Review | AI Developer Agent | P1 | Not started |
| AI Summary | AI Developer Agent | P2 | Not started |
| Audit Log | AI Developer Agent | P1 | Not started |

## Module details

### 1. Bot Runtime

Purpose: Receive Telegram updates, route commands, and send messages.

Must include:

- /start command
- update handler
- command router
- error handler
- logging middleware

Must not include:

- CRM logic
- validation rules
- AI summary generation

Acceptance criteria:

- bot responds to /start
- unsupported input receives helpful message
- runtime errors are logged
- bot does not crash on invalid input

### 2. Intake Wizard

Purpose: Guide founder through application flow.

Must include:

- step sequence
- draft save after every answer
- back and cancel behavior
- resume draft behavior
- final review before submission

Acceptance criteria:

- user can complete full flow
- user can cancel
- user can resume draft
- required fields are enforced
- final summary is shown before submission

### 3. CRM Adapter

Purpose: Synchronize final submission with CRM.

Must include:

- field mapping
- create record
- update existing record
- duplicate detection
- retry handling
- error logging

Acceptance criteria:

- valid submission creates CRM record
- repeated submission updates same project when matched
- CRM failure does not lose submission
- CRM response ID is stored

---

## 6. Example: Roadmap output

### User input

> Create roadmap for MVP.

### Good output

# MVP Roadmap

## Roadmap summary

| Phase | Goal | Duration | Exit criteria |
|---|---|---:|---|
| 0. Discovery | Confirm scope and fields | 1 to 2 days | MVP fields and CRM mapping approved |
| 1. Foundation | Create project base | 2 to 3 days | Repo, config, DB, bot runtime ready |
| 2. Intake Flow | Build founder wizard | 4 to 6 days | Founder can complete application |
| 3. CRM Sync | Connect records to CRM | 3 to 5 days | Submission creates or updates CRM record |
| 4. Review Workflow | Add operator review | 3 to 4 days | Operator can review and change status |
| 5. QA and Release | Stabilize MVP | 2 to 4 days | DoD met and release checklist passed |

## Phase 0: Discovery

Deliverables:

- confirmed MVP field list
- CRM field mapping
- status model
- user roles
- Definition of Done

Risks:

- unclear CRM fields
- unclear review workflow

Exit criteria:

- all mandatory fields are approved
- no critical open questions block development

## Phase 1: Foundation

Deliverables:

- repository structure
- bot runtime
- environment config
- database connection
- logging
- basic tests

Exit criteria:

- bot runs locally
- test command works
- secrets are loaded from environment
- logs are structured

## Phase 2: Intake Flow

Deliverables:

- intake wizard
- validation rules
- draft state
- final confirmation screen

Exit criteria:

- complete application can be submitted
- missing fields are blocked
- draft can be resumed
- invalid inputs receive clear messages

## Phase 3: CRM Sync

Deliverables:

- CRM adapter
- field mapper
- duplicate detection
- retry queue

Exit criteria:

- valid submission creates CRM record
- duplicate updates existing record
- failed sync does not lose data

## Phase 4: Review Workflow

Deliverables:

- operator notification
- review status
- admin notes
- audit trail

Exit criteria:

- operator receives notification
- operator can change status
- status changes are logged

## Phase 5: QA and Release

Deliverables:

- bug fixes
- security checks
- release notes
- deployment runbook

Exit criteria:

- tests pass
- critical bugs are closed
- no exposed secrets
- release checklist approved

---

## 7. Example: Sprint planning output

### User input

> Plan sprint 1.

### Good output

# Sprint 1 Plan

## Sprint goal

Create the technical foundation for the Telegram intake bot so that development can proceed on a stable runtime, repository structure, database connection, and session model.

## Sprint scope

In scope:

- repository setup
- environment configuration
- bot runtime
- database connection
- session table
- basic command handling
- logging
- initial tests

Out of scope:

- full intake wizard
- CRM sync
- AI summary
- investor view

## Sprint backlog

| Task ID | Task | Priority | Estimate | Acceptance criteria |
|---|---|---:|---:|---|
| S1-001 | Create repository structure | P0 | 2h | Folders and README exist |
| S1-002 | Add environment config | P0 | 2h | Secrets loaded from env |
| S1-003 | Implement bot runtime | P0 | 4h | /start responds |
| S1-004 | Add database connection | P0 | 4h | App connects locally |
| S1-005 | Create session schema | P0 | 3h | Session can be created and updated |
| S1-006 | Add structured logging | P1 | 2h | Errors include request context |
| S1-007 | Add basic tests | P1 | 3h | Core tests pass |

## Definition of Done for sprint

Sprint 1 is done only if:

- app starts locally
- bot responds to /start
- database migrations run
- session can be stored and retrieved
- tests pass
- README explains setup
- no secrets are committed

## Risks

| Risk | Mitigation |
|---|---|
| CRM scope distracts foundation sprint | CRM sync is explicitly out of scope |
| Database schema overdesigned too early | Create only session schema now |
| Bot framework choice slows sprint | Use simplest proven option |

Decision status: Approved.

---

## 8. Example: Task for AI Developer Agent

### User input

> Write task for developer agent to build intake wizard.

### Good output

# Task for AI Developer Agent

## Task ID

DEV-INTAKE-001

## Title

Implement founder intake wizard for Telegram bot

## Goal

Build a multi-step Telegram intake flow that collects required startup application fields, validates each answer, saves draft progress, and shows a final review before submission.

## Context

The bot is part of the startup intake system. The wizard should collect structured data that will later be sent to CRM. CRM sync is not part of this task.

## Required fields

- founder name
- founder Telegram username
- founder email
- project name
- website
- sector
- short description
- fundraising amount
- fundraising stage
- pitch deck link
- data room link, optional

## Functional requirements

1. Start wizard after /start or "Submit project".
2. Ask one question at a time.
3. Validate required fields.
4. Validate email format.
5. Validate URL format for website, deck, and data room.
6. Save draft after every answer.
7. Support "back", "cancel", and "resume".
8. Show final summary before submit.
9. Store completed submission in database.
10. Return confirmation message after submit.

## Non-functional requirements

- no business rules inside Telegram handler
- wizard steps must be configurable
- all errors must be logged
- user-facing errors must be clear
- code must include tests for validation and step transitions

## Out of scope

- CRM integration
- AI summary generation
- operator review dashboard
- investor view

## Acceptance criteria

- user can complete all required fields
- invalid email is rejected
- invalid URL is rejected
- draft is saved after each step
- user can go back one step
- user can cancel flow
- user can resume draft
- final review is shown before submit
- completed submission is stored
- tests cover success path and validation failures

## Required output from AI Developer Agent

Return:

1. Summary of implementation
2. Files changed
3. How to run locally
4. Test results
5. Known limitations
6. Questions or assumptions

Decision status: Ready for implementation.

---

## 9. Example: Acceptance criteria output

### User input

> Create acceptance criteria for CRM sync.

### Good output

# Acceptance Criteria: CRM Sync

## Feature

Synchronize completed founder submission with CRM.

## Given When Then criteria

### AC-001: Create new CRM record

Given a completed submission with required fields  
When CRM sync runs  
Then a new CRM project record is created  
And the CRM record ID is saved in the local database.

### AC-002: Update existing CRM record

Given a completed submission that matches an existing project by website or CRM ID  
When CRM sync runs  
Then the existing CRM record is updated  
And no duplicate project record is created.

### AC-003: Handle CRM API failure

Given CRM API is unavailable  
When CRM sync runs  
Then the submission is not lost  
And the sync status is set to failed  
And the failure is logged  
And the submission is eligible for retry.

### AC-004: Validate field mapping

Given a completed submission  
When CRM sync maps fields  
Then all required CRM fields receive correct values  
And unknown fields are not silently dropped.

### AC-005: Protect secrets

Given CRM API credentials are required  
When the app starts  
Then credentials are loaded from environment variables  
And credentials are not committed to repository.

## Rejection criteria

Reject implementation if:

- CRM logic is inside Telegram handler
- failed sync loses submission
- duplicate records are created for the same project
- credentials are hardcoded
- errors are swallowed without logs

---

## 10. Example: UX/UI review output

### User input

> Review this intake screen.

### Good output

# UX/UI Review

## Decision

Approved with fixes.

## What works well

- Main action is clear.
- The screen explains what the user should do next.
- Required fields are visible.
- The form is not overloaded with unnecessary fields.

## Issues found

| Severity | Issue | Why it matters | Fix |
|---|---|---|---|
| High | Error message says "Invalid input" only | User does not know how to fix it | Explain expected format |
| Medium | Submit button appears before required fields are complete | Can create failed submissions | Disable submit until valid |
| Medium | Required fields are marked only by color | Accessibility issue | Add text label "required" |
| Low | Help text is too long | Reduces scanability | Shorten to one sentence |

## Recommended improved copy

Current:

> Invalid input

Improved:

> Please enter a valid website URL, for example https://example.com

## Acceptance criteria for UX fix

- every invalid field shows a specific message
- required fields are marked with text, not only color
- submit is unavailable until required fields are valid
- user can understand the next step within 5 seconds
- layout works on mobile screen width

## Decision status

Approved with fixes.

---

## 11. Example: Code review output

### User input

> Review AI Developer Agent implementation.

### Good output

# Code Review

## Decision

Needs revision.

## Summary

The implementation covers the happy path, but it mixes Telegram handler logic, validation, and persistence in one file. This makes the code hard to test and risky to extend. The feature should not be accepted until responsibilities are separated and validation tests are added.

## Critical issues

| Severity | Issue | Required fix |
|---|---|---|
| Blocker | CRM token is hardcoded in config file | Move to environment variable |
| High | Telegram handler contains validation and database writes | Move validation to Validation Module and writes to Submission Service |
| High | No tests for invalid email or URL | Add unit tests |
| Medium | Errors are printed but not logged with context | Use structured logger |
| Medium | No retry or safe failure behavior | Add failure state or explicit TODO if out of scope |

## Good parts

- Basic flow works.
- Field names are mostly consistent.
- User receives confirmation after submit.
- Database model is simple.

## Required changes

1. Extract validation functions into `validation/`.
2. Extract submission save logic into `services/submission_service`.
3. Load all secrets from environment variables.
4. Add tests for email validation, URL validation, missing required fields, and submit flow.
5. Add structured error logging.
6. Update README with setup instructions.

## Acceptance gate

Implementation can be approved only when:

- no secrets are hardcoded
- handler delegates business logic
- validation tests pass
- database write failure is handled
- README explains how to run and test

Decision status: Needs revision.

---

## 12. Example: Security review output

### User input

> Check security risks before release.

### Good output

# Security Review

## Decision

Blocked until high-risk items are fixed.

## Security checklist

| Area | Status | Notes |
|---|---|---|
| Secrets management | Fail | API token found in local config |
| Authentication | Pass | Admin commands require admin list |
| Authorization | Needs review | Operator role boundaries unclear |
| Input validation | Partial | Email and URL validation exist, but text length limits missing |
| Rate limiting | Missing | Bot can be spammed |
| Logging | Needs fix | Logs may include user email |
| Dependency review | Not provided | Need lockfile and vulnerability scan |
| Error handling | Partial | Some exceptions expose internal messages |

## Required fixes before release

1. Remove all secrets from repository.
2. Rotate any token that was committed.
3. Add rate limiting for intake submissions.
4. Add max length limits for text fields.
5. Mask email and Telegram ID in logs where possible.
6. Confirm operator authorization model.
7. Run dependency vulnerability scan.
8. Replace internal error messages with safe user-facing messages.

## Release gate

Do not release until:

- no secrets are present in repository
- high-risk security issues are closed
- admin actions are authorized
- logs do not expose sensitive data
- rate limit is active

Decision status: Blocked.

---

## 13. Example: Bug report output

### User input

> Create bug ticket for duplicate CRM records.

### Good output

# Bug Ticket

## Title

Duplicate CRM records are created for repeat founder submissions

## Severity

High

## Priority

P0

## Environment

- App: Telegram intake bot
- Module: CRM Adapter
- Environment: staging
- User type: founder

## Steps to reproduce

1. Start intake flow as founder.
2. Submit project with website `https://example.com`.
3. Complete submission.
4. Start intake again with the same website.
5. Submit again.
6. Check CRM project records.

## Expected result

Existing CRM record is updated.

## Actual result

A new CRM record is created.

## Impact

- CRM becomes polluted with duplicates.
- Operators may review the same project twice.
- Investor-facing data can become inconsistent.
- Reporting becomes unreliable.

## Suspected cause

CRM Adapter creates a record without checking existing records by website, project name, or stored CRM ID.

## Required fix

Before creating a new record, CRM Adapter must:

1. check if local submission already has CRM ID
2. search CRM by normalized website
3. search CRM by normalized project name if website is missing
4. update existing record when match is found
5. create new record only when no match exists

## Acceptance criteria

- repeat submission with same website updates existing record
- CRM ID is stored locally after first sync
- no duplicate is created in repeated submission test
- duplicate detection logic is covered by tests
- duplicate matching decision is logged

Decision status: Ready for developer.

---

## 14. Example: Release readiness output

### User input

> Can we release MVP?

### Good output

# Release Readiness Review

## Decision

Not ready for release.

## Summary

The MVP is functionally close, but release should be blocked because security, logging, and CRM failure handling are not complete. The bot can collect applications, but failed CRM sync can leave operators without a reliable review record.

## Release checklist

| Area | Status | Notes |
|---|---|---|
| Core intake flow | Pass | Full flow works |
| Required field validation | Pass | Email and URL validation work |
| CRM sync | Partial | Success path works, failure path incomplete |
| Duplicate handling | Partial | Website matching works, project-name fallback missing |
| Tests | Partial | Validation tests exist, integration tests missing |
| Security | Fail | Missing rate limiting |
| Logging | Partial | Errors logged, but not enough context |
| Documentation | Pass | README updated |
| Rollback plan | Missing | No rollback instructions |
| Monitoring | Missing | No alert for CRM sync failure |

## Release blockers

1. CRM sync failure must not lose submissions.
2. Rate limiting must be added.
3. Rollback plan must be documented.
4. Operator alert must fire on failed sync.
5. Integration test for successful CRM sync must pass.

## Can we release to production?

No.

## Can we release to internal staging?

Yes, if it is marked as staging-only and used by internal operators only.

## Required next step

Create a stabilization sprint with the five blockers above.

Decision status: Blocked for production, approved for internal staging.

---

## 15. Example: Final acceptance output

### User input

> Developer fixed the issues. Review final result.

### Good output

# Final Acceptance Review

## Decision

Approved.

## Review summary

The implementation now meets the MVP requirements. The intake flow works, validation is covered by tests, CRM sync is isolated in the adapter layer, duplicate records are handled, and failures are logged without losing submissions.

## Verified items

| Area | Result |
|---|---|
| Intake flow | Pass |
| Required fields | Pass |
| Email validation | Pass |
| URL validation | Pass |
| Draft resume | Pass |
| CRM create | Pass |
| CRM update | Pass |
| Duplicate detection | Pass |
| Error handling | Pass |
| Tests | Pass |
| Security basics | Pass |
| README | Pass |

## Remaining non-blocking improvements

1. Add analytics for completion rate.
2. Add admin dashboard for review status.
3. Add AI-generated summary after human approval.
4. Add investor-facing view in later phase.

## Release recommendation

Approved for staging release.

Production release requires one more monitoring check after staging validation.

Decision status: Approved.

---

## 16. Bad output vs good output

### Bad output

> Looks good. Just improve the UI and make the code cleaner.

Why this is bad:

- no specific issues
- no severity
- no acceptance criteria
- no owner
- no next step
- no decision status

### Good output

> Decision: Needs revision. The UI lacks field-level error messages, and the code mixes validation with Telegram handlers. Required fixes: add specific validation messages, extract validation into a separate module, add tests for invalid email and URL, and return for review after tests pass.

Why this is good:

- clear decision
- specific defects
- concrete fixes
- testable next step
- suitable for AI Developer Agent execution

---

## 17. Standard output blocks the agent can reuse

### Architecture block

Use when planning architecture:

```text
Architecture goal:
System boundary:
Main modules:
Data flow:
Technical decisions:
Risks:
Acceptance criteria:
Open questions:
Decision status:
```

### Developer task block

Use when assigning work:

```text
Task ID:
Title:
Goal:
Context:
Scope:
Out of scope:
Functional requirements:
Non-functional requirements:
Acceptance criteria:
Required output:
Decision status:
```

### Review block

Use when reviewing implementation:

```text
Decision:
Summary:
What works:
Issues found:
Required fixes:
Acceptance gate:
Risks:
Next step:
```

### Release block

Use before launch:

```text
Decision:
Release scope:
Checklist:
Blockers:
Non-blocking issues:
Rollback plan:
Monitoring:
Release recommendation:
```

---

## 18. Scoring rubric

Use this rubric when judging AI Developer Agent output.

| Area | Weight | Pass criteria |
|---|---:|---|
| Requirement fit | 25 percent | Meets stated task and scope |
| Architecture quality | 20 percent | Separation of concerns and scalable structure |
| Code quality | 15 percent | Clear, maintainable, tested |
| UX quality | 10 percent | Clear flow, helpful errors, accessible basics |
| Security | 15 percent | No secrets, validation, authorization, safe errors |
| Testing | 10 percent | Meaningful tests for key paths |
| Documentation | 5 percent | Setup and behavior are explained |

Decision thresholds:

- 90 to 100: Approved
- 75 to 89: Approved with fixes
- 50 to 74: Needs revision
- 0 to 49: Rejected or blocked

---

## 19. Source principles used by this file

This file is based on widely used product, agile, engineering, UX, and security principles:

- Scrum Guide: Product Backlog, Sprint Planning, Sprint Backlog, Definition of Done, Increment.
- Atlassian Agile guidance: user stories and requirements framing.
- Microsoft cloud architecture guidance: reliability, scalability, operations, and evolution.
- Google Engineering Practices: code review should improve code health and product quality without unnecessary perfectionism.
- Nielsen Norman Group usability heuristics: visibility, consistency, error prevention, recognition, flexibility, and helpful recovery.
- OWASP API Security Top 10: authorization, authentication, resource consumption, configuration, inventory, and third-party API risks.
- Google Web Vitals: loading, interactivity, and visual stability as measurable UX quality signals.
- React Thinking in React: break UI into component hierarchy, build static version first, identify minimal state, and define data flow.

Reference URLs:

- https://scrumguides.org/scrum-guide.html
- https://www.atlassian.com/agile/project-management/user-stories
- https://learn.microsoft.com/en-us/azure/architecture/guide/design-principles/
- https://google.github.io/eng-practices/review/reviewer/standard.html
- https://www.nngroup.com/articles/ten-usability-heuristics/
- https://owasp.org/API-Security/editions/2023/en/0x11-t10/
- https://web.dev/articles/vitals
- https://react.dev/learn/thinking-in-react
