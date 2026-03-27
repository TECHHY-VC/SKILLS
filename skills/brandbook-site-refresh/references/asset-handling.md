# Asset Handling

## Repo-safe asset strategy

- Check in web-ready derivatives such as SVG logos, favicons, and optimized raster exports.
- Keep the source of truth for implementation inside the repo, even if the original brand package lives elsewhere.
- Prefer clean filenames and a stable asset map so future tasks do not need to rediscover which file is correct.

## What not to publish

- mixed source folders that include legal, financial, or strategic documents
- private brand packages with non-public working files
- local absolute file paths copied into public docs

## Logo handling

- use the official artwork
- do not trace or rebuild it from scratch
- when multiple variants exist, document which one is the default and when to use alternates
