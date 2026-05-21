---
name: tpo-bug-tracking-template
description: technical product owner guideline module: Bug Tracking Template. preserves source checklists, templates, gates, and execution rules.
---

# Bug Tracking Template

## Purpose

Use this template to capture, classify, prioritize, assign, fix, verify, and close bugs. A good bug report should be reproducible, specific, evidence-based, and linked to product impact.

This template is designed for a Technical Product Owner Agent that controls an AI Developer Agent and maintains product quality.

---

## 1. Bug Report Metadata

| Field | Value |
|---|---|
| Bug ID |  |
| Title |  |
| Reporter |  |
| Date Reported |  |
| Product / Project |  |
| Environment | Local / Development / Staging / Production |
| Browser / Device |  |
| App Version / Commit |  |
| Status | New / Triaged / In Progress / In Review / QA / Done / Closed / Won't Fix |
| Owner |  |
| Related Feature / Story |  |
| Related Release |  |

---

## 2. Bug Summary

### Short Description

```text
What is wrong?
```

### Expected Behavior

```text
What should happen?
```

### Actual Behavior

```text
What actually happens?
```

### User Impact

```text
Who is affected and how serious is the impact?
```

---

## 3. Reproduction Steps

Write steps so another reviewer or AI Developer Agent can reproduce the bug without guessing.

1. 
2. 
3. 
4. 

### Reproducibility

| Field | Value |
|---|---|
| Reproduces Every Time? | Yes / No / Unknown |
| Frequency | Always / Often / Sometimes / Rarely |
| First Seen |  |
| Last Confirmed |  |

---

## 4. Evidence

| Evidence Type | Link / Notes |
|---|---|
| Screenshot |  |
| Screen recording |  |
| Logs |  |
| Error message |  |
| Console output |  |
| API request / response |  |
| Database record |  |
| User report |  |

---

## 5. Severity and Priority

### Severity

| Severity | Definition |
|---|---|
| S0 Critical | System down, data loss, security issue, or core workflow unavailable |
| S1 High | Major feature broken, no acceptable workaround |
| S2 Medium | Important issue with workaround |
| S3 Low | Minor defect, visual issue, edge case |
| S4 Trivial | Cosmetic or low-impact issue |

### Priority

| Priority | Definition |
|---|---|
| P0 | Fix immediately |
| P1 | Fix in current sprint or before release |
| P2 | Fix soon |
| P3 | Fix when capacity allows |
| P4 | Backlog only |

### Classification

| Field | Value |
|---|---|
| Severity | S0 / S1 / S2 / S3 / S4 |
| Priority | P0 / P1 / P2 / P3 / P4 |
| Bug Type | Functional / UX/UI / Performance / Security / Data / Integration / Accessibility / Regression |
| Customer Impact | None / Low / Medium / High |
| Release Blocker | Yes / No |
| Security Sensitive | Yes / No |

---

## 6. Triage Checklist

- [ ] Bug title is clear.
- [ ] Expected behavior is described.
- [ ] Actual behavior is described.
- [ ] Reproduction steps are included.
- [ ] Environment is specified.
- [ ] Evidence is attached.
- [ ] Severity is assigned.
- [ ] Priority is assigned.
- [ ] Owner is assigned.
- [ ] Related feature or release is linked.
- [ ] Duplicate check is complete.
- [ ] Workaround is documented if available.
- [ ] Release blocker status is set.

---

## 7. Root Cause Analysis

### Suspected Root Cause

```text

```

### Confirmed Root Cause

```text

```

### Affected Area

| Area | Affected? | Notes |
|---|---|---|
| Frontend | Yes / No / Unknown |  |
| Backend | Yes / No / Unknown |  |
| Database | Yes / No / Unknown |  |
| API | Yes / No / Unknown |  |
| Integration | Yes / No / Unknown |  |
| Authentication / Authorization | Yes / No / Unknown |  |
| Infrastructure | Yes / No / Unknown |  |
| UX Copy / UI State | Yes / No / Unknown |  |

---

## 8. Fix Plan for AI Developer Agent

Use this format when assigning the bug to the AI Developer Agent.

```markdown
# Bug Fix Task

## Bug ID

## Problem

## Expected Behavior

## Actual Behavior

## Reproduction Steps

## Evidence

## Suspected Root Cause

## Files / Modules Likely Affected

## Constraints

## Acceptance Criteria

## Test Requirements

## Regression Risk

Before changing code, provide:
1. Your understanding of the bug
2. Likely root cause
3. Fix plan
4. Files you expect to change
5. Tests you will add or update
```

---

## 9. Acceptance Criteria for Bug Fix

A bug fix can be accepted only if:

- [ ] The original bug no longer reproduces.
- [ ] Expected behavior is confirmed.
- [ ] The fix is limited to the necessary scope.
- [ ] Regression risk is reviewed.
- [ ] Relevant tests are added or updated.
- [ ] Existing tests pass.
- [ ] Related UX/UI states still work.
- [ ] No new critical warnings or errors are introduced.
- [ ] Documentation is updated if behavior changed.
- [ ] The bug is verified in the correct environment.

---

## 10. Verification

| Verification Item | Result | Evidence |
|---|---|---|
| Reproduction before fix confirmed | Pass / Fail / N/A |  |
| Fix implemented | Pass / Fail / N/A |  |
| Code reviewed | Pass / Fail / N/A |  |
| Tests added or updated | Pass / Fail / N/A |  |
| Tests pass | Pass / Fail / N/A |  |
| Verified in staging | Pass / Fail / N/A |  |
| Verified in production | Pass / Fail / N/A |  |
| Regression check complete | Pass / Fail / N/A |  |

---

## 11. Closure Notes

### Resolution

```text
Fixed / Duplicate / Cannot Reproduce / Won't Fix / By Design / Deferred
```

### Explanation

```text

```

### Follow-Up Tasks

| Task | Owner | Priority | Due Date |
|---|---|---|---|
|  |  |  |  |

### Lessons Learned

```text

```

---

## 12. Bug Dashboard Fields

Use these fields in issue trackers, project boards, or spreadsheets.

| Field | Type | Example |
|---|---|---|
| ID | Text | BUG-001 |
| Title | Text | Login button does not respond |
| Status | Select | New, Triaged, In Progress, QA, Done |
| Severity | Select | S0, S1, S2, S3, S4 |
| Priority | Select | P0, P1, P2, P3, P4 |
| Type | Select | Functional, UX/UI, Security, Performance |
| Environment | Select | Local, Dev, Staging, Production |
| Owner | Person / Agent | AI Developer Agent |
| Release Blocker | Boolean | Yes |
| Created Date | Date |  |
| Fixed Date | Date |  |
| Verified By | Person / Agent | TPO Agent |
