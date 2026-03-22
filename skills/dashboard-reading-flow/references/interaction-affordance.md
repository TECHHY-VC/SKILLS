# Interaction Affordance

## Use This Reference For

- making dashboard controls look interactive
- styling filter chips, legends, and nav pills so they are not mistaken for labels
- improving recognition of clickable elements without overdecorating the UI

## Core Rule

If the user can click it, the UI should signal that before hover.

Buttons, chips, and interactive legends should not rely on thin outlines alone when the surrounding UI is already dark and dense.

## Affordance Checklist

- visible fill, even if subtle
- enough padding to read as a control, not a text badge
- border contrast that survives dark backgrounds
- distinct pressed or selected state
- clear hover and focus feedback
- consistent styling across similar interactive elements

## Filled Button Pattern

Use a restrained filled style for analytical dashboards:

- low-opacity base fill
- stronger fill on hover
- brighter active fill for selected state
- subtle inset or outer shadow only if it improves separation

The goal is recognition, not decoration.

## Interactive Legends

When legends can filter, isolate, or toggle data:

- style them like buttons
- keep label text readable in default state
- show the hidden or muted state explicitly
- preserve keyboard focus visibility

## Anti-Patterns

- outline-only controls on dark surfaces
- chips that look identical to passive tags
- active state distinguished only by text color
- inconsistent affordance across nav, legends, and filter controls
