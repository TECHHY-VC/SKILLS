# Design Tokens

## Use This Reference For

- defining or refactoring visual primitives
- translating design decisions into code-safe variables
- reducing drift between mockups and implementation

## Minimum Token Set

Start with a compact system:

- color
- typography
- spacing
- radius
- shadow
- layout width or container scales
- motion duration and easing

Only add more categories when repetition makes them useful.

## Token Design Rules

- Name tokens by purpose, not by raw appearance.
- Prefer semantic names such as `surface`, `text-muted`, or `action-primary`.
- Keep brand-specific names only when the repository already uses them.
- Separate base tokens from semantic tokens when themes or brands may change later.

## Good Naming Pattern

- base tokens: `--color-blue-600`, `--space-16`
- semantic tokens: `--color-action-primary`, `--space-section-gap`

Use semantic tokens in components whenever possible so the visual system can evolve without rewriting component CSS.

## Implementation Pattern

```css
:root {
  --color-surface: #ffffff;
  --color-surface-strong: #f3f5f7;
  --color-text: #0f1720;
  --color-text-muted: #4d5b6a;
  --color-action-primary: #0057ff;
  --space-2: 0.125rem;
  --space-4: 0.25rem;
  --space-8: 0.5rem;
  --space-16: 1rem;
  --space-24: 1.5rem;
  --radius-sm: 0.375rem;
  --radius-md: 0.75rem;
  --shadow-md: 0 12px 32px rgba(15, 23, 32, 0.12);
  --motion-fast: 120ms;
  --motion-base: 220ms;
  --ease-standard: cubic-bezier(0.2, 0, 0, 1);
}
```

## Token Quality Checklist

- Can the token be reused across multiple components?
- Does the name survive a future redesign?
- Is the token tied to meaning instead of a single page?
- Can designers and developers both map the token to the same concept?

## Scaling Advice

When syncing between design tools and code, keep the token schema portable. Favor simple naming and flat structures that can later map into multi-platform token pipelines without renaming everything.

Avoid deeply nested token trees unless the design system genuinely needs multiple themes, brands, or density modes.

## Common Mistakes

- encoding final pixel values directly in components
- using too many near-duplicate color tokens
- creating token names that only make sense in one page section
- mixing semantic and raw token naming without a clear rule
