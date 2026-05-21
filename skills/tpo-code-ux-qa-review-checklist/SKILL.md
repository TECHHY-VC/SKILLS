---
name: tpo-code-ux-qa-review-checklist
description: technical product owner guideline module: Code Ux Qa Review Checklist. preserves source checklists, templates, gates, and execution rules.
---

# 04-code-ux-qa-review-checklist.md

Version: 1.0  
Role: Technical Product Owner Agent  
Purpose: Provide one combined checklist for reviewing AI Developer Agent output across code quality, UX/UI, QA, testing, security, and release readiness.

---

## 1. Review decision

Every review must begin and end with one decision:

- Approved
- Approved with fixes
- Needs revision
- Blocked
- Rejected

Do not write "looks good" without a decision and checklist.

---

## 2. Review output template

```text
# Review: [Feature or Task]

## Decision
Approved / Approved with fixes / Needs revision / Blocked / Rejected

## Summary
Short review summary.

## Requirement fit
Does the result match the task and acceptance criteria?

## Code review
Structure, readability, maintainability, error handling.

## UX/UI review
User flow, states, copy, accessibility, feedback.

## QA and testing review
Tests, edge cases, regression risks.

## Security review
Secrets, auth, input validation, logs, rate limits.

## Issues found
Table with severity, issue, impact, required fix.

## Acceptance gate
What must be true before approval.

## Next step
What AI Developer Agent or owner must do next.

## Decision status
Final decision.
```

---

## 3. Requirement fit checklist

Pass only if:

- implementation matches the assigned task
- no unauthorized scope expansion occurred
- all in-scope items are addressed
- out-of-scope items were not implemented unnecessarily
- acceptance criteria are satisfied
- assumptions are listed
- unresolved questions are identified

Reject or return for revision if:

- implementation solves a different problem
- important behavior is missing
- result cannot be verified
- AI Developer Agent changed product direction alone

---

## 4. Code review checklist

### Structure

Check that:

- files are in correct folders
- route handlers are thin
- business logic is in services
- validation is separated
- external APIs are behind adapters
- shared utilities are not duplicated
- naming is clear and consistent

### Maintainability

Check that:

- code is easy to read
- functions are not too large
- modules have one main responsibility
- comments explain why, not obvious what
- no dead code is left
- no unused dependencies are added
- no unnecessary complexity is introduced

### Error handling

Check that:

- expected failures are handled
- user-facing errors are safe and useful
- internal errors are logged
- failed external calls do not silently disappear
- retries or failure states exist where needed
- app does not crash on invalid input

### Configuration

Check that:

- secrets are loaded from environment variables
- config is not hardcoded
- default config is safe
- setup instructions are documented

### Data

Check that:

- required fields are enforced
- data is normalized where needed
- duplicate handling is considered
- migrations are safe
- destructive operations are protected
- sensitive fields are minimized

---

## 5. UX/UI review checklist

### User flow

Check that:

- user knows what to do next
- primary action is clear
- navigation is understandable
- user can cancel or go back where appropriate
- success state is clear
- empty state is helpful
- error state explains how to recover
- irreversible actions require confirmation

### Copy

Check that:

- copy uses user language, not internal jargon
- error messages are specific
- labels are clear
- instructions are short
- critical information is visible before action
- confirmation messages explain what happens next

### Accessibility basics

Check that:

- required fields are not marked only by color
- buttons have clear labels
- contrast is acceptable
- keyboard navigation is considered
- semantic HTML is used where relevant
- form errors are associated with fields
- focus states are visible

### Performance and responsiveness

Check that:

- UI works on mobile
- loading state exists for slow operations
- layout does not jump unexpectedly
- large lists use pagination or virtualization
- images and assets are optimized where relevant

---

## 6. QA checklist

### Test coverage

Check for:

- happy path
- validation failures
- missing required fields
- permission failures
- external API failure
- retry or failure state
- empty data state
- duplicate data case
- edge case for long input
- regression test for known bug

### Manual QA

Manual verification should include:

- run app locally or in staging
- complete main user flow
- trigger validation errors
- test cancel and retry paths
- test unauthorized access
- test failed integration
- check logs
- confirm no sensitive data is exposed

### Test result requirement

AI Developer Agent must report:

```text
Tests added:
Tests run:
Result:
Failures:
Not run:
Reason:
```

If tests were not run, the agent must explain why.

---

## 7. Security checklist

### Secrets

Fail if:

- API keys are committed
- tokens are hardcoded
- private credentials are printed in logs
- sample env contains real secrets

### Authentication and authorization

Check that:

- protected actions require authentication
- role checks exist
- object-level access is enforced
- admin actions are restricted
- users cannot access other users' records

### Input validation

Check that:

- required fields are validated
- email and URL formats are checked where needed
- length limits exist for free text
- file upload rules exist if files are accepted
- unexpected input does not crash the app

### API and abuse protection

Check that:

- rate limiting is considered
- expensive actions are protected
- external calls have timeouts
- API errors do not leak internals
- sensitive business flows are protected

### Logging and privacy

Check that:

- logs help debug issues
- logs do not expose secrets
- logs avoid unnecessary personal data
- important state changes are audited

---

## 8. Interface quality criteria

Use these measurable checks where relevant.

| Area | Target |
|---|---|
| Loading performance | LCP should be 2.5 seconds or less |
| Interactivity | INP should be 200 ms or less |
| Visual stability | CLS should be 0.1 or less |
| User feedback | Action feedback should be immediate or clearly loading |
| Error recovery | Every blocking error explains how to fix it |
| Mobile | Core flow works on small screens |
| Accessibility | Required info is not conveyed by color alone |

---

## 9. Issue table template

```text
| Severity | Area | Issue | Impact | Required fix |
|---|---|---|---|---|
| Blocker | Security | API token is hardcoded | Secret exposure | Move to env and rotate token |
| High | UX | Invalid input message is vague | User cannot recover | Add specific field error |
| Medium | Code | Handler contains business logic | Hard to test | Extract service |
| Low | Docs | README missing test command | Setup friction | Add command |
```

---

## 10. Approval rules

### Approved

Use only if:

- all acceptance criteria pass
- no blocker or high issue remains
- core tests pass
- security gate passes
- release or next phase is safe

### Approved with fixes

Use if:

- only low or manageable medium issues remain
- fixes are clear
- work can proceed safely
- release is not blocked

### Needs revision

Use if:

- required behavior is missing
- tests are missing for key paths
- architecture is messy
- UX blocks user success
- medium or high issues require developer work

### Blocked

Use if:

- critical dependency is missing
- product decision is unresolved
- credentials or access are unavailable
- security issue prevents continuation

### Rejected

Use if:

- implementation is in wrong direction
- major requirements are ignored
- product or architecture must be redone

---

## 11. Example review

```text
# Review: Intake Wizard Implementation

## Decision
Needs revision

## Summary
The happy path works, but validation and persistence are mixed into the Telegram handler. This makes the code difficult to test and extend. Required validation tests are also missing.

## Requirement fit
Partial. The flow collects data, but cancel and resume behavior are incomplete.

## Code review
Issues:
- Business logic inside handler.
- Validation not reusable.
- No structured error handling.

## UX/UI review
Issues:
- Invalid email message is too vague.
- User cannot see progress through the flow.

## QA and testing review
Issues:
- No tests for invalid URL.
- No test for resume draft.

## Security review
Pass:
- No hardcoded secrets found.

Needs review:
- Text length limits are missing.

## Issues found

| Severity | Area | Issue | Impact | Required fix |
|---|---|---|---|---|
| High | Code | Handler contains business logic | Hard to test and maintain | Extract validation and submission service |
| High | QA | Missing validation tests | Regression risk | Add email, URL, required field tests |
| Medium | UX | Vague error message | User cannot recover | Add specific error copy |
| Medium | Security | Missing input length limits | Abuse risk | Add max lengths |

## Acceptance gate
Approve only when validation is extracted, tests pass, resume works, and error messages are specific.

## Decision status
Needs revision.
```

---

## 12. Source principles

This checklist follows these principles:

- Code review should improve code health, readability, maintainability, and understandability.
- Reviews should use technical facts and standards over personal preference.
- UX should keep users informed, use familiar language, support undo or exit, maintain consistency, prevent errors, and help users recover.
- APIs must address object-level authorization, authentication, resource consumption, function-level authorization, security misconfiguration, and unsafe third-party API use.
- Web UX quality can be measured through loading, interactivity, and visual stability.

Reference URLs:

- https://google.github.io/eng-practices/review/reviewer/standard.html
- https://www.nngroup.com/articles/ten-usability-heuristics/
- https://owasp.org/API-Security/editions/2023/en/0x11-t10/
- https://web.dev/articles/vitals
