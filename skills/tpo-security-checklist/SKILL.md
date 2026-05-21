---
name: tpo-security-checklist
description: technical product owner guideline module: Security Checklist. preserves source checklists, templates, gates, and execution rules.
---

# Security Checklist

## Purpose

This checklist defines security expectations for projects supervised by the Technical Product Owner Agent.

Security must be included from planning through implementation, review, testing, deployment, and maintenance. It is not a final cleanup step.

## Security review principle

The TPO Agent should assume that every exposed feature can be abused.

For every feature, ask:

- Who can access this?
- What data can they see?
- What data can they change?
- What happens with invalid input?
- What happens if the user repeats the request?
- What happens if another user tries to access this object?
- What secrets or sensitive data could leak?
- What dependency, integration, or infrastructure risk is introduced?

## Security gates

### Gate 1: Before development

Check:

- sensitive data involved
- authentication requirements
- authorization rules
- external integrations
- file uploads
- webhooks
- payment or financial logic
- admin privileges
- data retention implications
- compliance or privacy constraints

### Gate 2: During implementation

Check:

- validation
- access control
- secure defaults
- safe error handling
- dependency hygiene
- logging safety
- secrets handling
- test coverage for abuse cases

### Gate 3: Before acceptance

Check:

- security tests
- code review
- dependency scan
- configuration review
- deployment risk
- monitoring and alerting needs
- rollback plan for risky changes

## Authentication

Check:

- Is authentication required for this feature?
- Is session handling safe?
- Are tokens stored safely?
- Are password flows protected?
- Are reset flows protected?
- Are session expiration and refresh rules clear?
- Are login failures handled safely?
- Is multi-factor authentication needed for admin or sensitive actions?

Reject if authentication assumptions are unclear.

## Authorization

Check:

- Is authorization enforced server-side?
- Are object-level permissions checked?
- Are role-based rules explicit?
- Are admin-only actions protected?
- Can one user access another user's records?
- Can a user modify objects they do not own?
- Are bulk operations protected?
- Are background jobs and webhooks protected?

Never rely only on frontend visibility to enforce authorization.

## Input validation

Check:

- Are all external inputs validated?
- Are schemas explicit?
- Are required fields enforced?
- Are size limits enforced?
- Are type limits enforced?
- Are enum values restricted?
- Are unexpected fields rejected or ignored intentionally?
- Are file uploads restricted by type, size, and content?
- Are URLs validated for redirects and outbound requests?

Inputs include:

- API requests
- forms
- query parameters
- route parameters
- headers
- cookies
- files
- webhooks
- third-party integration data
- environment variables
- database imported data

## Output handling

Check:

- Is user-generated content rendered safely?
- Is HTML escaped or sanitized?
- Are errors safe for users?
- Are internal details hidden?
- Is sensitive data excluded from API responses?
- Are logs sanitized?
- Are exported files checked for sensitive fields?

## Secrets management

Check:

- No secrets in source code.
- No secrets in repository history.
- No secrets in logs.
- No secrets in screenshots.
- No secrets in test fixtures.
- No secrets in client-side bundles.
- `.env.example` uses safe placeholders.
- Real secrets are stored in approved secret storage.
- Secret rotation is possible.

Examples of secrets:

- API keys
- access tokens
- refresh tokens
- private keys
- database URLs
- webhook secrets
- encryption keys
- session signing keys
- OAuth client secrets

## Data protection

Check:

- Is sensitive data minimized?
- Is data encrypted in transit?
- Is data encrypted at rest where required?
- Are backups protected?
- Are exports protected?
- Is retention defined?
- Is deletion behavior defined?
- Is access logged for sensitive operations?
- Are personal data fields documented?
- Are unnecessary fields removed from responses?

## API security

Check:

- Authentication required where needed.
- Authorization enforced per resource.
- Rate limits applied to abuse-prone endpoints.
- Request size limits exist.
- Pagination exists for collections.
- Error format does not leak internals.
- Dangerous operations are idempotent or protected against replay.
- Webhook signatures are verified.
- CORS is restricted.
- Admin endpoints are isolated.
- Mass assignment is prevented.
- API inventory is documented.

## Database security

Check:

- Queries are parameterized.
- ORM usage does not introduce injection risk.
- Permissions are least privilege.
- Sensitive fields are not returned by default.
- Migrations do not expose or destroy sensitive data accidentally.
- Deletions are intentional and audited where needed.
- Backups are protected.
- Production data is not used in local development without approval and sanitization.

## Frontend security

Check:

- No secrets in frontend code.
- No sensitive logic enforced only in frontend.
- User-generated content is safely rendered.
- Dangerous HTML insertion is avoided.
- External links use safe attributes where needed.
- File uploads are validated server-side, not only client-side.
- Authentication state is handled safely.
- Error messages do not expose sensitive internals.

## Dependency and supply chain security

Check:

- Dependencies are necessary.
- Dependencies are maintained.
- Lockfiles are committed.
- Known vulnerabilities are reviewed.
- Major upgrades are tested.
- Build scripts are understood.
- CI uses trusted actions or pinned versions where practical.
- Package installation does not require unsafe scripts unless approved.
- Generated artifacts are trusted.

## Infrastructure and deployment security

Check:

- Production config is separate from local config.
- Debug mode is disabled in production.
- TLS is enforced.
- Security headers are configured where relevant.
- Admin tools are not publicly exposed.
- Database is not publicly exposed.
- Backups are restricted.
- Deployment credentials are protected.
- Monitoring exists for failures and abuse.
- Rollback path exists.

## Logging and monitoring

Check:

- Important security events are logged.
- Logs contain enough context for investigation.
- Logs do not contain secrets.
- Failed login attempts are tracked.
- Authorization failures are tracked.
- Admin actions are tracked.
- Suspicious rate patterns are detectable.
- Alerts exist for critical failures.

## Common high-risk patterns

Treat these as high-risk by default:

- file uploads
- payment flows
- wallet or token flows
- admin panels
- password reset
- user impersonation
- public webhooks
- third-party OAuth
- CSV import
- document parsing
- dynamic SQL
- dynamic code execution
- user-generated HTML
- redirects
- server-side URL fetching
- bulk delete or bulk update
- production data export

## Security acceptance checklist

Before approving a security-relevant implementation, verify:

- Authentication is clear.
- Authorization is enforced server-side.
- Inputs are validated.
- Outputs are safe.
- Secrets are protected.
- Sensitive data is minimized.
- Error messages are safe.
- Logs are safe.
- Dependencies are acceptable.
- Security tests are included.
- Deployment configuration is safe.
- Known residual risks are documented.

## AI Developer Agent security output

For security-relevant tasks, the AI Developer Agent must provide:

```text
## Security impact
What security-sensitive behavior changed.

## Authentication
How access is authenticated.

## Authorization
How permissions are enforced.

## Input validation
What inputs are validated and where.

## Sensitive data
What data is accessed, stored, logged, or returned.

## Abuse cases tested
List security tests or manual checks.

## Residual risks
Known risks and recommended mitigation.
```

## TPO Agent rejection rules

Reject the implementation if:

- authorization is missing or unclear
- secrets are hardcoded
- sensitive data is exposed
- user input reaches dangerous sinks without validation
- file upload handling is unsafe
- webhook verification is missing
- public endpoint can be abused without limit or justification
- dependency risk is ignored
- production config enables debug behavior
- security-sensitive behavior has no tests

## References

- NIST SP 800-218 Secure Software Development Framework
- OWASP Secure Coding Practices Quick Reference Guide
- OWASP API Security Top 10
- Google Engineering Practices: Code Review
