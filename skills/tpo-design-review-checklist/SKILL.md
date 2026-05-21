---
name: tpo-design-review-checklist
description: technical product owner guideline module: Design Review Checklist. preserves source checklists, templates, gates, and execution rules.
---

# Design Review Checklist

## Purpose

This checklist helps the Technical Product Owner Agent review UX/UI design before development, during implementation, and before release.

The goal is not to judge whether a design is beautiful. The goal is to determine whether it is usable, consistent, accessible, technically implementable, and aligned with the product requirements.

## Required inputs

Before reviewing a design, request or inspect:

- Product Requirements Document
- Technical Specification
- User stories
- Acceptance criteria
- Target user type
- Business goal
- Screens or prototype
- User flow
- Existing design system, if any
- Known platform constraints
- Mobile and desktop requirements

## Review verdicts

Use one of these verdicts:

- `Accepted`: ready for development or release.
- `Accepted with minor fixes`: usable, but small corrections are required.
- `Rejected`: major UX, UI, accessibility, logic, or requirement issues must be fixed first.
- `Needs clarification`: requirements or user flow are insufficient for review.

## 1. Requirement alignment

Check:

- The screen solves the user story.
- The design supports the business goal.
- All required fields, actions, and statuses are present.
- There are no unauthorized features outside scope.
- The screen reflects the correct permissions and roles.
- Edge cases from the technical specification are represented.
- Empty, loading, success, error, and disabled states are included.
- The design does not hide required business logic.

Questions:

- What requirement does this screen satisfy?
- What user action is this screen optimized for?
- What is missing from the specification?
- What implementation risk does the design create?

## 2. User flow and task completion

Check:

- The user can start, progress, and complete the task.
- The next step is always clear.
- The user understands where they are in the flow.
- Back, cancel, save draft, or exit behavior is defined.
- Multi-step flows show progress and preserve data.
- The user can recover from mistakes.
- The design does not create dead ends.

Reject if:

- The user can get stuck.
- The main action is unclear.
- The flow requires knowledge not shown in the UI.
- A required decision appears without enough context.

## 3. Information architecture

Check:

- Navigation is clear.
- Page hierarchy is logical.
- Sections are grouped by meaning.
- The screen has a clear title and context.
- Content order matches the user's decision process.
- Important content is not buried.
- Filters, tabs, or menus are not overused.
- Labels are clear and predictable.

Questions:

- Can a new user understand this page in 5 seconds?
- Does the layout match the user's mental model?
- Are we exposing internal system structure instead of user value?

## 4. Visual hierarchy

Check:

- The primary action is visually dominant.
- Secondary actions are clearly secondary.
- Destructive actions are visually distinct and protected.
- Font sizes create hierarchy.
- Spacing helps scanning.
- Cards, sections, and tables have clear boundaries.
- Important status or warning information is visible.
- Color is not the only way to communicate meaning.

Reject if:

- Everything looks equally important.
- The primary action is hard to find.
- Visual decoration competes with the user's goal.
- Status or risk information is hidden.

## 5. Component consistency

Check:

- Buttons follow product standards.
- Forms follow product standards.
- Tables follow product standards.
- Modals follow product standards.
- Toasts and alerts follow product standards.
- Icons are reused consistently.
- Typography and spacing match the design system.
- Similar actions use similar labels.

Common issues:

- Different button labels for the same action.
- Multiple table styles in one product.
- Modal used where a page is more appropriate.
- New custom control added without a strong reason.

## 6. Forms and inputs

Check:

- Every input has a visible label.
- Required and optional fields are clear.
- Help text appears near complex fields.
- Validation is inline where possible.
- Error messages explain how to fix the issue.
- Input formats are shown when needed.
- Sensitive fields are handled carefully.
- Long forms are grouped or split logically.
- Submission state prevents duplicate submissions.
- Data is preserved when validation fails.

Reject if:

- Field purpose is unclear.
- User must guess formatting.
- Errors appear only after full submission without guidance.
- Required fields are hidden or unclear.

## 7. Tables, lists, and dashboards

Check:

- Columns are relevant to user decisions.
- Data can be scanned quickly.
- Empty state is useful.
- Loading state is defined.
- Sorting, filtering, and search exist when needed.
- Pagination or infinite scroll behavior is defined.
- Row actions are clear.
- Bulk actions have confirmation and recovery.
- Status labels are human-readable.
- Numbers, currency, dates, and percentages are formatted consistently.

## 8. Accessibility

Check:

- Text has sufficient contrast.
- Focus state is visible.
- Keyboard navigation order is logical.
- Interactive elements are reachable by keyboard.
- Form controls have labels.
- Icon-only buttons have accessible names.
- Error messages are connected to affected fields.
- Headings are structured logically.
- ARIA is not used where semantic HTML is enough.
- Motion is not required to understand the interface.
- Content remains usable when zoomed.

Reject if:

- A user cannot operate the interface with keyboard only.
- Color is the only indicator of status.
- Text contrast is insufficient.
- Focus is hidden or trapped incorrectly.
- Dialogs do not announce context or trap focus properly.

## 9. Mobile and responsive behavior

Check:

- Layout adapts to the defined breakpoints.
- Main actions remain reachable.
- Forms are usable on mobile.
- Tables have a mobile strategy.
- Touch targets are large enough.
- Text wraps without breaking layout.
- Sticky elements do not hide content.
- The on-screen keyboard does not block key actions.
- Horizontal scrolling is avoided except for intentional data tables.

## 10. Content and microcopy

Check:

- Copy is clear and direct.
- Button labels describe actions.
- Empty states explain what to do next.
- Confirmation messages explain consequences.
- Error messages are actionable.
- Tooltips do not hide essential information.
- Tone is consistent with the product.
- There is no internal jargon.

Examples:

- Weak: Submit
- Better: Send application

- Weak: Error
- Better: Upload failed. Use a PDF under 10 MB and try again.

## 11. Technical feasibility

Check:

- Required data exists in the backend.
- UI states map to real backend statuses.
- Permissions can be enforced.
- Filters and sorting are supported.
- Real-time behavior is defined if shown.
- Notifications are technically possible.
- The design does not require hidden manual operations.
- Edge cases are represented.

## 12. Final review template

```md
# Design Review

## Verdict
Accepted / Accepted with minor fixes / Rejected / Needs clarification

## Scope reviewed
- Screen:
- Flow:
- Version:
- Related requirement:

## Requirement alignment
- Pass / Fail
- Notes:

## UX flow
- Pass / Fail
- Notes:

## Visual hierarchy
- Pass / Fail
- Notes:

## Components and consistency
- Pass / Fail
- Notes:

## Forms and validation
- Pass / Fail / Not applicable
- Notes:

## Accessibility
- Pass / Fail
- Notes:

## Responsive behavior
- Pass / Fail
- Notes:

## Technical feasibility
- Pass / Fail
- Notes:

## Required fixes
| Priority | Issue | Required fix | Owner | Acceptance criterion |
|---|---|---|---|---|
| P0 |  |  |  |  |
| P1 |  |  |  |  |
| P2 |  |  |  |  |

## Final decision
The design is accepted / returned for revision because ...
```
