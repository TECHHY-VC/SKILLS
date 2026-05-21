---
name: tpo-testing-guidelines
description: technical product owner guideline module: Testing Guidelines. preserves source checklists, templates, gates, and execution rules.
---

# Testing Guidelines

## Purpose

This document defines testing expectations for projects supervised by the Technical Product Owner Agent.

Testing is not only a QA step. Testing is part of product quality, code quality, design quality, regression protection, and release confidence.

## Testing goals

Tests must help the team answer:

- Does the feature work according to requirements?
- Does the code behave correctly in edge cases?
- Did the change break existing behavior?
- Can the system be refactored safely?
- Are important user flows protected?
- Are API contracts stable?
- Are security-sensitive flows protected?
- Can the project be released with confidence?

## Testing levels

### 1. Unit tests

Purpose: verify isolated business logic.

Use unit tests for:

- pure functions
- validators
- services
- permissions logic
- calculations
- formatting
- mapping functions
- state reducers
- small domain rules

Unit tests should be:

- fast
- isolated
- repeatable
- self-checking
- readable

### 2. Integration tests

Purpose: verify that components work together.

Use integration tests for:

- service plus database
- API route plus validation plus service
- third-party adapter with mocked external service
- authentication flow
- repository layer
- background job processing

### 3. API or contract tests

Purpose: verify request and response behavior.

Use for:

- endpoint schemas
- status codes
- error format
- authentication behavior
- authorization behavior
- pagination
- filtering
- idempotency
- backward compatibility

### 4. UI component tests

Purpose: verify component behavior.

Use for:

- form validation
- conditional rendering
- interactive controls
- loading states
- error states
- accessibility behavior
- user interactions

### 5. End-to-end tests

Purpose: verify critical user journeys.

Use e2e tests for:

- signup and login
- onboarding
- checkout or payment
- lead submission
- document upload
- admin approval
- core dashboard flows
- critical operator workflows

Do not overuse e2e tests for every small condition. They are slower and more fragile than unit and integration tests.

### 6. Security tests

Purpose: verify protection of sensitive flows.

Use security tests for:

- authorization boundaries
- object-level access control
- injection attempts
- unsafe redirects
- file upload restrictions
- CSRF where relevant
- rate limiting
- authentication failures
- webhook signature validation

### 7. Performance tests

Purpose: verify that critical flows are fast enough under expected conditions.

Use performance tests for:

- expensive queries
- high-traffic endpoints
- dashboard loading
- background processing
- bulk import/export
- search
- reporting

## Test structure

Use Arrange, Act, Assert.

```text
Arrange: prepare input, dependencies, state, and system under test.
Act: execute the behavior being tested.
Assert: verify the expected result.
```

A test should make it obvious:

- what is being tested
- under what scenario
- what result is expected

## Test naming

Use descriptive names.

Recommended structure:

```text
methodOrFeature_scenario_expectedResult
```

Examples:

```text
createSession_validCredentials_returnsSessionToken
submitDeal_missingPitchDeck_returnsValidationError
calculateScore_highTraction_increasesFinalScore
```

Avoid:

```text
test1
works
should pass
check user
```

## Good test characteristics

A good test is:

- fast
- isolated
- repeatable
- self-checking
- deterministic
- readable
- focused on behavior
- not dependent on test order
- not dependent on external services unless it is an integration test
- clear when it fails

## What must be tested

### New feature

Required:

- happy path
- validation failures
- authorization failure
- important edge cases
- persistence behavior if data is saved
- API behavior if endpoint is involved
- UI states if interface is involved

### Bug fix

Required:

- regression test that fails before the fix and passes after the fix
- confirmation that related behavior still works

### Refactor

Required:

- existing tests must pass
- add characterization tests if behavior was previously untested
- no behavior change unless explicitly required

### Database migration

Required:

- migration applies cleanly
- migration handles existing data
- rollback or recovery path is documented
- indexes and constraints are checked
- application code remains compatible

### Security-sensitive change

Required:

- authentication tests
- authorization tests
- invalid input tests
- logging and error safety review
- dependency or configuration review where relevant

## Coverage guidance

Coverage is useful, but coverage alone does not prove quality.

Do not optimize for a coverage number while ignoring important behavior.

The TPO Agent should ask:

- Are critical paths covered?
- Are edge cases covered?
- Are failure modes covered?
- Are authorization rules covered?
- Are tests meaningful, or do they only execute code?
- Would the tests fail if the feature broke?

## Test data

Use clear, minimal test data.

Avoid massive fixtures unless necessary.

Test data should:

- make the scenario obvious
- avoid real user data
- avoid production secrets
- be reusable only when it does not hide test intent
- not depend on current date/time unless controlled

## Mocking and test doubles

Use mocks and stubs carefully.

Mock external dependencies when:

- the dependency is slow
- the dependency is unreliable
- the dependency has cost
- the dependency cannot be used in CI
- the test should focus on internal behavior

Avoid over-mocking internal implementation details. Prefer testing behavior.

## Flaky tests

A flaky test is a quality issue.

If a test fails unpredictably:

- identify the source
- isolate time, randomness, network, concurrency, or shared state
- fix the test or the underlying code
- do not ignore it
- do not rerun until green as a substitute for fixing it

## CI requirements

Every pull request should run:

- install or dependency check
- lint
- type check if applicable
- unit tests
- integration tests if practical
- build
- security/dependency scan where available

Critical branches should not accept changes when required checks fail.

## AI Developer Agent testing output

The AI Developer Agent must provide:

```text
## Tests added
List new tests.

## Tests updated
List changed tests.

## Commands run
Exact commands.

## Results
Pass or fail summary.

## Coverage notes
Critical paths covered and not covered.

## Not tested
What was not tested and why.

## Manual verification
Screenshots, steps, or recordings if UI is involved.
```

## TPO Agent testing checklist

Before accepting implementation, verify:

- Tests exist for changed business logic.
- Tests match acceptance criteria.
- Tests cover edge cases.
- Tests do not rely on external services unless intended.
- Tests are readable.
- Tests would fail if the implementation broke.
- Tests are included in CI or there is a plan to include them.
- The AI Developer Agent reported commands and results.
- Manual verification is included for UI changes.

## References

- Microsoft Learn: Unit Testing Best Practices
- NIST SP 800-218 Secure Software Development Framework
- OWASP Secure Coding Practices Quick Reference Guide
