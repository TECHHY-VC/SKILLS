---
name: publish-public-skills
description: Publish and update shared public Codex skills in the canonical repository TECHHY-VC/SKILLS. Use when Codex needs to create, update, sync, commit, or push a skill that should be publicly available, or when the user asks to add a skill to the shared public skills repository. Treat TECHHY-VC/SKILLS as the default and only public destination unless the user explicitly overrides it.
---

# Publish Public Skills

Use `https://github.com/TECHHY-VC/SKILLS` as the canonical public skills repository.

Do not publish public skills to any other repository unless the user explicitly asks for a different destination.

## Workflow

1. Start in a clean local clone of `TECHHY-VC/SKILLS`.
2. Fetch or pull `main` before editing.
3. Add or update the skill under `skills/<skill-name>/`.
4. Include `SKILL.md` and `agents/openai.yaml`. Add references, assets, or scripts only when they are required.
5. Validate the skill structure when the validator is available.
6. Stage only the intended skill files.
7. Commit with a focused message that names the skill change.
8. Push to `origin main` unless the user explicitly asks for another branch or PR flow.

## Repository Rules

- Canonical public repo: `TECHHY-VC/SKILLS`
- Canonical path: `skills/<skill-name>/`
- Treat this repo as the single default public home for shared skills.
- Do not spread public skills across multiple repositories without explicit instruction.
- Keep unrelated local files and local-only skills out of the public commit.
- Prefer one focused skill change per commit when practical.

## Local Sync

If a local installed copy of the skill library exists, keep the local skill in sync after the public repo version is ready.

## Verification

- Check `git status` before commit.
- Confirm the commit landed on the remote after push.
- If push output is unclear, verify with `git fetch`, `git status --short --branch`, or `git ls-remote origin refs/heads/main`.

## Output Standard

- Report the skill name.
- Report the commit hash.
- Report whether the push succeeded.
- If push is blocked, say exactly what is missing, for example auth, remote, or permissions.
