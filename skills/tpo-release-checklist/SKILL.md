---
name: tpo-release-checklist
description: technical product owner guideline module: Release Checklist. preserves source checklists, templates, gates, and execution rules.
---

# Release Checklist

## Purpose

Use this checklist to verify that a product increment is ready to release. A release should not be treated as only a deployment. It should include code, configuration, data migration, documentation, testing, security, monitoring, rollback, stakeholder communication, and post-release follow-up.

This checklist is designed for a Technical Product Owner Agent that controls an AI Developer Agent and decides whether work is ready for production.

---

## 1. Release Metadata

| Field | Value |
|---|---|
| Product / Project |  |
| Release Name |  |
| Release Version |  |
| Release Type | MVP / Minor / Major / Hotfix / Internal / Public |
| Release Owner |  |
| Release Date / Window |  |
| Environment | Staging / Production |
| Related Roadmap Phase |  |
| Related Sprint |  |
| Status | Draft / In Review / Approved / Released / Rolled Back |

---

## 2. Release Summary

### What is being released?

```text

```

### Why is this release valuable?

```text

```

### Who is affected?

```text

```

### What changed?

| Area | Change Summary | User Impact |
|---|---|---|
| Frontend |  |  |
| Backend |  |  |
| Database |  |  |
| API |  |  |
| Integrations |  |  |
| Admin / Operator Tools |  |  |
| Security |  |  |
| Documentation |  |  |

---

## 3. Scope Confirmation

### Included

- 

### Excluded

- 

### Deferred

| Item | Reason | New Target |
|---|---|---|
|  |  |  |

---

## 4. Pre-Release Requirements

| Requirement | Status | Evidence / Link |
|---|---|---|
| PRD approved | Pass / Fail / N/A |  |
| Technical specification approved | Pass / Fail / N/A |  |
| Architecture approved | Pass / Fail / N/A |  |
| UX/UI approved | Pass / Fail / N/A |  |
| Acceptance criteria met | Pass / Fail / N/A |  |
| Definition of Done met | Pass / Fail / N/A |  |
| Stakeholder approval received | Pass / Fail / N/A |  |

---

## 5. Code Quality Checklist

- [ ] Code review completed.
- [ ] No unreviewed critical code paths.
- [ ] No debug code left in production paths.
- [ ] No console logs or test-only behavior unless intentionally kept.
- [ ] No hardcoded secrets, credentials, or tokens.
- [ ] Error handling is implemented.
- [ ] Logging is useful and not excessive.
- [ ] Feature flags are documented if used.
- [ ] Configuration is environment-specific.
- [ ] Dependency changes are reviewed.

---

## 6. Testing Checklist

| Test Type | Required | Status | Evidence |
|---|---|---|---|
| Unit tests | Yes / No | Pass / Fail / N/A |  |
| Integration tests | Yes / No | Pass / Fail / N/A |  |
| End-to-end tests | Yes / No | Pass / Fail / N/A |  |
| Regression tests | Yes / No | Pass / Fail / N/A |  |
| Smoke tests | Yes / No | Pass / Fail / N/A |  |
| API tests | Yes / No | Pass / Fail / N/A |  |
| Database migration tests | Yes / No | Pass / Fail / N/A |  |
| Performance checks | Yes / No | Pass / Fail / N/A |  |
| Accessibility checks | Yes / No | Pass / Fail / N/A |  |
| Security checks | Yes / No | Pass / Fail / N/A |  |

---

## 7. UX/UI Release Checklist

- [ ] Main user flows work end to end.
- [ ] Empty states are implemented.
- [ ] Loading states are implemented.
- [ ] Error states are implemented.
- [ ] Success states are implemented.
- [ ] Copy is clear and consistent.
- [ ] Navigation is understandable.
- [ ] Forms validate correctly.
- [ ] Mobile or responsive behavior is acceptable.
- [ ] Accessibility basics are checked.
- [ ] No broken or unfinished UI elements are visible.

---

## 8. Database and Migration Checklist

- [ ] Migration scripts are reviewed.
- [ ] Migration can run safely on target environment.
- [ ] Migration rollback or recovery plan exists.
- [ ] Backward compatibility is considered.
- [ ] Existing data is protected.
- [ ] Index changes are reviewed.
- [ ] Constraints are reviewed.
- [ ] Seed or reference data is documented.
- [ ] Backup exists if needed.

---

## 9. API and Integration Checklist

- [ ] API contract is stable for this release.
- [ ] Breaking changes are documented.
- [ ] Authentication and authorization are checked.
- [ ] Rate limits and abuse controls are considered.
- [ ] External integrations are tested.
- [ ] Failure modes are handled.
- [ ] Webhooks or background jobs are tested.
- [ ] API documentation is updated.
- [ ] Versioning strategy is clear.

---

## 10. Security Checklist

- [ ] No secrets are committed.
- [ ] Access control is tested.
- [ ] Sensitive data is protected.
- [ ] Input validation is implemented.
- [ ] Output encoding is considered where relevant.
- [ ] Dependencies have no known critical vulnerabilities.
- [ ] Admin and operator actions are protected.
- [ ] Logs do not expose sensitive data.
- [ ] Security risks are documented.
- [ ] Security blockers are resolved before release.

---

## 11. Deployment Plan

| Step | Owner | Environment | Expected Result | Rollback Trigger |
|---|---|---|---|---|
| 1. Build release artifact |  |  |  |  |
| 2. Deploy to staging |  |  |  |  |
| 3. Run staging smoke tests |  |  |  |  |
| 4. Approve production deployment |  |  |  |  |
| 5. Deploy to production |  |  |  |  |
| 6. Run production smoke tests |  |  |  |  |
| 7. Monitor production |  |  |  |  |

---

## 12. Rollback Plan

### Rollback Conditions

Rollback must be considered if:

- P0 production issue appears.
- Authentication or payment flow breaks.
- Data integrity risk appears.
- Critical user workflow fails.
- Error rate exceeds acceptable threshold.
- Security issue is detected.
- Monitoring or logs show severe instability.

### Rollback Steps

| Step | Action | Owner | Expected Result |
|---|---|---|---|
| 1 |  |  |  |
| 2 |  |  |  |
| 3 |  |  |  |

### Recovery Notes

```text

```

---

## 13. Monitoring Checklist

- [ ] Application health checks are available.
- [ ] Error tracking is active.
- [ ] Logs are available.
- [ ] Performance metrics are available.
- [ ] User-facing critical flows are monitored.
- [ ] Alerts are configured.
- [ ] Responsible owner is known.
- [ ] Support channel is monitored.

---

## 14. Release Notes Template

```markdown
# Release Notes: [Version]

## Summary

## New Features

## Improvements

## Bug Fixes

## Breaking Changes

## Known Issues

## Migration Notes

## User Action Required

## Support Contact
```

---

## 15. Go / No-Go Decision

| Area | Decision | Notes |
|---|---|---|
| Product | Go / No-Go / Conditional |  |
| Engineering | Go / No-Go / Conditional |  |
| QA | Go / No-Go / Conditional |  |
| UX/UI | Go / No-Go / Conditional |  |
| Security | Go / No-Go / Conditional |  |
| Operations | Go / No-Go / Conditional |  |

### Final Decision

```text
Go / No-Go / Conditional Go
```

### Conditions

```text

```

---

## 16. Post-Release Review

| Review Item | Result | Notes |
|---|---|---|
| Deployment completed | Pass / Fail |  |
| Smoke tests passed | Pass / Fail |  |
| Monitoring healthy | Pass / Fail |  |
| User feedback reviewed | Pass / Fail |  |
| Bugs logged | Pass / Fail |  |
| Follow-up tasks created | Pass / Fail |  |
