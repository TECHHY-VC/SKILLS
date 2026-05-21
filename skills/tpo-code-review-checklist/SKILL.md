---
name: tpo-code-review-checklist
description: technical product owner guideline module: Code Review Checklist. preserves source checklists, templates, gates, and execution rules.
---

# Code Review Checklist

## Purpose

This checklist defines how the Technical Product Owner Agent should review code produced by a human developer or an AI Developer Agent.

The goal of code review is to protect the long-term health of the codebase while still allowing progress. The reviewer should not demand perfect code, but should reject code that weakens maintainability, security, correctness, product quality, or architectural consistency.

## Inputs required before review

Before reviewing, collect:

- original task or ticket
- product requirement or technical specification
- acceptance criteria
- affected files
- implementation summary
- test summary
- known limitations from the developer
- screenshots or recordings for UI changes
- migration notes for database changes
- API contract notes for API changes

If these inputs are missing, request them before approving the work.

## Review decision types

### Approve

Use only when the implementation satisfies the task, passes quality gates, and does not introduce unacceptable risk.

### Request changes

Use when the implementation has blockers or must-fix issues.

### Comment

Use when the implementation is mostly acceptable but needs clarification, minor improvement, or follow-up.

### Nit

Use only for small style or polish issues that should not block delivery.

## Severity levels

### Blocker

The result cannot be merged or accepted.

Examples:

- requirement not implemented
- security vulnerability
- broken critical flow
- data corruption risk
- missing authorization
- failing tests
- migration can break production data

### Must fix

The result can be understood but must be corrected before acceptance.

Examples:

- missing edge case
- unclear error handling
- incomplete UX state
- weak test coverage for changed behavior
- inconsistent API response format

### Should fix

Improvement recommended before merge or in immediate follow-up.

Examples:

- refactor for readability
- reduce duplication
- improve naming
- add documentation for non-obvious behavior

### Nit

Optional polish.

Examples:

- small wording issue
- minor formatting issue not covered by tooling
- small naming preference with no functional risk

## Review checklist

### 1. Requirement fit

Check:

- Does the implementation solve the requested problem?
- Does it match the acceptance criteria?
- Are all required user flows covered?
- Did the developer add unrelated features?
- Did the developer ignore any constraints?
- Is the output aligned with the technical specification?

Reject if the code is technically good but solves the wrong problem.

### 2. Architecture fit

Check:

- Does the change respect existing module boundaries?
- Is business logic placed in the correct layer?
- Are data access concerns separated from business rules?
- Is UI logic separated from backend logic?
- Are integrations isolated behind clear adapters or services?
- Does the implementation avoid unnecessary framework or dependency changes?
- Can the module be extended without rewriting unrelated parts?

Reject if the implementation creates architectural disorder.

### 3. Readability and maintainability

Check:

- Are names clear?
- Are functions focused?
- Is the logic easy to follow?
- Is there excessive nesting?
- Is there unnecessary abstraction?
- Is there duplicated logic that should be centralized?
- Are comments useful and not noisy?
- Can another developer modify the code safely?

### 4. Correctness

Check:

- Does the implementation handle normal cases?
- Does it handle edge cases?
- Does it handle empty, null, invalid, duplicate, and boundary inputs?
- Does it handle failed dependencies?
- Does it handle retries or repeated user actions when relevant?
- Are calculations, dates, time zones, currencies, and rounding handled correctly?
- Are asynchronous operations handled safely?

### 5. Tests

Check:

- Are unit tests included for business logic?
- Are integration tests included for important service boundaries?
- Are API tests included for changed endpoints?
- Are UI tests or component tests included where appropriate?
- Are e2e tests included for critical flows?
- Are tests readable and named clearly?
- Do tests cover edge cases?
- Do tests avoid brittle implementation details?
- Did the developer report test commands and results?

Reject if core behavior is not testable or not tested.

### 6. Security

Check:

- Are inputs validated?
- Are outputs encoded or safely rendered?
- Is authentication required where needed?
- Is authorization checked at the correct layer?
- Are object-level permissions enforced?
- Are secrets excluded from code, logs, and errors?
- Is sensitive data minimized?
- Are dependencies safe and necessary?
- Are file uploads, redirects, webhooks, and external calls protected?
- Are rate limits or abuse controls needed?
- Are error messages safe?

Reject if security is uncertain in a sensitive flow.

### 7. Data and database safety

Check:

- Are migrations included?
- Are constraints correct?
- Are indexes added for new query patterns?
- Is the migration safe for existing production data?
- Is rollback or recovery documented?
- Are transactions used for multi-step writes?
- Are delete operations safe?
- Are uniqueness and referential integrity enforced?
- Are data retention and privacy implications considered?

### 8. API quality

Check:

- Are endpoint names consistent?
- Are request and response schemas explicit?
- Are errors consistent?
- Are status codes appropriate?
- Is pagination present for collections?
- Are sorting and filtering rules documented?
- Is idempotency handled for risky operations?
- Are breaking changes versioned or coordinated?

### 9. Frontend and UX quality

Check:

- Does the UI match the intended user flow?
- Are loading, empty, error, success, and disabled states handled?
- Are forms validated before submission?
- Are error messages understandable?
- Is the interface accessible by keyboard?
- Are semantic elements used where possible?
- Does the interface work on required screen sizes?
- Are visual states consistent with the design system?
- Does the UI avoid unnecessary complexity?

### 10. Performance and reliability

Check:

- Are expensive operations avoided in hot paths?
- Are database queries efficient?
- Are list endpoints paginated?
- Are unnecessary re-renders avoided?
- Are external calls timed out or retried safely?
- Are background jobs idempotent where needed?
- Are failures logged with useful context?
- Are monitoring or metrics needed?

### 11. Documentation

Check:

- Is README updated if setup changed?
- Are environment variables documented?
- Are API changes documented?
- Are migration steps documented?
- Are operational risks documented?
- Are user-facing changes reflected in product notes if needed?

## AI Developer Agent review output template

Use this structure when reviewing work:

```text
# Code Review Result

## Decision
Approve / Request changes / Comment

## Summary
Short explanation of the review result.

## Requirement match
- Passed:
- Missing:
- Unclear:

## Blockers
1.
2.

## Must-fix issues
1.
2.

## Should-fix improvements
1.
2.

## Security review
- Passed:
- Risks:
- Required changes:

## Test review
- Tests present:
- Tests missing:
- Commands verified:

## UX/UI review
- Passed:
- Issues:
- Required changes:

## Final instruction to AI Developer Agent
Specific next action.
```

## Review rules for the TPO Agent

1. Do not approve code only because it compiles.
2. Do not approve code without checking requirement fit.
3. Do not approve untested business logic.
4. Do not approve unclear authorization.
5. Do not approve hardcoded secrets.
6. Do not approve database changes without migration review.
7. Do not approve UI changes without checking user states.
8. Do not ask for subjective style changes unless they are covered by the project standard.
9. Distinguish blockers from nits.
10. Convert every rejection into a clear correction task.

## References

- Google Engineering Practices: The Standard of Code Review
- Google Engineering Practices: What to Look For in a Code Review
- Microsoft Learn: Unit Testing Best Practices
- OWASP Secure Coding Practices Quick Reference Guide
