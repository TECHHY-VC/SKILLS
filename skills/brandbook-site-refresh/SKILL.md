---
name: brandbook-site-refresh
description: Translate a brand book, visual identity guide, or approved logo package into a website or dashboard implementation using checked-in assets, design tokens, and restrained UI decisions. Use when Codex needs to align frontend code with brand materials without leaking private source files into the public repository.
---

# Brandbook Site Refresh

Use this skill when a website or dashboard needs to be brought into alignment with a brand guide, logo package, or approved visual identity.

## What this skill is for

Use this skill when:

- the user provides a brand book, style guide, logo package, or identity notes
- the task is to update an existing site instead of inventing a new visual language
- the implementation needs checked-in web assets, token cleanup, and consistent UI accents
- the work touches both code and branded deliverables such as favicons, page headers, or shared panel styles

Do not use this skill for raw logo creation, illustration work, or speculative rebranding.

## Workflow

1. Identify the approved sources: brand guide, logo files, color values, typography rules, and any minimum-size or usage notes.
2. Distill the non-negotiables into repo-safe rules before touching code:
   - approved mark variants
   - color tokens
   - typography direction
   - spacing or sizing constraints
   - prohibited treatments
3. Check in web-ready derivatives instead of depending on ad hoc local files.
4. Translate the brand rules into site primitives first:
   - CSS variables or theme tokens
   - shared panel and button styles
   - icon and favicon assets
   - section headers and page shell
5. Apply the brand with restraint. Let contrast, hierarchy, and consistent accents carry the system instead of flooding every surface with the accent color.
6. Document the distilled brand rules in a repo-safe note so later tasks do not need the raw source package in context.

## Guardrails

- Do not redraw or rebuild a logo when official artwork already exists.
- Do not commit raw brand source folders that also contain contracts, drafts, or other mixed private materials.
- When the official typeface is unavailable on the web, note the fallback explicitly instead of approximating the logotype.
- Keep accent effects purposeful. A brand halo or glow should support depth and focus, not reduce legibility.
- If the existing site already has good information hierarchy, adapt it to the brand instead of replacing it wholesale.

## Failure modes to watch for

- copying only the logo while leaving the rest of the site visually inconsistent
- hard-coding one-off brand colors instead of creating reusable tokens
- using an accent so aggressively that charts, tables, or UI copy lose contrast
- publishing local absolute paths or mixed confidential source folders
- recreating the wordmark manually and drifting away from the approved artwork

## References

- Open [references/brandbook-distillation.md](references/brandbook-distillation.md) to convert raw brand materials into implementation rules.
- Open [references/token-translation.md](references/token-translation.md) to move brand decisions into code.
- Open [references/asset-handling.md](references/asset-handling.md) for rules around checked-in derivatives and repo-safe asset usage.
