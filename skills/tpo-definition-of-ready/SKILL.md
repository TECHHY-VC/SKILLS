---
name: tpo-definition-of-ready
description: technical product owner guideline module: Definition Of Ready. preserves source checklists, templates, gates, and execution rules.
---

# Definition of Ready

**File purpose:** define when a task, story or epic is ready to be given to AI Developer Agent.  
**Primary user:** Technical Product Owner Agent.  
**Output target:** prevent vague, incomplete or risky tasks from entering development.  
**Rule:** if a task does not meet Definition of Ready, the Technical Product Owner Agent must refine it before development starts.

---

## 1. Definition

A backlog item is Ready when it is clear enough, small enough, testable enough and technically understood enough for implementation to begin without major unresolved product or architecture decisions.

Ready does not mean perfect. Ready means the team or AI Developer Agent can start execution with controlled risk.

---

## 2. Applies to

Use this Definition of Ready for:

- Epics
- User stories
- Technical tasks
- Bug fixes
- UX/UI implementation tasks
- Refactoring tasks
- AI Developer Agent prompts

---

## 3. Ready checklist for any work item

A work item is Ready only when all Must items are true.

| Check | Must? | Status | Notes |
|---|---:|---|---|
| Goal is clear | Yes | Pass / Fail |  |
| User or system value is clear | Yes | Pass / Fail |  |
| Scope is clear | Yes | Pass / Fail |  |
| Out of scope is clear | Yes | Pass / Fail |  |
| Requirement IDs are linked | Yes | Pass / Fail |  |
| Acceptance criteria exist | Yes | Pass / Fail |  |
| Acceptance criteria are testable | Yes | Pass / Fail |  |
| Priority is defined | Yes | Pass / Fail |  |
| Dependencies are identified | Yes | Pass / Fail |  |
| Blockers are resolved or explicitly accepted | Yes | Pass / Fail |  |
| UX/UI expectations are defined if UI is involved | Yes | Pass / Fail |  |
| Data and integration needs are defined if relevant | Yes | Pass / Fail |  |
| Security and permission expectations are defined if relevant | Yes | Pass / Fail |  |
| Technical approach is clear enough | Yes | Pass / Fail |  |
| Task is small enough for controlled implementation | Yes | Pass / Fail |  |
| AI Developer Agent prompt is specific | Yes | Pass / Fail |  |

---

## 4. Product readiness

Before development starts, confirm:

- The problem is understood.
- The target user or system actor is known.
- The intended outcome is stated.
- Success can be recognized.
- Priority is clear.
- Trade-offs are known.
- Out-of-scope items are explicit.
- The task does not contain hidden unrelated work.

### Product readiness questions

| Question | Answer |
|---|---|
| What user or system problem does this solve? |  |
| Why is this needed now? |  |
| What is the expected outcome? |  |
| What is not included? |  |
| What will make this successful? |  |

---

## 5. Technical readiness

Before development starts, confirm:

- Affected modules are known.
- Technical constraints are known.
- Architecture impact is understood.
- Data model impact is understood.
- API or interface changes are identified.
- Migration needs are identified.
- External dependency risk is identified.
- Testing approach is clear.
- Rollback or recovery is considered if relevant.

### Technical readiness questions

| Question | Answer |
|---|---|
| Which modules are affected? |  |
| Which files or layers are likely affected? |  |
| Are there API changes? |  |
| Are there database changes? |  |
| Are there integration changes? |  |
| Are there security implications? |  |
| What tests are required? |  |
| What could break? |  |

---

## 6. UX/UI readiness

If the task touches user interface, confirm:

- Required screen or component is named.
- User flow is described.
- Design reference exists or layout expectations are described.
- Required states are listed.
- Error messages are defined or rule for writing them is clear.
- Responsive behavior is defined if relevant.
- Accessibility expectations are defined.

### Required UI states

| State | Required? | Notes |
|---|---:|---|
| Default | Yes / No |  |
| Loading | Yes / No |  |
| Empty | Yes / No |  |
| Error | Yes / No |  |
| Success | Yes / No |  |
| Disabled | Yes / No |  |

---

## 7. Acceptance readiness

A task is not ready if acceptance criteria are only vague statements like:

- "Works correctly"
- "Looks good"
- "Make it better"
- "Fix all issues"
- "Improve UX"
- "Refactor code"

Replace vague criteria with testable criteria.

### Acceptance readiness checklist

| Check | Status |
|---|---|
| Positive case is defined | Pass / Fail |
| Negative case is defined where relevant | Pass / Fail |
| Edge case is defined where relevant | Pass / Fail |
| Permission behavior is defined where relevant | Pass / Fail |
| Data validation is defined where relevant | Pass / Fail |
| UX states are defined where relevant | Pass / Fail |
| Evidence required from AI Developer Agent is defined | Pass / Fail |

---

## 8. AI Developer Agent readiness

Before giving a task to AI Developer Agent, the prompt must include:

- Role
- Goal
- Scope
- Out of scope
- Repository or stack context
- Affected modules if known
- Requirements
- Acceptance criteria
- Constraints
- Tests required
- Expected output format

### Ready prompt structure

```text
You are AI Developer Agent.

Task:
[Specific task]

Goal:
[Why this matters]

Scope:
[What to build]

Out of scope:
[What not to touch]

Technical context:
[Stack, modules, repo notes]

Acceptance criteria:
[AC list]

Tests required:
[Test expectations]

Return:
1. Implementation summary.
2. Files changed.
3. Tests added or updated.
4. Test results.
5. Risks or assumptions.
```

---

## 9. Ready decision

| Decision | Meaning | Action |
|---|---|---|
| Ready | Work can start. | Send to AI Developer Agent. |
| Ready with risk | Work can start but risk is explicit. | Add risk note and monitor closely. |
| Not ready | Work should not start. | Refine requirements, design or technical spec. |
| Blocked | External decision or dependency is missing. | Escalate or wait. |

### Decision record

```text
Decision:
Reason:
Risks:
Missing items:
Owner:
Next action:
```

---

## 10. Red flags

Do not send the task to development if:

- The task combines multiple unrelated goals.
- Acceptance criteria are missing.
- The user flow is unclear.
- The technical boundary is unclear.
- The task requires architectural decisions that were not made.
- The task may expose sensitive data without security review.
- The task depends on unavailable credentials, APIs or designs.
- The expected result cannot be tested.
- AI Developer Agent would need to invent product behavior.

---

## 11. Reference basis for this document

This Definition of Ready is based on agile backlog refinement practice: backlog items should be clear, small, testable and understood enough to be selected for implementation. It is adapted for AI-supervised delivery where prompt clarity, scope control and acceptance criteria are critical.
