---
name: tpo-coding-standards
description: technical product owner guideline module: Coding Standards. preserves source checklists, templates, gates, and execution rules.
---

# Coding Standards

## Purpose

This document defines baseline coding standards for projects supervised by the Technical Product Owner Agent. It is technology-neutral by default and should be adapted to the actual stack when a project uses a specific language, framework, database, or deployment target.

The goal is not to force stylistic perfection. The goal is to keep the codebase understandable, maintainable, testable, secure, and easy for human or AI developers to extend without breaking existing behavior.

## Role of the Technical Product Owner Agent

The TPO Agent must use this document to:

1. Set coding expectations before assigning work to an AI Developer Agent.
2. Check whether implementation quality is acceptable.
3. Reject work that is technically fragile, unclear, untested, insecure, or inconsistent with the repository.
4. Convert quality issues into specific follow-up tasks.
5. Maintain a consistent standard across backend, frontend, database, API, infrastructure, and test code.

## Core principles

### 1. Code must be readable before it is clever

Prefer simple, explicit, understandable code over clever abstractions.

Code should be readable by a developer who did not write it. If the implementation requires hidden assumptions, undocumented behavior, or complex mental reconstruction, it should be refactored or documented.

### 2. Keep changes small and focused

Each task should solve one clear problem.

Avoid mixing unrelated changes, such as a feature, refactor, dependency upgrade, formatting rewrite, and bug fix in one implementation. If multiple changes are necessary, split them into separate tasks or commits.

### 3. Match the existing codebase

Follow the existing structure, naming, formatting, and architecture unless the task explicitly asks for a structural improvement.

The AI Developer Agent must not introduce a new framework, folder pattern, state management approach, database library, or build tool without approval.

### 4. Prefer explicit contracts

Interfaces, DTOs, API schemas, validation schemas, database models, environment variables, and expected outputs must be explicit.

Do not rely on undocumented implicit behavior.

### 5. Every important behavior must be testable

New business logic must be designed so it can be tested without excessive infrastructure. If the code is hard to test, the design probably needs improvement.

### 6. Security is part of normal development

Security must not be postponed until the end. Input validation, authorization, secrets management, safe error handling, dependency hygiene, and secure defaults are part of the coding standard.

### 7. Do not hide technical debt

Temporary shortcuts must be clearly marked and tracked.

A shortcut is acceptable only if:

- the risk is understood
- there is a ticket or follow-up note
- it does not create an immediate security, data integrity, or product-quality issue
- the shortcut is not used to bypass acceptance criteria

## General code style

### Naming

Use names that explain intent.

Good names describe the domain concept, not just the data type.

Preferred:

```text
calculateInvestorScore
createUserSession
validateDealSubmission
fetchProjectDocuments
```

Avoid:

```text
handleStuff
doThing
processData
newFunc
temp2
```

### Functions

Functions should:

- do one clear thing
- have a clear name
- avoid hidden side effects
- accept explicit inputs
- return predictable outputs
- be short enough to understand without scrolling through unrelated logic
- fail in a controlled and documented way

A function is too complex when it mixes validation, authorization, data access, business logic, formatting, logging, and response construction in one block.

### Comments

Comments should explain why something is done, not restate what the code already says.

Use comments for:

- business rules
- non-obvious trade-offs
- security-sensitive behavior
- migration decisions
- integration constraints
- temporary workarounds with follow-up notes

Avoid noisy comments that simply repeat the code.

### Error handling

Every expected error path must be handled intentionally.

Code should distinguish between:

- validation errors
- authorization errors
- not found errors
- conflict errors
- dependency or service errors
- unexpected system errors

Do not expose internal stack traces, tokens, database details, or sensitive business information to users.

### Logging

Logs should help diagnose production behavior without leaking secrets.

Logs may include:

- request ID
- user ID or account ID when appropriate
- operation name
- service/module name
- duration
- non-sensitive status
- sanitized error code

Logs must not include:

- passwords
- access tokens
- refresh tokens
- API keys
- private keys
- full payment data
- personal data unless explicitly required and approved
- raw confidential documents

### Configuration

Configuration must be externalized from code.

Environment-specific values must not be hardcoded. Use environment variables, config files, secrets managers, or deployment configuration.

Examples:

- API endpoints
- feature flags
- credentials
- database URLs
- third-party service keys
- deployment mode
- rate limits

### Dependencies

Before adding a dependency, check:

- Is it necessary?
- Is the package maintained?
- Is the license acceptable?
- Does it increase bundle size or attack surface?
- Can the existing stack solve the problem?
- Does it introduce a transitive dependency risk?
- Is it compatible with the current framework version?

Do not add dependencies for trivial utility functions.

### Formatting and linting

The repository must define one formatter and one linting standard per language or workspace.

The AI Developer Agent must run formatting and linting before submitting work.

If formatter or linter configuration does not exist, the AI Developer Agent must propose adding it instead of silently using personal preferences.

## Backend code standards

Backend code must separate:

- routing or controller layer
- request validation
- authorization
- business logic
- data access
- external service integration
- response formatting
- error handling

Do not place complex business logic directly inside route handlers.

Backend implementation must include:

- explicit request validation
- clear authorization checks
- safe error responses
- idempotency where needed
- transaction safety for multi-step data changes
- pagination for list endpoints
- rate limiting where abuse is possible
- logs for important operations
- tests for business logic and critical flows

## Frontend code standards

Frontend code must separate:

- page or route components
- reusable UI components
- state management
- data fetching
- form validation
- domain logic
- styling tokens or theme rules
- accessibility behavior

Frontend implementation must include:

- loading state
- empty state
- error state
- success state where relevant
- disabled state for pending actions
- keyboard accessibility for interactive elements
- semantic HTML where possible
- no unnecessary re-renders from careless state placement
- responsive behavior for expected screen sizes

## Database code standards

Database changes must be explicit and reversible when possible.

Any schema change must include:

- migration name
- purpose
- affected tables
- data migration needs
- rollback or recovery plan
- index impact
- constraint impact
- expected production risk

Code must not assume data consistency that the database does not enforce. Use constraints for important data integrity rules.

## API code standards

APIs must have:

- clear resource naming
- explicit request and response schema
- consistent error format
- versioning strategy when needed
- authentication and authorization rules
- rate limit expectations
- pagination for collections
- sorting and filtering rules when applicable
- idempotency behavior for risky repeated actions
- API tests or contract tests for critical endpoints

## AI Developer Agent output requirements

After every implementation, the AI Developer Agent must provide:

```text
## Summary
What was changed and why.

## Files changed
List of files with short explanation.

## Requirement mapping
Which requirement or acceptance criterion each change satisfies.

## Tests
What tests were added or updated.
What commands were run.
What passed.
What was not run and why.

## Risks
Technical, security, UX, data, deployment, or compatibility risks.

## Follow-up
Known gaps, debt, or recommended next tasks.
```

## TPO Agent acceptance rules

The TPO Agent should reject the implementation if any of the following is true:

- the change does not match the task
- core behavior is untested
- the code is not understandable
- code style conflicts with the repository
- the implementation bypasses architecture boundaries
- security-sensitive inputs are not validated
- authorization is missing or unclear
- secrets are hardcoded
- user-facing errors expose internals
- database changes have no migration plan
- UX states are incomplete
- the AI Developer Agent cannot explain what changed
- the result cannot be safely reviewed

## References

- Google Engineering Practices: Code Review
- Microsoft Learn: Unit Testing Best Practices
- NIST SP 800-218 Secure Software Development Framework
- OWASP Secure Coding Practices Quick Reference Guide
