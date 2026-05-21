---
name: tpo-development-stages-template
description: technical product owner guideline module: Development Stages Template. preserves source checklists, templates, gates, and execution rules.
---

# Development Stages Template

## Purpose

Use this template to divide product development into clear stages from discovery to release and post-launch improvement. Each stage must have a purpose, entry criteria, deliverables, review gates, risks, and exit criteria.

This template helps a Technical Product Owner Agent control work performed by an AI Developer Agent.

---

## 1. Development Stage Overview

| Stage | Name | Purpose | Main Output | Status |
|---|---|---|---|---|
| 0 | Discovery | Understand problem, users, scope, constraints | Discovery summary | Not Started / Active / Done |
| 1 | Requirements | Define product and technical requirements | PRD, technical spec, acceptance criteria | Not Started / Active / Done |
| 2 | Architecture | Design modules, data, API, infrastructure | Architecture plan | Not Started / Active / Done |
| 3 | UX/UI | Define user flows and interface behavior | User flows, wireframes, UI criteria | Not Started / Active / Done |
| 4 | MVP Build | Implement minimum usable product | Working MVP | Not Started / Active / Done |
| 5 | QA and Stabilization | Fix bugs, improve quality, complete tests | Release candidate | Not Started / Active / Done |
| 6 | Release | Deploy and communicate release | Production release | Not Started / Active / Done |
| 7 | Post-Launch | Monitor, learn, and improve | Metrics, fixes, next backlog | Not Started / Active / Done |

---

## 2. Stage 0: Discovery

### Objective

Validate the problem, users, business goal, assumptions, constraints, and feasibility.

### Entry Criteria

- [ ] Initial idea or request exists.
- [ ] Product owner or stakeholder is known.
- [ ] Target users are described.
- [ ] Business goal is known or can be clarified.

### Activities

- Stakeholder interview
- User problem analysis
- Existing workflow analysis
- Competitor or alternative review
- Technical feasibility check
- Risk and assumption mapping

### Deliverables

- Discovery summary
- Problem statement
- User segments
- Business goal
- Key assumptions
- Initial risks
- Recommended next step

### Exit Criteria

- [ ] Problem is clearly stated.
- [ ] Target users are defined.
- [ ] Business value is clear.
- [ ] Major assumptions are documented.
- [ ] Major technical or operational risks are visible.
- [ ] Decision is made to continue, pause, or stop.

---

## 3. Stage 1: Requirements

### Objective

Turn discovery into product requirements, technical requirements, and acceptance criteria.

### Entry Criteria

- [ ] Discovery output is approved.
- [ ] Product goal is clear.
- [ ] Main user scenarios are known.

### Activities

- PRD creation
- Technical specification creation
- User story creation
- Acceptance criteria creation
- Scope definition
- Non-functional requirements definition
- Definition of Ready and Definition of Done alignment

### Deliverables

- Product Requirements Document
- Technical Specification
- Acceptance Criteria
- Scope boundaries
- Prioritized backlog
- Open questions list

### Exit Criteria

- [ ] In-scope and out-of-scope items are defined.
- [ ] User stories are understandable.
- [ ] Acceptance criteria are testable.
- [ ] Technical constraints are documented.
- [ ] Dependencies are documented.
- [ ] Requirements are approved for architecture planning.

---

## 4. Stage 2: Architecture

### Objective

Define how the product will be structured, built, integrated, secured, and maintained.

### Entry Criteria

- [ ] Requirements are approved.
- [ ] Main workflows are known.
- [ ] Non-functional requirements are known.

### Activities

- Module decomposition
- Backend architecture design
- Frontend architecture design
- Database design
- API design
- Integration mapping
- Security and access control planning
- Infrastructure and deployment planning

### Deliverables

- Architecture plan
- Module map
- Data model
- API map
- Integration map
- Security model
- Technical risks and trade-offs

### Exit Criteria

- [ ] Modules are defined.
- [ ] Ownership boundaries are clear.
- [ ] Data model is approved.
- [ ] API design is approved.
- [ ] Security model is approved.
- [ ] Technical risks are documented.
- [ ] Development stages can be planned.

---

## 5. Stage 3: UX/UI

### Objective

Define user flows, interface behavior, information architecture, and design quality criteria.

### Entry Criteria

- [ ] Product scope is approved.
- [ ] Main user roles are known.
- [ ] Key workflows are known.

### Activities

- User journey mapping
- User flow design
- Wireframe or UI draft review
- Empty, loading, error, and success state planning
- Accessibility review
- UX copy review
- Design consistency check

### Deliverables

- User flow documentation
- Interface map
- UX/UI review checklist
- Interface acceptance criteria
- Design risks and open questions

### Exit Criteria

- [ ] Main user flows are understandable.
- [ ] UI states are defined.
- [ ] Error states are defined.
- [ ] Empty states are defined.
- [ ] Accessibility requirements are defined.
- [ ] Design is ready for implementation.

---

## 6. Stage 4: MVP Build

### Objective

Implement the minimum product that delivers the core user value.

### Entry Criteria

- [ ] Requirements are ready.
- [ ] Architecture is approved.
- [ ] UX/UI is ready enough for implementation.
- [ ] Sprint plan is created.
- [ ] Tasks are assigned to AI Developer Agent.

### Activities

- Backend implementation
- Frontend implementation
- Database migration
- API implementation
- Integration implementation
- Unit tests
- Basic end-to-end tests
- Documentation update
- Code review

### Deliverables

- Working MVP
- Pull requests or code changes
- Tests
- Updated documentation
- Known issues list

### Exit Criteria

- [ ] Core user workflow works.
- [ ] Critical bugs are fixed.
- [ ] Tests pass.
- [ ] Code review is complete.
- [ ] UX/UI review is complete.
- [ ] Security basics are checked.
- [ ] MVP is ready for stabilization.

---

## 7. Stage 5: QA and Stabilization

### Objective

Improve reliability, usability, performance, security, and release readiness.

### Entry Criteria

- [ ] MVP build is feature-complete for agreed scope.
- [ ] Known bugs are logged.
- [ ] Test plan exists.

### Activities

- Regression testing
- End-to-end testing
- Cross-browser or cross-device testing
- Security review
- Performance check
- Accessibility check
- Bug fixing
- Release candidate preparation

### Deliverables

- QA report
- Fixed bugs
- Release candidate
- Updated release checklist
- Go / no-go recommendation

### Exit Criteria

- [ ] P0 and P1 bugs are resolved.
- [ ] Acceptance criteria are met.
- [ ] Regression tests pass.
- [ ] Security blockers are resolved.
- [ ] Release notes are drafted.
- [ ] Rollback plan exists.
- [ ] Product is ready for release approval.

---

## 8. Stage 6: Release

### Objective

Deploy the product safely and communicate what changed.

### Entry Criteria

- [ ] Release candidate is approved.
- [ ] Release checklist is complete.
- [ ] Monitoring is ready.
- [ ] Rollback plan is ready.
- [ ] Stakeholders are informed.

### Activities

- Final build
- Deployment to staging
- Staging validation
- Production deployment
- Smoke testing
- Release notes publication
- Monitoring

### Deliverables

- Production release
- Release notes
- Deployment log
- Monitoring dashboard
- Incident response path
- Rollback package

### Exit Criteria

- [ ] Production deployment completed.
- [ ] Smoke tests passed.
- [ ] Monitoring shows healthy status.
- [ ] Release notes published.
- [ ] Known issues communicated.
- [ ] Post-launch review scheduled.

---

## 9. Stage 7: Post-Launch

### Objective

Monitor adoption, detect issues, collect feedback, and plan the next iteration.

### Entry Criteria

- [ ] Product is live.
- [ ] Monitoring is active.
- [ ] Support channel is known.

### Activities

- Metrics review
- Error monitoring
- Support ticket review
- User feedback collection
- Bug triage
- Technical debt review
- Roadmap update

### Deliverables

- Post-launch report
- Bug backlog
- Improvement backlog
- Metrics snapshot
- Next roadmap recommendations

### Exit Criteria

- [ ] Critical production issues are resolved or tracked.
- [ ] User feedback is reviewed.
- [ ] Metrics are documented.
- [ ] Backlog is updated.
- [ ] Next iteration is planned.

---

## 10. Stage Gate Decision Format

```markdown
# Stage Gate Review

## Stage

## Decision
Approved / Approved with Conditions / Rejected / Needs Rework

## Evidence Reviewed

## Completed Deliverables

## Open Issues

## Risks

## Required Fixes

## Next Stage

## Owner

## Date
```
