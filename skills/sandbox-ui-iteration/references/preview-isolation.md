# Preview Isolation

## Use This Reference For

- separating sandbox and production deploy targets
- avoiding accidental production changes during UI experiments
- documenting the minimum data needed for safe preview releases

## Isolation Rules

- Use a dedicated preview path, host, or build mode.
- Keep the preview web root separate from the production web root.
- Verify preview deploys against the preview URL, not only the main domain.
- Name local artifacts so they clearly indicate preview versus production purpose.

## Minimum Checklist

Before deploying to a sandbox, confirm:

- local build command
- preview build mode if applicable
- preview output path
- remote preview path
- remote temp archive path
- verification URL or host header

If any of these are ambiguous, stop and resolve them before release.

## Safe Defaults

- Prefer sandbox-only deploy commands over commands that require editing a target path each time.
- Remove preview archives from both local and remote environments after verification.
- Keep the preview URL stable so the feedback loop stays simple.

## What To Avoid

- preview and production pointing at the same web root
- one-off manual file copies with no verification step
- "quick" changes on production because the sandbox path feels slower
