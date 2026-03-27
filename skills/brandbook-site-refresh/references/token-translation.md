# Token Translation

After distilling the brand, map it into code in this order:

1. color tokens
2. typography tokens
3. shared surface styles
4. interactive states
5. reusable layout and header treatments

## Practical pattern

- Put durable brand colors into CSS variables or theme tokens.
- Keep the neutral surface system separate from the accent system.
- Use the accent mainly for active states, focus, selected chips, and restrained ambient lighting.
- Update shared components first so brand adoption is systemic rather than page-local.

## Good outcomes

- a favicon and logo asset that match the site
- consistent section headers and panels
- fewer one-off hex values in component files
- a site that looks branded even when the logo is not on screen
