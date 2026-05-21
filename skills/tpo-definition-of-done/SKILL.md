---
name: tpo-definition-of-done
description: technical product owner guideline module: Definition Of Done. preserves source checklists, templates, gates, and execution rules.
---

# Definition of Done

**File purpose:** define when work is complete and can be accepted by the Technical Product Owner Agent.  
**Primary user:** Technical Product Owner Agent.  
**Output target:** consistent product, code, UX/UI, QA and release quality.  
**Rule:** work is not Done if it does not meet the agreed quality bar, even if code was written.

---

## 1. Definition

A work item is Done when the implementation satisfies the acceptance criteria, meets the required quality standards, is tested, documented where needed, reviewed for UX/UI and technical quality, and is safe to release or merge according to the project context.

Done means completed to the agreed product quality level. It does not mean merely "implemented".

---

## 2. Applies to

Use this Definition of Done for:

- User stories
- Technical tasks
- Bug fixes
- UX/UI implementation
- API work
- Data model changes
- Refactoring
- AI Developer Agent outputs
- Sprint or release acceptance

---

## 3. Core Done checklist

A work item is Done only when all Must items are true.

| Check | Must? | Status | Evidence |
|---|---:|---|---|
| Acceptance criteria pass | Yes | Pass / Fail |  |
| Scope matches approved task | Yes | Pass / Fail |  |
| No unrelated changes | Yes | Pass / Fail |  |
| Code is readable and maintainable | Yes | Pass / Fail |  |
| Architecture boundaries are respected | Yes | Pass / Fail |  |
| Tests are added or updated | Yes | Pass / Fail |  |
| Tests pass | Yes | Pass / Fail |  |
| UX/UI states work if UI is involved | Yes | Pass / Fail |  |
| Error handling is implemented | Yes | Pass / Fail |  |
| Security and permissions are respected | Yes | Pass / Fail |  |
| Data validation is implemented | Yes | Pass / Fail |  |
| Logging does not expose secrets or private data | Yes | Pass / Fail |  |
| Documentation is updated where needed | Yes | Pass / Fail |  |
| Known limitations are documented | Yes | Pass / Fail |  |
| Technical Product Owner Agent has reviewed the result | Yes | Pass / Fail |  |

---

## 4. Product completion

Confirm:

- The delivered behavior solves the approved problem.
- The delivered behavior matches the PRD.
- The delivered behavior matches acceptance criteria.
- The implementation does not introduce unapproved product behavior.
- Out-of-scope items were not added.
- User-facing copy is understandable.
- The feature can be demonstrated.

### Product acceptance notes

```text
Product decision:
Accepted / Rejected / Accepted with follow-up

Reason:
[Explain]

Follow-up items:
[List]
```

---

## 5. Code quality completion

Confirm:

- Code is simple enough for future maintenance.
- Naming is clear.
- Duplication is avoided or justified.
- Module boundaries are respected.
- No dead code remains.
- No debug-only code remains.
- No hardcoded secrets exist.
- Errors are handled intentionally.
- Important logic is covered by tests.
- Changes are limited to the approved scope.

### Code review checklist

| Check | Status | Notes |
|---|---|---|
| Readable structure | Pass / Fail |  |
| Good naming | Pass / Fail |  |
| No unrelated files changed | Pass / Fail |  |
| No hidden side effects | Pass / Fail |  |
| No hardcoded secrets | Pass / Fail |  |
| No avoidable duplication | Pass / Fail |  |
| Handles failure cases | Pass / Fail |  |
| Tests cover important paths | Pass / Fail |  |

---

## 6. Architecture completion

Confirm:

- Implementation follows the technical specification.
- Dependencies are intentional.
- Data ownership is clear.
- API contracts are respected.
- Architecture decision records are updated if needed.
- Technical debt is documented if accepted.

### Architecture review notes

```text
Architecture accepted:
Yes / No

Deviation from spec:
[None or describe]

Accepted technical debt:
[None or describe]
```

---

## 7. UX/UI completion

If the task changes UI, confirm:

| Check | Status | Evidence |
|---|---|---|
| Main flow works | Pass / Fail |  |
| Loading state works | Pass / Fail |  |
| Empty state works | Pass / Fail |  |
| Error state works | Pass / Fail |  |
| Success state works | Pass / Fail |  |
| Form validation is clear | Pass / Fail |  |
| Layout works on required screen sizes | Pass / Fail |  |
| Copy is understandable | Pass / Fail |  |
| No visual breakage in adjacent components | Pass / Fail |  |

---

## 8. Testing completion

### Required test evidence

AI Developer Agent must provide:

- Test files added or changed.
- Test command run.
- Test result summary.
- Manual test notes if UI or workflow changed.
- Screenshots or demo notes if relevant.

### Test coverage by type

| Test type | Required? | Status | Notes |
|---|---:|---|---|
| Unit | Yes / No | Pass / Fail / N/A |  |
| Integration | Yes / No | Pass / Fail / N/A |  |
| E2E | Yes / No | Pass / Fail / N/A |  |
| Manual QA | Yes / No | Pass / Fail / N/A |  |
| Security check | Yes / No | Pass / Fail / N/A |  |
| Regression check | Yes / No | Pass / Fail / N/A |  |

---

## 9. Security and data completion

Confirm:

- Authorization rules are enforced.
- Users cannot access data they should not access.
- Sensitive data is not exposed in UI, logs or errors.
- Inputs are validated.
- External data is treated as untrusted.
- Secrets are not committed.
- Data migrations are reversible or have a recovery plan.
- Privacy-sensitive data has an owner and retention rule.

---

## 10. Documentation completion

Update documentation when the work changes:

- Product behavior
- Technical architecture
- API contract
- Setup instructions
- Environment variables
- Data model
- Runbook or operations procedure
- Known limitations

| Document | Update required? | Status |
|---|---:|---|
| PRD | Yes / No |  |
| Technical spec | Yes / No |  |
| API docs | Yes / No |  |
| README | Yes / No |  |
| Runbook | Yes / No |  |
| Changelog | Yes / No |  |

---

## 11. Release readiness

For release-level Done, confirm:

- All included stories are Done.
- Blocker bugs are resolved.
- Known issues are documented.
- Rollback plan exists if needed.
- Monitoring is in place if needed.
- Stakeholders know what changed.
- Deployment steps are clear.
- Post-release validation plan exists.

---

## 12. Not Done conditions

Work is not Done if any of the following is true:

- Acceptance criteria fail.
- Must requirement is missing.
- Implementation changed unrelated scope.
- Tests are missing without explanation.
- Security risk is unresolved.
- UX flow has dead ends.
- Error states are missing.
- Data validation is incomplete.
- Implementation deviates from approved architecture without approval.
- AI Developer Agent cannot explain what changed.
- Evidence is insufficient for review.

---

## 13. AI Developer Agent completion report

AI Developer Agent must return this report after implementation:

```text
Completion report

Task:
[Task ID and name]

Summary:
[What was implemented]

Files changed:
[List]

Acceptance criteria status:
[AC-001 Pass / Fail / Notes]

Tests:
[Commands run and results]

UX/UI evidence:
[Screenshots or notes if relevant]

Security/data notes:
[Notes]

Assumptions:
[Assumptions made]

Deviations:
[Any deviation from PRD or technical spec]

Known limitations:
[List]

Ready for review:
Yes / No
```

---

## 14. Technical Product Owner Agent final review

```text
Final review

Decision:
Accepted / Rejected / Accepted with follow-up

Reason:
[Explain]

Failed checks:
[List]

Required fixes:
[List]

Follow-up backlog items:
[List]

Release notes:
[Optional]
```

---

## 15. Reference basis for this document

This Definition of Done is based on Scrum quality principles: the Increment must meet the Definition of Done, the Definition of Done creates shared understanding of completed work, and work that does not meet it should not be considered part of the releasable increment. It is adapted for AI-supervised delivery with extra checks for prompt scope, code quality, UX/UI, evidence and review control.
