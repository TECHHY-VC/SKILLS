---
name: tpo-ux-ui-guidelines
description: technical product owner guideline module: Ux Ui Guidelines. preserves source checklists, templates, gates, and execution rules.
---

# UX/UI Guidelines

## Purpose

This document defines the UX/UI principles that the Technical Product Owner Agent must use when planning, reviewing, and accepting product interfaces.

The agent must use this document to evaluate whether a product is understandable, usable, accessible, consistent, and aligned with the user's goal.

## When to use this document

Use this file when:

- Planning a new screen, page, dashboard, onboarding flow, form, cabinet, admin panel, marketplace, CRM, or internal tool.
- Reviewing a Figma design, screenshot, frontend implementation, or AI-generated UI.
- Checking whether the interface matches the product requirements and technical specification.
- Deciding whether a UI is ready for development, user testing, or release.
- Creating tasks for an AI Developer Agent or UX/UI Designer Agent.

## Primary UX principles

### 1. Start with the user goal

Every interface must answer:

- Who is the user?
- What is the user trying to accomplish?
- What decision or action should the user be able to complete?
- What information is required to complete the action?
- What can be removed without reducing usefulness?

The agent must reject designs that are visually attractive but unclear, overloaded, or disconnected from the user's actual task.

### 2. Make the system status visible

The interface must show what is happening.

Required states:

- Loading
- Empty
- Success
- Error
- Saving
- Draft
- Submitted
- Pending
- Approved
- Rejected
- Disabled
- Offline or unavailable, if relevant

Users must never be left guessing whether an action worked.

### 3. Use the user's language

The interface must use terms that the target user understands.

Avoid:

- Internal team jargon
- Technical labels that are not user-facing
- Ambiguous button names
- Unexplained abbreviations
- Backend model names in the UI

Prefer:

- Clear action labels
- Familiar domain language
- Human-readable statuses
- Explanations near complex controls

### 4. Keep user control and recovery

Users must be able to recover from mistakes.

Required patterns:

- Back or cancel where appropriate
- Undo for reversible destructive actions, if feasible
- Confirmation for irreversible actions
- Clear warning before high-impact actions
- Ability to edit submitted data when business rules allow it
- Clear error recovery instructions

### 5. Maintain consistency

The same interaction must behave the same way across the product.

Check consistency for:

- Buttons
- Form inputs
- Status names
- Navigation
- Tables
- Filters
- Modals
- Toasts
- Empty states
- Error states
- Icons
- Spacing
- Typography
- Color usage

Do not introduce a new pattern when an existing product pattern already solves the same problem.

### 6. Reduce cognitive load

The UI must not force the user to remember information across screens.

Good interface behavior:

- Important options are visible when needed.
- Context is preserved after navigation.
- Form labels remain visible.
- Summaries appear before final submission.
- Multi-step flows show progress.
- Repeated data entry is minimized.
- Defaults are safe and useful.

### 7. Prevent errors before they happen

The product should prevent avoidable mistakes.

Use:

- Validation before submission
- Inline field validation
- Input masks where useful
- Disabled submit button only with a clear reason
- Safe defaults
- Confirmation for destructive actions
- Duplicate detection where relevant
- Clear required and optional fields

### 8. Make error messages useful

Every error message must explain:

- What happened
- Which field or action caused it
- How to fix it
- Whether the data was saved
- Whether the user can retry

Avoid:

- Generic "Something went wrong"
- Raw server errors
- Error codes without explanation
- Blaming the user
- Hidden validation after submission

### 9. Prioritize accessibility from the start

The interface must be accessible by default.

Minimum requirements:

- Keyboard navigation works.
- Focus state is visible.
- Color contrast is sufficient.
- Text is readable.
- Form inputs have labels.
- Buttons have accessible names.
- Icon-only controls have labels.
- Error messages are linked to fields.
- Dynamic updates are announced when needed.
- Semantic HTML is preferred over unnecessary custom widgets.

### 10. Design for responsive behavior

The interface must work on expected devices and breakpoints.

Review:

- Mobile layout
- Tablet layout, if relevant
- Desktop layout
- Small viewport behavior
- Long text behavior
- Table overflow behavior
- Form usability on mobile
- Touch target size
- Sticky navigation or actions
- Safe area and keyboard overlap

### 11. Respect performance as part of UX

UX quality includes perceived and actual performance.

Check:

- Initial load speed
- Interaction responsiveness
- Skeletons or progress indicators
- Avoiding layout shift
- Avoiding heavy unnecessary animation
- Avoiding blocked main actions
- Showing partial content when possible

### 12. Use visual hierarchy intentionally

The screen must guide attention.

Check:

- One clear primary action per section
- Secondary actions visually lower priority
- Important information appears before details
- Related elements are grouped
- Spacing communicates structure
- Headings describe content accurately
- Data-heavy screens have filters, search, and sorting when needed

## Product screen acceptance checklist

A screen can be accepted only if:

- The user goal is clear.
- The primary action is clear.
- The user can complete the task without hidden knowledge.
- The interface has loading, empty, success, error, and disabled states where needed.
- Form validation is clear and recoverable.
- Navigation and page structure are consistent with the rest of the product.
- Accessibility basics are satisfied.
- Responsive behavior is defined.
- Data formatting is clear.
- Technical constraints are reflected in the UI.
- The screen matches the product requirements and acceptance criteria.

## UX/UI review output format

When reviewing a design or implementation, the agent must return:

```md
# UX/UI Review

## Verdict
Accepted / Accepted with minor fixes / Rejected

## Summary
Short explanation of the overall quality and main risks.

## What works well
- ...

## Critical issues
- Issue:
  - Why it matters:
  - Required fix:
  - Acceptance criterion:

## Minor improvements
- ...

## Accessibility checks
- Keyboard:
- Focus:
- Contrast:
- Labels:
- Error handling:
- Screen reader considerations:

## Responsive checks
- Mobile:
- Tablet:
- Desktop:

## Final decision
Accepted / Return to AI Developer Agent / Return to UX/UI Designer Agent
```

## References

- Nielsen Norman Group: 10 Usability Heuristics for User Interface Design
- W3C: Web Content Accessibility Guidelines 2.2
- GOV.UK: Government Design Principles
- web.dev: Core Web Vitals
- MDN: ARIA and semantic accessibility guidance
