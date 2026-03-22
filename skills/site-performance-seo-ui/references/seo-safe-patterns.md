# SEO-Safe UI Patterns

## Use This Reference For

- semantic page structure
- JavaScript-heavy UI that still needs indexing
- lazy loading, infinite scroll, and overlay behavior

## Semantic Baseline

- use headings to express structure, not only style
- use `nav`, `main`, `header`, `footer`, lists, and buttons according to meaning
- ensure links are real links and actions are real buttons

Semantic structure helps both assistive technology and search engines understand the page.

## Rendering Strategy

If the page's primary content depends on JavaScript to appear, consider server rendering, pre-rendering, or progressive enhancement. Users and crawlers should both receive the main meaning of the page without waiting for fragile client execution.

## Lazy Loading Rules

- lazy-load below-the-fold assets, not primary content
- keep important text and links in the DOM when possible
- verify that content still exists without scroll-triggered hacks

## Infinite Scroll Rules

If the interface keeps loading more items on scroll, also provide paginated URLs or another crawlable path to the same content. Discovery should not depend on endless scrolling behavior.

## Structured Data Rule

Only emit structured data that matches the visible content of the page. Do not use schema markup as a speculative SEO trick.

## Overlay And Popup Rule

Promotional overlays, cookie banners, and newsletter prompts must not bury the page's primary content or block users before they can orient themselves.

## Review Checklist

- can the main content be understood without advanced client execution?
- do important items have stable URLs?
- does lazy loading preserve discoverability?
- is the first screen value proposition visible without a blocking popup?
