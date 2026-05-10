# UX/UI Shipping Checklist

Use this checklist before declaring a surface ready.

## Structure

- [ ] Screen has clear title and one-line purpose.
- [ ] User can identify current status in <3 seconds.
- [ ] "Next action" is explicit and actionable.
- [ ] Page sections follow a consistent reading order.

## States

- [ ] Loading state exists and is meaningful.
- [ ] Empty state exists and gives guidance.
- [ ] Blocked/restricted state has safe reason + action.
- [ ] Error state has recovery instruction.
- [ ] Success state confirms outcome and next step.

## Accessibility

- [ ] Keyboard navigation reaches all interactive controls.
- [ ] Focus indicator is always visible.
- [ ] Contrast for text and controls is sufficient.
- [ ] Heading hierarchy is logical and not skipped.

## Content

- [ ] Labels are short and unambiguous.
- [ ] No duplicate navigation content in body.
- [ ] No operator/internal notes in member/public copy.
- [ ] Reason text is user-safe and non-leaking.

## Role and Privacy

- [ ] Payload follows role permissions.
- [ ] Other user data is denied (403/404 equivalent).
- [ ] Multi-role users reuse one identity (no duplicate accounts).
- [ ] Audit-critical actions are traceable.

## Operational Quality

- [ ] Key flows are covered by smoke/UAT scenarios.
- [ ] Queue/SLA impact is visible for operator actions.
- [ ] Notifications are idempotent for repeated transitions.
- [ ] Evidence (screenshots/logs/scenarios) is attached.

