---
name: tpo-interface-quality-criteria
description: technical product owner guideline module: Interface Quality Criteria. preserves source checklists, templates, gates, and execution rules.
---

# Interface Quality Criteria

## Purpose

This document defines the quality bar for accepting a product interface.

The Technical Product Owner Agent must use it as a final gate before accepting frontend implementation, approving a design, or sending work to release.

## Quality verdicts

Use these verdicts:

- `Pass`: meets the quality bar.
- `Pass with minor issues`: usable and safe, but small fixes are needed.
- `Fail`: must be returned for redesign or development fixes.
- `Blocked`: cannot be evaluated because requirements, designs, or implementation details are missing.

## 1. Clarity

The interface passes if:

- The purpose of the screen is immediately understandable.
- The primary user action is visible.
- Labels are clear.
- Statuses are human-readable.
- Required information is visible before the user acts.
- The user does not need internal product knowledge to continue.

Fail conditions:

- The user cannot tell what to do next.
- The screen has too many competing actions.
- Important information is hidden behind unclear controls.
- Labels are vague or technical.

## 2. Task completion

The interface passes if:

- The user can complete the intended task from start to finish.
- The flow has no dead ends.
- Required data can be entered, edited, and submitted.
- Success state is clear.
- Error state provides recovery.
- Cancellation or exit behavior is defined.

Fail conditions:

- A required action has no visible path.
- The user can lose unsaved work without warning.
- The user can submit invalid data without meaningful validation.
- The system does not confirm completion.

## 3. Consistency

The interface passes if:

- Shared components behave consistently.
- Navigation is predictable.
- Form behavior is consistent.
- Similar actions use similar labels.
- Visual styling follows the product system.
- Icons and colors have consistent meaning.

Fail conditions:

- Same action has different labels across screens.
- Same status uses different colors or text.
- Custom UI is created where existing components should be reused.
- Layout patterns change without reason.

## 4. Accessibility

The interface passes if:

- Keyboard navigation works.
- Focus order is logical.
- Focus state is visible.
- Text contrast meets accessibility targets.
- Form controls have labels.
- Error messages are connected to fields.
- Icon-only actions have accessible names.
- Headings are meaningful and structured.
- Semantic HTML is used where possible.
- ARIA is used only when needed.
- The interface remains usable at zoomed text sizes.

Fail conditions:

- User cannot operate key functions with keyboard.
- Color alone communicates status.
- Focus disappears.
- Screen reader cannot understand controls.
- Form errors are not announced or connected.
- Custom widgets do not mimic native behavior.

## 5. Visual hierarchy

The interface passes if:

- Important content is visually prioritized.
- Related information is grouped.
- Spacing improves readability.
- One primary action is emphasized.
- Destructive actions are visually distinct.
- Dense content has scanning aids.
- Empty space is used intentionally.

Fail conditions:

- Everything appears equally important.
- Primary action is buried.
- Dense screens lack grouping.
- Decorative elements reduce usability.

## 6. Content quality

The interface passes if:

- Copy is concise.
- Button labels describe outcomes.
- Empty states are useful.
- Error messages are actionable.
- Confirmation messages explain consequences.
- Help text appears at the point of need.
- Product terminology is consistent.
- No raw backend errors are exposed.

Fail conditions:

- Generic error messages.
- Internal jargon.
- Ambiguous CTA labels.
- Tooltips contain essential information that should be visible.
- Text does not match the actual system behavior.

## 7. Forms and validation

The interface passes if:

- Required and optional fields are clear.
- Inputs have labels.
- Validation is timely and useful.
- Data formats are explained.
- Errors are shown next to the relevant fields.
- Submission state prevents duplicate submissions.
- Valid data is preserved after errors.
- Long forms are grouped logically.

Fail conditions:

- User must guess the required format.
- Errors appear only after submit when they could be prevented earlier.
- Data disappears after validation failure.
- Disabled buttons have no explanation.

## 8. Responsiveness

The interface passes if:

- Layout works at required breakpoints.
- Content wraps safely.
- Tables have a defined mobile strategy.
- Touch targets are usable.
- Primary actions remain reachable.
- Keyboard overlays do not block critical actions.
- Navigation works on small screens.
- No accidental horizontal overflow appears outside intentional data tables.

Fail conditions:

- Main content is cut off.
- Buttons are too small for touch.
- Important actions disappear on mobile.
- Tables become unreadable with no alternative.

## 9. Performance and perceived speed

The interface passes if:

- Initial content loads quickly enough for the use case.
- Loading states are shown for slow operations.
- Interactions feel responsive.
- Layout does not shift unexpectedly.
- Heavy assets are justified.
- The screen remains usable during background updates.
- Long operations show progress or status.

Suggested web targets:

- LCP: 2.5 seconds or less.
- INP: 200 milliseconds or less.
- CLS: 0.1 or less.

Fail conditions:

- User action has no response.
- Layout jumps during loading.
- Large blocking assets slow the main task.
- Repeated spinners hide basic content that could be shown earlier.

## 10. Error prevention and recovery

The interface passes if:

- High-impact actions are protected.
- Destructive actions require confirmation or undo.
- Risky inputs are validated.
- Duplicate actions are prevented.
- Permission restrictions are explained.
- Recovery steps are clear.

Fail conditions:

- User can accidentally delete or submit critical data.
- Error messages do not explain recovery.
- Retry behavior is missing.
- The system silently fails.

## 11. Data display quality

The interface passes if:

- Dates are formatted consistently.
- Currency and numbers are formatted consistently.
- Statuses are readable.
- Empty values are handled intentionally.
- Sensitive data is masked where needed.
- Tables prioritize useful columns.
- Sorting and filtering exist when user decisions require them.
- Data freshness is shown where relevant.

Fail conditions:

- Raw IDs are shown when user-readable names should be used.
- Null values appear as technical placeholders.
- Important status or timing information is missing.
- User cannot find or compare key records.

## 12. Security and trust signals

The interface passes if:

- Sensitive actions are confirmed.
- Permissions are reflected in the UI.
- Sensitive data is not overexposed.
- The user understands what will happen before submission.
- File uploads show allowed type and size.
- External links are identifiable.
- Payment, KYC, approval, or investment-related actions include the correct disclaimers where relevant.

Fail conditions:

- The UI implies guarantees that the product cannot make.
- Sensitive information is shown without need.
- Users can access actions outside their role.
- Legal or risk disclaimers are missing for regulated flows.

## Final quality scorecard

Use this scorecard for final acceptance.

```md
# Interface Quality Scorecard

## Screen or flow
[Name]

## Verdict
Pass / Pass with minor issues / Fail / Blocked

| Category | Status | Notes |
|---|---|---|
| Clarity | Pass / Fail |  |
| Task completion | Pass / Fail |  |
| Consistency | Pass / Fail |  |
| Accessibility | Pass / Fail |  |
| Visual hierarchy | Pass / Fail |  |
| Content quality | Pass / Fail |  |
| Forms and validation | Pass / Fail / N/A |  |
| Responsiveness | Pass / Fail |  |
| Performance | Pass / Fail |  |
| Error recovery | Pass / Fail |  |
| Data display | Pass / Fail / N/A |  |
| Security and trust | Pass / Fail |  |

## Blocking issues
- ...

## Required fixes for AI Developer Agent
| Priority | Fix | Acceptance criterion |
|---|---|---|
| P0 |  |  |
| P1 |  |  |
| P2 |  |  |

## Final decision
Accepted / Returned for fixes / Needs clarification
```

## Release gate

The interface cannot be released if any of these are true:

- Main task cannot be completed.
- Critical accessibility failure exists.
- Data loss can happen without warning.
- Permissions are incorrect.
- Sensitive data is exposed unnecessarily.
- Core error states are missing.
- Mobile layout is broken for required users.
- Interface contradicts the product requirements.
- Legal, compliance, or risk disclaimer is missing where required.
