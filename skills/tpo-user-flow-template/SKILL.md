---
name: tpo-user-flow-template
description: technical product owner guideline module: User Flow Template. preserves source checklists, templates, gates, and execution rules.
---

# User Flow Template

## Purpose

This template helps the Technical Product Owner Agent describe and review the path a user takes to complete a goal inside the product.

A good user flow must connect business requirements, user intent, UX screens, backend states, permissions, error cases, and acceptance criteria.

## Flow metadata

```md
# User Flow

## Flow name
[Example: Submit startup profile for review]

## Product area
[Example: Member cabinet / CRM / Admin panel / Marketplace]

## User role
[Example: Founder, investor, admin, analyst, operator]

## User goal
[What the user wants to accomplish]

## Business goal
[Why this flow matters for the product]

## Trigger
[What starts the flow]

## Final outcome
[What completed state means]

## Related documents
- PRD:
- Technical Specification:
- Acceptance Criteria:
- Design:
- API:
```

## 1. User context

Describe the user before the flow starts.

```md
## User context

- User role:
- User permissions:
- User knowledge level:
- Device or environment:
- Entry point:
- Previous state:
- Data already available:
- Data missing:
- Risks or anxieties:
```

## 2. Flow summary

Use a short step list.

```md
## Flow summary

1. User enters the flow from ...
2. User sees ...
3. User chooses ...
4. User provides ...
5. System validates ...
6. User confirms ...
7. System creates or updates ...
8. User receives ...
```

## 3. Screen-by-screen flow

Use this table for each screen or state.

```md
| Step | Screen or state | User action | System response | Data required | Edge cases |
|---|---|---|---|---|---|
| 1 |  |  |  |  |  |
| 2 |  |  |  |  |  |
| 3 |  |  |  |  |  |
```

## 4. Main path

Define the expected successful path.

```md
## Main path

### Step 1: [Name]
- User sees:
- User action:
- System behavior:
- Validation:
- Next step:
- Acceptance criterion:

### Step 2: [Name]
- User sees:
- User action:
- System behavior:
- Validation:
- Next step:
- Acceptance criterion:
```

## 5. Alternative paths

Define allowed variants.

```md
## Alternative paths

### Alternative path A: [Name]
- Trigger:
- User action:
- System behavior:
- Expected outcome:
- Acceptance criterion:

### Alternative path B: [Name]
- Trigger:
- User action:
- System behavior:
- Expected outcome:
- Acceptance criterion:
```

Examples:

- User saves draft instead of submitting.
- User edits a previously submitted form.
- User skips optional step.
- User uses search instead of navigation.
- Admin overrides a default decision.

## 6. Error and recovery paths

Every major flow must define how the user recovers.

```md
## Error and recovery paths

| Error case | Where it happens | User sees | System behavior | Recovery action |
|---|---|---|---|---|
| Required field missing |  |  |  |  |
| Invalid file type |  |  |  |  |
| Network failure |  |  |  |  |
| Permission denied |  |  |  |  |
| Duplicate submission |  |  |  |  |
```

Error path requirements:

- The user must understand what happened.
- The user must know how to fix the issue.
- Valid data must not be lost.
- The system must not silently fail.
- Destructive or irreversible actions must be confirmed.

## 7. System states

Define required UI states.

```md
## UI states

| State | Required? | Description |
|---|---|---|
| Initial | Yes |  |
| Loading | Yes / No |  |
| Empty | Yes / No |  |
| Draft | Yes / No |  |
| Validation error | Yes |  |
| Success | Yes |  |
| Partial success | Yes / No |  |
| Permission denied | Yes / No |  |
| Offline or unavailable | Yes / No |  |
```

## 8. Permissions and roles

```md
## Permissions

| Role | Can view | Can create | Can edit | Can delete | Can approve | Notes |
|---|---|---|---|---|---|---|
| User |  |  |  |  |  |  |
| Admin |  |  |  |  |  |  |
| Operator |  |  |  |  |  |  |
```

The UI must not show actions the user cannot perform, unless showing disabled actions helps explain available upgrades, missing permissions, or workflow status.

## 9. Data and backend mapping

```md
## Data mapping

| UI element | Backend field | API endpoint | Required | Validation | Notes |
|---|---|---|---|---|---|
|  |  |  |  |  |  |
```

Check:

- Every UI field maps to a real data model or API.
- Every backend status has a user-readable label.
- The UI does not invent states that the backend cannot support.
- Sensitive data is not exposed unnecessarily.

## 10. Notifications and feedback

```md
## Notifications and feedback

| Event | User feedback | Channel | Timing | Owner |
|---|---|---|---|---|
| Draft saved |  | UI toast | Immediate |  |
| Submitted |  | UI + email | Immediate |  |
| Approved |  | UI + notification |  |  |
| Rejected |  | UI + notification |  |  |
```

Feedback must be immediate for user actions and clear enough to guide next steps.

## 11. Analytics and success metrics

```md
## Flow metrics

- Start rate:
- Completion rate:
- Drop-off point:
- Error rate:
- Time to complete:
- Retry rate:
- Support requests:
- Conversion rate:
```

Use metrics to identify where the flow needs improvement.

## 12. Accessibility and responsive requirements

```md
## Accessibility requirements

- Keyboard path:
- Focus order:
- Screen reader labels:
- Error announcement:
- Color contrast:
- Touch target considerations:
- Reduced motion:
- Zoom behavior:

## Responsive behavior

- Mobile:
- Tablet:
- Desktop:
- Large desktop:
```

## 13. Flow acceptance criteria

A user flow is accepted only if:

- The user goal and business goal are clear.
- Every step has a defined screen, action, and system response.
- Main path and error paths are documented.
- Required UI states are included.
- Permissions are defined.
- Backend mapping is clear.
- Accessibility requirements are defined.
- Responsive behavior is defined.
- Success metrics are defined.
- The flow can be implemented by the AI Developer Agent without guessing.

## 14. Agent output format

When the Technical Product Owner Agent creates a user flow, it must output:

```md
# User Flow: [Name]

## Summary
...

## Main path
...

## Alternative paths
...

## Error and recovery paths
...

## UI states
...

## Permissions
...

## Data mapping
...

## Acceptance criteria
...

## Tasks for AI Developer Agent
...
```
