# Responsive Media And Layout

## Use This Reference For

- responsive images
- component-level layout adaptation
- balancing visual quality with stability and download cost

## Mobile-First Parity

Important content should remain present across mobile and desktop views. Do not let smaller screens become a reduced-content version unless the user explicitly accepts the tradeoff.

## Container-First Thinking

Use container queries when a component must adapt to the space it actually occupies rather than the whole viewport.

This is especially helpful for:

- cards in mixed-width grids
- related content modules
- sidebars that collapse into stacked sections
- widgets reused across multiple templates

## Example Pattern

```css
.card {
  container-type: inline-size;
  display: grid;
  gap: 1rem;
}

@container (min-width: 32rem) {
  .card {
    grid-template-columns: 10rem 1fr;
  }
}
```

## Responsive Image Baseline

Serve images with explicit dimensions, responsive candidates, and correct priority:

```html
<img
  src="/img/hero-800.jpg"
  srcset="/img/hero-800.jpg 800w, /img/hero-1200.jpg 1200w, /img/hero-1600.jpg 1600w"
  sizes="(max-width: 48rem) 100vw, 75rem"
  width="1600"
  height="900"
  alt="Product overview"
  fetchpriority="high"
  decoding="async"
/>
```

## Media Rules

- Reserve space for images and embeds to avoid layout shift.
- Give LCP media deliberate priority.
- Lazy-load offscreen media, not the first-screen asset that explains the page.
- Match placeholder shape to final content shape.

## What To Avoid

- hiding critical images or text behind JavaScript-only enhancement
- viewport-only breakpoints for heavily reused components
- decorative media that arrives before task-critical content
