---
name: jump-host-static-deploy
description: Deploy static frontend builds such as Vite, React, or plain HTML sites to Nginx-served Linux VPSes through an SSH jump host or bastion using local builds, tar archives, scp, ssh, and host-header verification. Use when Codex needs to publish or update a static site on a remote server without a managed platform, especially when access is only available through a jump host.
---

# Jump Host Static Deploy

Use this skill for simple and repeatable static-site releases where the build happens locally and the server only needs the final files.

## Required Inputs

Collect these before touching the server:

- local build command
- local build output directory
- archive output path
- SSH key path
- jump host in `user@host` form
- target host in `user@host` form
- remote temporary archive path
- remote web root
- verification host header or public URL

## Workflow

1. Build the site locally and confirm the output directory exists.
2. Archive the deployable directory so upload is one file, not thousands.
3. Upload through the jump host with `scp -J`.
4. Connect through the jump host with `ssh -J`.
5. Replace the remote web root contents with the archived build.
6. Verify the site from the server with `curl` against `127.0.0.1` plus the expected `Host` header.
7. Verify the public URL if one exists.
8. Remove temporary deploy archives from both local and remote machines.

## Guardrails

- Confirm whether the archive contains a top-level `dist/` folder before using `--strip-components=1`.
- Prefer extracting a tested archive over copying loose files.
- When downtime matters, extract into a temporary directory and swap directories instead of deleting the live root first.
- Keep the Nginx config path, remote web root, and verification host separate in your notes so they do not get mixed up.
- If the site is served by IP without a domain, verify both the direct IP response and the server-local `curl` response where possible.

## References

- Open `references/commands.md` for PowerShell and bash templates.
