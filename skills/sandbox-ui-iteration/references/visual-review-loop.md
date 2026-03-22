# Visual Review Loop

## Use This Reference For

- turning subjective design feedback into a repeatable process
- combining lint, build, deploy, and screenshot review in one loop
- keeping UI iteration controlled across multiple small changes

## Recommended Loop

1. make one coherent UI change
2. run lint
3. build the preview bundle
4. deploy only to the sandbox
5. verify HTTP success
6. capture a screenshot of the changed area
7. compare with the intended layout or user feedback
8. commit a small checkpoint

This loop keeps frontend work reviewable even when the design direction evolves across many small requests.

## Why Screenshots Matter

Code can compile while layout still feels wrong. A screenshot catches:

- spacing issues
- misplaced blocks
- weak button affordance
- hierarchy problems
- unintended density

## Small-Checkpoint Discipline

- Prefer one commit per meaningful UI adjustment.
- Keep commit messages about outcomes, not implementation trivia.
- Push reviewable steps instead of one giant "design update" commit.

## What To Avoid

- batching unrelated UI changes into one preview deploy
- relying only on a successful build as proof of correctness
- skipping visual QA after layout reordering
