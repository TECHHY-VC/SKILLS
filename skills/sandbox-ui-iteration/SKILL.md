---
name: sandbox-ui-iteration
description: Iterate on production-backed website UI safely through a sandbox or preview path using sandbox-only deploys, visual QA, and rollback-friendly checkpoints. Use when making design or layout changes that should be validated without experimenting on the live site.
---

# Sandbox UI Iteration

## Overview

Use this skill when frontend work should be tested on a live-like environment without touching production. The objective is to create a predictable loop for layout changes, visual audits, user feedback, and small release checkpoints.

This skill complements deploy skills. It is about safe iteration discipline, not only upload mechanics.

## Workflow

1. Confirm the sandbox or preview URL, build mode, and remote target path before changing UI.
2. Keep production and sandbox outputs isolated at both build-time and deploy-time.
3. Make a small batch of UI changes instead of combining multiple redesign ideas into one release.
4. Build locally and verify the preview bundle before upload.
5. Deploy only to the sandbox or preview path.
6. Validate with both HTTP checks and visual checks.
7. Gather feedback, make the next small correction, and repeat.
8. Only propose production release after the sandbox has passed review.

## Default Operating Assumptions

- Preview environments exist to reduce risk, not to add ceremony.
- Visual QA matters as much as successful deploy output.
- Small checkpoints are easier to review, revert, and explain.
- Temporary deploy artifacts should be removed after verification.
- A sandbox should use generic, public-safe wording if screenshots or links may be shared.

## Reference Guide

- [references/preview-isolation.md](references/preview-isolation.md): Keep sandbox and production outputs separate.
- [references/visual-review-loop.md](references/visual-review-loop.md): Run the repeatable QA loop for frontend preview work.

## Execution Notes

- If the site is static, prefer local build plus single-archive deploys for deterministic preview releases.
- Keep the preview path stable so feedback links do not change every iteration.
- When reviewing visual changes, capture screenshots of the affected area instead of relying only on memory.
- Treat user feedback as a sequence of small layout decisions, not as a reason to restart the design from scratch.
