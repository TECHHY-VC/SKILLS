# WCAG 2.2 Baseline For Layouts

## Use This Reference For

- page templates
- semantic HTML structure
- accessibility acceptance criteria for common website work

## Practical Baseline

Treat these as the minimum implementation contract:

- semantic landmarks are present and correctly ordered
- keyboard users can reach all major actions
- focus remains visible and unobscured
- interactive targets are touch-friendly
- instructions and feedback do not rely on color alone
- repeated input and unnecessary friction are reduced where possible

## Semantic Page Skeleton

Use native structure before ARIA roles:

```html
<a class="skip-link" href="#main">Skip to main content</a>

<header>
  <nav aria-label="Primary">
    ...
  </nav>
</header>

<main id="main">
  <h1>Page title</h1>
  ...
</main>

<footer>
  ...
</footer>
```

## Focus Rules

- Never remove focus styling without replacing it.
- Keep focus rings strong enough to survive busy backgrounds.
- Avoid sticky bars or overlays that hide the active element.
- Preserve logical focus order that matches the reading and interaction order.

## Interaction Rules

- Make tappable controls forgiving rather than precise.
- Ensure hover-only cues have an equivalent focus or persistent state.
- If a pattern depends on dragging, provide a non-drag alternative.

## Common Failures

- generic `div` wrappers replacing semantic elements
- custom controls with missing keyboard behavior
- page sections without clear headings
- overlays that trap focus incorrectly or return focus to the wrong place
- tiny icon buttons with unclear labels

## Review Output

For audits or implementation tasks, convert findings into:

- structural fixes
- keyboard and focus fixes
- content and label fixes
- state and recovery fixes
