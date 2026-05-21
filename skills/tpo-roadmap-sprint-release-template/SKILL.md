---
name: tpo-roadmap-sprint-release-template
description: technical product owner guideline module: Roadmap Sprint Release Template. preserves source checklists, templates, gates, and execution rules.
---

# 05-roadmap-sprint-release-template.md

Version: 1.0  
Role: Technical Product Owner Agent  
Purpose: Provide reusable templates for roadmap, development stages, sprint planning, release readiness, and bug tracking.

---

## 1. Roadmap principle

The roadmap must connect product goal, delivery phases, technical milestones, risks, and release criteria.

A roadmap is not just a date list. It must answer:

- why this product matters
- what gets built first
- what is intentionally delayed
- what must be validated
- what risks can block delivery
- how we know each phase is done

---

## 2. Roadmap template

```text
# Roadmap: [Product Name]

## Product goal
[The main business and user outcome]

## Roadmap horizon
[MVP / 30 days / 90 days / quarter / release cycle]

## Users
- ...

## Success metrics
| Metric | Target |
|---|---|
| ... | ... |

## Scope summary
In scope:
- ...

Out of scope:
- ...

## Roadmap phases
| Phase | Goal | Key deliverables | Exit criteria | Risk |
|---|---|---|---|---|
| 0. Discovery | ... | ... | ... | ... |
| 1. Foundation | ... | ... | ... | ... |
| 2. Core MVP | ... | ... | ... | ... |
| 3. Integrations | ... | ... | ... | ... |
| 4. QA and stabilization | ... | ... | ... | ... |
| 5. Release | ... | ... | ... | ... |

## Dependencies
- ...

## Risks
- ...

## Open questions
- ...

## Next step
[Concrete action]
```

---

## 3. Standard development stages

Use these stages for most AI-assisted software projects.

### Stage 0: Discovery and scope

Deliverables:

- product goal
- users and roles
- MVP scope
- out of scope
- requirements
- acceptance criteria
- risks
- open questions

Exit criteria:

- product goal is clear
- MVP scope is approved
- blockers are identified
- first tasks can be created

### Stage 1: Foundation

Deliverables:

- repository structure
- runtime setup
- environment config
- database setup
- basic logging
- README
- smoke test

Exit criteria:

- project runs locally
- config is documented
- test command works
- no secrets are committed

### Stage 2: Core flow

Deliverables:

- main user flow
- validation
- state management
- success and error states
- core tests

Exit criteria:

- main user can complete core flow
- invalid inputs are rejected
- required data is saved
- key tests pass

### Stage 3: Integrations

Deliverables:

- external API adapters
- field mapping
- authentication
- retry or failure handling
- integration tests or mocks
- logs

Exit criteria:

- integration success path works
- failure path does not lose data
- secrets are not hardcoded
- errors are logged

### Stage 4: Admin or operator workflow

Deliverables:

- status management
- review flow
- notes
- notifications
- audit log

Exit criteria:

- operator can complete review task
- important actions are logged
- statuses are clear

### Stage 5: QA and stabilization

Deliverables:

- bug fixes
- regression tests
- security review
- UX review
- documentation
- release checklist

Exit criteria:

- no blockers remain
- high issues are fixed
- tests pass
- release decision is possible

### Stage 6: Release

Deliverables:

- release notes
- deployment checklist
- rollback plan
- monitoring
- support instructions

Exit criteria:

- release is approved
- rollback is documented
- monitoring is active
- owner knows next actions

---

## 4. Sprint planning template

```text
# Sprint Plan: Sprint [Number]

## Sprint goal
[Why this sprint is valuable]

## Sprint duration
[Dates or number of days]

## Capacity
[Available time, constraints, holidays, dependencies]

## Selected backlog items
| Task ID | Task | Priority | Estimate | Owner | Acceptance criteria |
|---|---|---:|---:|---|---|
| ... | ... | ... | ... | ... | ... |

## In scope
- ...

## Out of scope
- ...

## Definition of Done for this sprint
- code implemented
- tests added or updated
- tests pass
- UX states handled
- security basics checked
- docs updated
- review completed

## Risks
| Risk | Impact | Mitigation |
|---|---|---|
| ... | ... | ... |

## Sprint review expectations
What must be demoed or verified.

## Decision status
Ready / Needs clarification / Blocked
```

---

## 5. Sprint review template

```text
# Sprint Review: Sprint [Number]

## Sprint goal
[Original goal]

## Result
Achieved / Partially achieved / Not achieved

## Completed work
- ...

## Not completed
- ...

## Demo notes
- ...

## Acceptance criteria status
| Item | Status | Notes |
|---|---|---|
| ... | Pass / Fail / Partial | ... |

## Bugs found
- ...

## Product decisions needed
- ...

## Next sprint recommendations
- ...

## Decision status
Approved / Needs revision / Blocked
```

---

## 6. Release checklist

```text
# Release Checklist: [Release Name]

## Release type
Staging / Production / Internal beta / Public MVP

## Release scope
Included:
- ...

Excluded:
- ...

## Product readiness
- [ ] Product goal is met
- [ ] MVP scope is complete
- [ ] Acceptance criteria are met
- [ ] User flow is complete
- [ ] Copy and messages are reviewed

## Technical readiness
- [ ] Code review passed
- [ ] Tests pass
- [ ] No blocker bugs remain
- [ ] No high bugs remain unless explicitly accepted
- [ ] Migrations are ready
- [ ] Environment variables are configured
- [ ] External integrations are verified

## Security readiness
- [ ] No secrets in repository
- [ ] Secrets are stored safely
- [ ] Authentication works
- [ ] Authorization works
- [ ] Inputs are validated
- [ ] Logs do not expose secrets
- [ ] Rate limits or abuse controls exist where needed

## UX readiness
- [ ] Loading states exist
- [ ] Empty states exist
- [ ] Error states are helpful
- [ ] Mobile layout works
- [ ] Accessibility basics checked

## Operations readiness
- [ ] Deployment steps documented
- [ ] Rollback plan documented
- [ ] Monitoring or logs available
- [ ] Owner is assigned
- [ ] Support or incident process is clear

## Documentation
- [ ] README updated
- [ ] Setup instructions updated
- [ ] Release notes written
- [ ] Known limitations documented

## Final decision
Approved / Approved with fixes / Blocked / Rejected
```

---

## 7. Bug tracking template

```text
# Bug Ticket

## Title
[Clear bug title]

## Severity
Blocker / High / Medium / Low

## Priority
P0 / P1 / P2 / P3

## Environment
Local / Staging / Production

## Module
[Where the bug appears]

## Reported by
[Name or role]

## Summary
[Short description]

## Steps to reproduce
1. ...
2. ...
3. ...

## Expected result
[What should happen]

## Actual result
[What happens now]

## Impact
[User, business, data, security, or delivery impact]

## Suspected cause
[If known]

## Required fix
[What must change]

## Acceptance criteria
- ...

## Regression test
[What test must be added]

## Decision status
Ready for developer / Needs clarification / Blocked
```

---

## 8. Release readiness review template

```text
# Release Readiness Review

## Decision
Approved / Approved with fixes / Blocked / Rejected

## Summary
[Short release summary]

## Release scope
[What is being released]

## Checklist status
| Area | Status | Notes |
|---|---|---|
| Product | Pass / Partial / Fail | ... |
| Code | Pass / Partial / Fail | ... |
| Tests | Pass / Partial / Fail | ... |
| UX | Pass / Partial / Fail | ... |
| Security | Pass / Partial / Fail | ... |
| Docs | Pass / Partial / Fail | ... |
| Operations | Pass / Partial / Fail | ... |

## Blockers
- ...

## Non-blocking issues
- ...

## Rollback plan
- ...

## Monitoring plan
- ...

## Final recommendation
[Release / Do not release / Release to staging only]

## Decision status
[Final decision]
```

---

## 9. Example roadmap

```text
# MVP Roadmap: Startup Intake Bot

## Product goal
Allow founders to submit startup applications through Telegram and create structured records for operator review.

## Roadmap phases

| Phase | Goal | Key deliverables | Exit criteria | Risk |
|---|---|---|---|---|
| 0. Discovery | Confirm MVP scope | Field list, roles, CRM mapping | Scope approved | Missing CRM fields |
| 1. Foundation | Create app base | Repo, config, DB, bot runtime | App runs locally | Setup delays |
| 2. Core MVP | Build intake flow | Wizard, validation, draft state | User submits application | Incomplete validation |
| 3. Integration | Sync with CRM | Adapter, field mapping, retry | CRM record created | API failure |
| 4. Review | Enable operator review | Status, notes, notification | Operator can review | Unclear workflow |
| 5. Release | Stabilize | Tests, docs, security check | Release checklist passed | Hidden bugs |
```

---

## 10. Source principles

This template follows these principles:

- Sprint Planning defines why a sprint is valuable, what can be done, and how selected work will be delivered.
- Sprint Backlog combines Sprint Goal, selected Product Backlog items, and the plan for delivery.
- Product Backlog is the single source of work and must become clear enough for selection.
- Definition of Done defines the shared quality threshold for completed work.
- Sprint Retrospective identifies improvements that can be added to the next Sprint Backlog.
- Reliable release planning requires operations, monitoring, rollback, and quality controls.

Reference URLs:

- https://scrumguides.org/scrum-guide.html
- https://learn.microsoft.com/en-us/azure/architecture/guide/design-principles/
