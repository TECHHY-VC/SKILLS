---
name: tpo-acceptance-criteria-template
description: technical product owner guideline module: Acceptance Criteria Template. preserves source checklists, templates, gates, and execution rules.
---

# Acceptance Criteria Template

**File purpose:** define how the Technical Product Owner Agent writes and reviews acceptance criteria.  
**Primary user:** Technical Product Owner Agent.  
**Output target:** clear, testable criteria that AI Developer Agent must satisfy before work can be accepted.  
**Rule:** if the acceptance criteria cannot be tested, the task is not ready.

---

## 0. Document control

| Field | Value |
|---|---|
| Feature / story name |  |
| Story ID |  |
| Epic ID |  |
| Owner |  |
| Version | 0.1 |
| Status | Draft / Ready / Approved / Rejected |
| Related PRD |  |
| Related technical specification |  |

---

## 1. User story

Use this format when the feature has a user-facing outcome:

```text
As a [persona], I want to [goal], so that [benefit].
```

If the task is technical, use this format:

```text
As the system, I need to [technical capability], so that [product or operational benefit].
```

---

## 2. Context

Explain why this story exists.

| Field | Answer |
|---|---|
| Problem solved |  |
| User or system value |  |
| Related requirement IDs |  |
| Related design or screen |  |
| Related module |  |

---

## 3. Acceptance criteria summary

| AC ID | Criterion | Type | Priority | Test method |
|---|---|---|---|---|
| AC-001 |  | Functional / UX / Security / Performance / Data / Error handling | Must / Should / Could | Manual / Automated |

---

## 4. Given / When / Then criteria

Use this structure for behavior that can be tested through examples.

```gherkin
Scenario: [Name]
Given [initial context]
When [action happens]
Then [expected result happens]
And [additional expected result]
```

### AC-001

```gherkin
Scenario:
Given
When
Then
```

### AC-002

```gherkin
Scenario:
Given
When
Then
```

---

## 5. Positive cases

| Case ID | Input / action | Expected result | AC link |
|---|---|---|---|
| POS-001 |  |  | AC-001 |

---

## 6. Negative cases

| Case ID | Invalid input / action | Expected result | AC link |
|---|---|---|---|
| NEG-001 |  |  | AC-001 |

Examples:

- Missing required field
- Invalid format
- Unauthorized user
- Expired session
- Duplicate record
- External service failure
- Network interruption

---

## 7. Edge cases

| Case ID | Edge case | Expected behavior | AC link |
|---|---|---|---|
| EDGE-001 |  |  | AC-001 |

Examples:

- Empty state
- Very long input
- Large dataset
- Slow response
- User refreshes page
- User goes back
- Concurrent update
- Partial failure

---

## 8. UX/UI acceptance criteria

| AC ID | UX/UI criterion | Evidence required |
|---|---|---|
| UX-AC-001 | Screen has default, loading, empty, error and success states where relevant. | Screenshot / demo |
| UX-AC-002 | Error messages are understandable to the target user. | Screenshot / demo |
| UX-AC-003 | User can complete the main flow without dead ends. | Demo |
| UX-AC-004 | Layout works on required screen sizes. | Screenshot / demo |

---

## 9. Data acceptance criteria

| AC ID | Data rule | Expected result | Test |
|---|---|---|---|
| DATA-AC-001 |  |  |  |

Include criteria for:

- Required fields
- Validation
- Duplicate handling
- Data storage
- Data updates
- Data deletion
- Audit trail
- Privacy-sensitive data
- Migration behavior

---

## 10. Security and permission acceptance criteria

| AC ID | Rule | Expected result | Test |
|---|---|---|---|
| SEC-AC-001 | Unauthorized users cannot access this feature. | Request is blocked. |  |
| SEC-AC-002 | Users cannot access another user's private data. | Access is denied. |  |
| SEC-AC-003 | Secrets are not exposed in logs, UI, errors or repository. | No exposure found. |  |

---

## 11. Performance and reliability acceptance criteria

| AC ID | Requirement | Target | Test |
|---|---|---|---|
| NFR-AC-001 |  |  |  |

Examples:

- Page loads under [x] seconds.
- API returns under [x] ms for [y] percentile.
- Background job retries safely.
- Failure produces recoverable state.
- Large input does not break the flow.

---

## 12. Acceptance evidence required from AI Developer Agent

The AI Developer Agent must return:

1. Implementation summary.
2. Files changed.
3. Tests added or updated.
4. Test results.
5. Screenshots or demo notes if UI changed.
6. Known limitations.
7. Assumptions made.
8. Deviations from the specification, if any.
9. Risk notes.

---

## 13. Technical Product Owner Agent review decision

| Decision | Meaning |
|---|---|
| Accepted | All Must criteria pass and no blocking issues remain. |
| Accepted with follow-up | All Must criteria pass, minor non-blocking follow-ups exist. |
| Rejected | One or more Must criteria fail or implementation deviates from scope. |
| Needs clarification | Product or technical decision is missing. |

### Review notes

```text
Decision:
Reason:
Failed criteria:
Required fixes:
Follow-up tasks:
```

---

## 14. Rework prompt for AI Developer Agent

```text
The implementation is not accepted yet.

Failed acceptance criteria:
[Insert failed AC IDs]

Required fixes:
[Insert fixes]

Constraints:
Do not change unrelated scope.
Do not remove existing working behavior.
Add or update tests for the failed criteria.

Return:
1. Summary of changes.
2. Tests run.
3. Evidence that each failed AC now passes.
```

---

## 15. Good acceptance criteria checklist

Good criteria are:

- Clear
- Testable
- Specific
- Linked to a requirement
- Written from user or system behavior
- Not implementation-heavy unless implementation is a hard constraint
- Cover positive, negative and edge cases
- Include UX/UI states when relevant
- Include permissions and data rules when relevant
- Strong enough for QA and AI Developer Agent review

---

## 16. Reference basis for this template

This template is inspired by agile user story practices, the 3 C's of user stories, behavior-driven acceptance criteria, specification by example and traceable requirements practices.
