# Navigation And Focus

## Use This Reference For

- skip links and landmarks
- headers, menus, drawers, tabs, and dialogs
- focus management for custom interactions

## Navigation Baseline

- Use one clear primary navigation region.
- Label secondary navigation when it serves a different purpose.
- Keep heading hierarchy aligned with page structure.
- Do not turn every link cluster into a `nav`.

## Focus Management Rules

- Focus should move to new context when a dialog or major step opens.
- Focus should return to the invoking control when the context closes, unless the user moved elsewhere intentionally.
- Do not trap focus except inside true modal contexts.
- For disclosure widgets, keep focus behavior simple and predictable.

## Dialog Checklist

- opening action is explicit
- dialog has a clear label
- initial focus lands on a meaningful element
- background content is not interactable while modal is open
- escape or close action is available when appropriate
- focus returns sensibly on close

## Menus And Composite Widgets

Prefer native controls when possible. If the pattern requires a custom composite widget, define:

- arrow key behavior
- tab entry and exit behavior
- selected state semantics
- screen-reader labels and announcements

Do not imitate application-style menus for simple site navigation if ordinary links solve the problem.

## Drag And Drop Alternatives

If a user can rearrange or move items by dragging, offer an alternative path such as:

- move up or move down buttons
- a menu for choosing destination
- explicit source and target selectors

The requirement is equal outcome, not necessarily identical interaction.

## What To Test Manually

- tab forward and backward across the full flow
- skip link visibility and destination
- focus visibility in sticky headers, drawers, and modals
- keyboard access to the main action on mobile and desktop widths
