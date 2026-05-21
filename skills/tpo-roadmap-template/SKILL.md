---
name: tpo-roadmap-template
description: technical product owner guideline module: Roadmap Template. preserves source checklists, templates, gates, and execution rules.
---

# Roadmap Template

## Purpose

Use this template to convert product strategy into a practical delivery roadmap. The roadmap should connect business goals, product outcomes, user value, technical work, dependencies, risks, and release milestones.

This template is intended for a Technical Product Owner Agent that plans work for an AI Developer Agent and then controls execution quality.

---

## 1. Roadmap Metadata

| Field | Value |
|---|---|
| Product / Project |  |
| Roadmap Version |  |
| Owner |  |
| Date Created |  |
| Last Updated |  |
| Planning Horizon |  |
| Roadmap Type | Now / Next / Later, Quarterly, Milestone-based, Release-based |
| Source Documents | PRD, Technical Specification, Architecture, UX/UI, Stakeholder Notes |
| Status | Draft / In Review / Approved / Active / Deprecated |

---

## 2. Product Vision

### Product Goal

Describe the target product state and the value it should deliver.

```text
The product should...
```

### Business Outcome

Describe the measurable business result.

Examples:
- Increase qualified leads
- Reduce manual operator work
- Improve onboarding conversion
- Reduce response time
- Increase activation or retention

```text
Target outcome:
```

### User Outcome

Describe what the user should be able to do better after this roadmap is executed.

```text
Users will be able to...
```

---

## 3. Roadmap Principles

The roadmap must follow these principles:

1. Every roadmap item must link to a user or business outcome.
2. Every initiative must be decomposable into epics, user stories, and tasks.
3. Every phase must have clear acceptance criteria.
4. Architecture, UX/UI, QA, security, and release readiness must be included, not added at the end.
5. Dependencies and risks must be visible before development starts.
6. The roadmap must be updated when scope, assumptions, or constraints change.
7. The roadmap must not promise exact dates unless the team has validated capacity and dependencies.

---

## 4. Roadmap Summary

| Phase | Objective | Main Deliverables | Target Window | Status | Owner |
|---|---|---|---|---|---|
| Phase 0: Discovery | Validate scope, risks, and assumptions | Research, requirements, architecture draft |  |  |  |
| Phase 1: MVP Foundation | Build the minimum usable foundation | Core modules, data model, basic UX |  |  |  |
| Phase 2: Core Product | Deliver main user workflows | Key features, integrations, QA |  |  |  |
| Phase 3: Stabilization | Improve quality and release readiness | Testing, bug fixes, security review |  |  |  |
| Phase 4: Release | Launch and monitor | Release package, monitoring, post-launch fixes |  |  |  |

---

## 5. Now / Next / Later Roadmap

Use this format when exact dates are uncertain.

### Now

Work that is approved, scoped, and ready for execution.

| Initiative | Outcome | Epic | Priority | Dependency | Acceptance Signal |
|---|---|---|---|---|---|
|  |  |  |  |  |  |

### Next

Work that is important but requires more discovery, design, or dependency resolution.

| Initiative | Outcome | Epic | Priority | Dependency | Discovery Needed |
|---|---|---|---|---|---|
|  |  |  |  |  |  |

### Later

Work that is valuable but not ready for near-term commitment.

| Initiative | Outcome | Reason to Defer | Trigger to Revisit |
|---|---|---|---|
|  |  |  |  |

---

## 6. Initiative Template

Use this section for each roadmap initiative.

### Initiative Name

```text
Name:
```

### Problem

```text
What problem does this solve?
Who has this problem?
Why does it matter now?
```

### Desired Outcome

```text
What should be true after this initiative is complete?
```

### Scope

#### In Scope

- 

#### Out of Scope

- 

### Users / Actors

| Actor | Goal | Main Actions |
|---|---|---|
|  |  |  |

### Modules Affected

| Module | Change Required | Risk Level |
|---|---|---|
| Frontend |  | Low / Medium / High |
| Backend |  | Low / Medium / High |
| Database |  | Low / Medium / High |
| API |  | Low / Medium / High |
| Integrations |  | Low / Medium / High |
| Admin / Operator Tools |  | Low / Medium / High |

### Delivery Breakdown

| Epic | User Stories | Technical Tasks | Acceptance Criteria | Dependencies |
|---|---|---|---|---|
|  |  |  |  |  |

### Metrics

| Metric | Baseline | Target | Measurement Method |
|---|---|---|---|
|  |  |  |  |

### Risks

| Risk | Impact | Probability | Mitigation | Owner |
|---|---|---|---|---|
|  |  |  |  |  |

### Decision Log

| Date | Decision | Reason | Owner | Impact |
|---|---|---|---|---|
|  |  |  |  |  |

---

## 7. Dependency Map

| Dependency | Type | Owner | Needed By | Status | Mitigation |
|---|---|---|---|---|---|
| API access | External |  |  |  |  |
| Design approval | UX/UI |  |  |  |  |
| Database migration | Technical |  |  |  |  |
| Legal / compliance review | Business |  |  |  |  |
| Production credentials | Operations |  |  |  |  |

---

## 8. AI Developer Agent Task Pipeline

The TPO Agent must use this flow when assigning roadmap work to the AI Developer Agent.

1. Convert initiative into epic.
2. Convert epic into user stories.
3. Convert user stories into implementation tasks.
4. Add acceptance criteria for every task.
5. Add technical constraints and files likely to change.
6. Ask AI Developer Agent to produce an implementation plan before coding.
7. Review the implementation plan.
8. Approve, reject, or revise the plan.
9. Review delivered code, UX/UI, tests, and documentation.
10. Accept or return for rework.

---

## 9. Roadmap Review Checklist

Before approving the roadmap, confirm:

- [ ] Product goal is clear.
- [ ] User outcomes are clear.
- [ ] Business outcomes are clear.
- [ ] Roadmap items are prioritized.
- [ ] Each initiative links to an epic or feature.
- [ ] Dependencies are visible.
- [ ] Risks are documented.
- [ ] UX/UI work is included.
- [ ] Backend and frontend work are included.
- [ ] Database work is included.
- [ ] API and integration work are included.
- [ ] QA and testing are included.
- [ ] Security review is included.
- [ ] Release readiness is included.
- [ ] Post-release monitoring is included.
- [ ] Scope is realistic for available capacity.
- [ ] Roadmap is not overloaded with detailed requirements.
- [ ] Unknowns are marked as discovery items.

---

## 10. Output Format for TPO Agent

When asked to create a roadmap, respond in this format:

```markdown
# Product Roadmap

## Product Goal

## Business Outcome

## User Outcome

## Roadmap Summary

## Now

## Next

## Later

## Key Initiatives

## Dependencies

## Risks

## Required Decisions

## Tasks for AI Developer Agent

## Acceptance Criteria

## Next Review Date
```
