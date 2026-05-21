---
name: tpo-sprint-planning-template
description: technical product owner guideline module: Sprint Planning Template. preserves source checklists, templates, gates, and execution rules.
---

# Sprint Planning Template

## Purpose

Use this template to plan a focused development sprint. A sprint plan must define the sprint goal, selected backlog items, implementation approach, acceptance criteria, risks, capacity, and review process.

This template is designed for a Technical Product Owner Agent that supervises an AI Developer Agent.

---

## 1. Sprint Metadata

| Field | Value |
|---|---|
| Sprint Name / Number |  |
| Product / Project |  |
| Sprint Dates |  |
| Sprint Duration |  |
| Sprint Owner |  |
| TPO Agent |  |
| AI Developer Agent |  |
| Sprint Status | Draft / Planned / Active / Review / Closed |
| Related Roadmap Phase |  |
| Related Release |  |

---

## 2. Sprint Goal

The sprint goal should explain why this sprint matters, not only what tasks will be done.

```text
The goal of this sprint is to...
```

Good sprint goals are:
- specific
- outcome-oriented
- realistic for team capacity
- connected to the roadmap
- stable enough to guide trade-offs during the sprint

---

## 3. Sprint Inputs

| Input | Location / Link | Status |
|---|---|---|
| Product Requirements |  | Ready / Not Ready |
| Technical Specification |  | Ready / Not Ready |
| Architecture Plan |  | Ready / Not Ready |
| UX/UI Design |  | Ready / Not Ready |
| Product Backlog |  | Ready / Not Ready |
| Bug List |  | Ready / Not Ready |
| Previous Sprint Review |  | Ready / Not Ready |
| Capacity Notes |  | Ready / Not Ready |
| Release Target |  | Ready / Not Ready |

---

## 4. Capacity Planning

| Contributor / Agent | Availability | Constraints | Notes |
|---|---|---|---|
| TPO Agent |  |  |  |
| AI Developer Agent |  |  |  |
| UX/UI Reviewer |  |  |  |
| QA / Test Agent |  |  |  |
| Code Review Agent |  |  |  |
| Human Reviewer |  |  |  |

### Capacity Assumptions

```text
Assumptions:
```

### Capacity Risks

```text
Risks:
```

---

## 5. Selected Backlog Items

| ID | Backlog Item | Type | Priority | Estimate | Owner | Status |
|---|---|---|---|---|---|---|
|  |  | Feature / Bug / Tech Debt / Research | P0 / P1 / P2 / P3 |  |  |  |

---

## 6. Work Decomposition

Each selected backlog item must be decomposed into tasks small enough to implement, review, and test.

| Backlog Item | Task | Implementation Notes | Expected Files / Modules | Acceptance Criteria |
|---|---|---|---|---|
|  |  |  |  |  |

---

## 7. AI Developer Agent Assignment Template

Use this format when giving work to the AI Developer Agent.

```markdown
# Task for AI Developer Agent

## Context

## Objective

## Scope

### In Scope

### Out of Scope

## Files / Modules Likely Affected

## Technical Constraints

## UX/UI Requirements

## Data / API Requirements

## Acceptance Criteria

## Testing Requirements

## Documentation Requirements

## Expected Output

Before implementation, provide:
1. Understanding of the task
2. Implementation plan
3. Files you expect to change
4. Risks or assumptions

Do not start coding until the plan is reviewed.
```

---

## 8. Sprint Risk Register

| Risk | Type | Impact | Probability | Mitigation | Owner |
|---|---|---|---|---|---|
|  | Scope / Technical / UX / Dependency / Security | Low / Medium / High | Low / Medium / High |  |  |

---

## 9. Daily Control Loop

The TPO Agent should check progress using this loop:

1. What was completed since the last check?
2. What is currently being worked on?
3. Is the work still aligned with the sprint goal?
4. Are there blockers?
5. Did scope change?
6. Did risk increase?
7. Is quality still acceptable?
8. Does the AI Developer Agent need correction?
9. Should any task be split, deferred, or returned for rework?

### Daily Status Format

```markdown
## Daily Sprint Status

### Completed

### In Progress

### Blocked

### Risks

### Decisions Needed

### Changes to Sprint Backlog

### Next Actions
```

---

## 10. Mid-Sprint Review

Use this section to prevent late surprises.

| Review Area | Question | Result |
|---|---|---|
| Scope | Is the sprint still realistic? | Pass / Warning / Fail |
| Architecture | Is implementation following the approved architecture? | Pass / Warning / Fail |
| Code Quality | Is code readable, modular, and maintainable? | Pass / Warning / Fail |
| UX/UI | Does the interface match the intended user flow? | Pass / Warning / Fail |
| Tests | Are tests being added early enough? | Pass / Warning / Fail |
| Security | Are security risks being controlled? | Pass / Warning / Fail |
| Release | Is the sprint output potentially releasable? | Pass / Warning / Fail |

---

## 11. Sprint Review

At the end of the sprint, inspect the completed work.

### Completed Items

| Item | Demo / Evidence | Acceptance Result | Notes |
|---|---|---|---|
|  |  | Accepted / Rejected / Needs Fixes |  |

### Not Completed Items

| Item | Reason | Next Action |
|---|---|---|
|  |  | Return to backlog / Move to next sprint / Split / Cancel |

### Quality Review

- [ ] All accepted work meets acceptance criteria.
- [ ] All accepted work meets Definition of Done.
- [ ] UX/UI is usable and consistent.
- [ ] Code review is complete.
- [ ] Tests pass.
- [ ] Documentation is updated.
- [ ] Security issues are resolved or logged.
- [ ] Known bugs are logged.
- [ ] Technical debt is logged.

---

## 12. Sprint Retrospective

### What went well?

```text

```

### What did not go well?

```text

```

### What should change next sprint?

```text

```

### Action Items

| Action | Owner | Due Date | Success Signal |
|---|---|---|---|
|  |  |  |  |

---

## 13. Sprint Approval

| Role | Decision | Notes |
|---|---|---|
| TPO Agent | Approved / Rejected / Needs Changes |  |
| Product Owner | Approved / Rejected / Needs Changes |  |
| Technical Reviewer | Approved / Rejected / Needs Changes |  |
| QA Reviewer | Approved / Rejected / Needs Changes |  |
