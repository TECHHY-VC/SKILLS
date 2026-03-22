---
name: jump-host-static-deploy
description: Deploy static frontend builds such as Vite, React, or plain HTML sites to Nginx-served Linux VPSes through an SSH jump host or bastion using local builds, tar archives, scp, ssh, and host-header verification. Use when Codex needs to publish or update a static site on a remote server without a managed platform, especially when access is only available through a jump host.
---

# Jump Host Static Deploy

Use this skill for simple and repeatable static-site releases where the build happens locally and the server only needs the final files.

## What this skill is for

Use this skill when:

- the project is a static frontend build such as Vite, React, or plain HTML
- the target host is a Linux VPS serving files from Nginx
- access to the target host goes through a jump host or bastion
- the user wants a deterministic deploy path without introducing a managed platform

Do not use this skill for container deployments, server-rendered apps, or infrastructure that is already managed by a platform-specific deploy tool.

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

If any of these are missing, gather them before touching the live server. Missing deploy details create avoidable rollback risk.

## Workflow

1. Build the site locally and confirm the output directory exists.
2. Archive the deployable directory so upload is one file, not thousands.
3. Upload through the jump host with `scp -J`.
4. Connect through the jump host with `ssh -J`.
5. Replace the remote web root contents with the archived build.
6. Verify the site from the server with `curl` against `127.0.0.1` plus the expected `Host` header.
7. Verify the public URL if one exists.
8. Remove temporary deploy archives from both local and remote machines.

## Deployment strategy notes

Prefer this flow when you want a low-complexity release:

- local build for deterministic output
- single archive upload for predictable transfer
- remote extraction for fast replacement
- server-local `curl` for verification even if public routing is cached or filtered

This is often the simplest safe path for brochure sites, dashboards, and static microsites.

## Guardrails

- Confirm whether the archive contains a top-level `dist/` folder before using `--strip-components=1`.
- Prefer extracting a tested archive over copying loose files.
- When downtime matters, extract into a temporary directory and swap directories instead of deleting the live root first.
- Keep the Nginx config path, remote web root, and verification host separate in your notes so they do not get mixed up.
- If the site is served by IP without a domain, verify both the direct IP response and the server-local `curl` response where possible.

## Failure modes to watch for

- extracting the wrong folder depth and ending up with `/dist/dist/...`
- uploading the right archive to the wrong host
- verifying only the public URL and missing an Nginx host-header mismatch
- leaving old archives on the server and confusing later deploys
- deleting the live directory before confirming the new archive is valid

Treat verification as part of the deploy, not as an optional follow-up.

## References

- Open `references/commands.md` for PowerShell and bash templates.
