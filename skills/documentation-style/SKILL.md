---
name: documentation-style
description: Team style for writing technical documentation. Use this skill when writing or updating README, docs, CHANGELOG, JSDoc, or any other technical documentation in a project.
---

# Team Documentation Style

## General Principles

**Write for the reader, not for yourself.** A developer opens documentation with a specific task — help them solve it in minimum time.

- **Brevity over completeness** — one clear sentence is better than a paragraph of caveats
- **Examples are mandatory** — any API, any concept must have at least one working code example
- **Update CHANGELOG** on any change to public behavior

---

## Language and Tone

- Documentation language matches project language (Russian project — write in Russian; English project — write in English)
- Do not translate technical terms unnecessarily (`middleware`, `payload`, `endpoint`)
- Active voice: "The function returns..." instead of "Returned by the function..."
- No filler: not "This function is intended to..." but "Returns..."

---

## README Structure

```markdown
# Project Name

One line: what it does and for whom.

## Installation

\`\`\`bash
npm install package
\`\`\`

## Quick Start

Minimal working example — no more than 15 lines of code.

## API / Usage

Public interface description with examples.

## Configuration

Options table (if any).

## Contributing

(optional)
```

Rules:
- `## Installation` — commands only, no preamble
- `## Quick Start` — code must run copy-paste without changes
- Do not add badges and shields without explicit request

---

## CHANGELOG Structure

Format [Keep a Changelog](https://keepachangelog.com/):

```markdown
## [2.3.0] - 2026-03-03

### Added
- OAuth2 authorization support (`auth.loginWithOAuth(provider)`)

### Changed
- `login()` now accepts optional third argument `options: LoginOptions`

### Fixed
- Fixed memory leak on WebSocket reconnection (#142)

### Deprecated
- `auth.loginLegacy()` — remove in v3.0.0, use `auth.login()`
```

Categories (only those that exist):
- **Added** — new features
- **Changed** — changes to existing behavior
- **Fixed** — bug fixes
- **Deprecated** — deprecated (with alternative)
- **Removed** — removed features
- **Security** — vulnerabilities

---

## JSDoc

Required tags for public functions:

```js
/**
 * One-line description of what the function does.
 *
 * Additional paragraph if context or limitations need explaining.
 *
 * @param {string} email - User email
 * @param {string} password - Password (minimum 8 characters)
 * @param {LoginOptions} [options] - Optional parameters
 * @param {boolean} [options.remember=false] - Keep session for 30 days
 * @returns {Promise<User>} User object with token
 * @throws {AuthError} If credentials are incorrect
 * @throws {NetworkError} If server is unavailable
 *
 * @example
 * const user = await auth.login('user@example.com', 'secret123');
 * console.log(user.token); // 'eyJhbGci...'
 */
```

Rules:
- First description line — verb in 3rd person: "Returns...", "Executes...", "Checks..."
- `@param` — always include type, name, dash, description
- `@returns` — type and what exactly is returned (not just "promise")
- `@example` is mandatory if function accepts non-trivial arguments
- For `@throws` specify the concrete error type

---

## Code Formatting in Documentation

````markdown
\`\`\`language
// Comment explains intent, not syntax
const result = await api.call(params);
\`\`\`
````

- Always specify language after ` ``` ` (` ```js `, ` ```bash `, ` ```json `)
- Use real, meaningful values in examples: `user@example.com`, not `aaa@bbb.ccc`
- Bash commands do not contain `$` (breaks copy-paste)

---

## Tables for Parameters/Options

```markdown
| Parameter | Type | Default | Description |
|-----------|------|---------|-------------|
| `timeout` | `number` | `5000` | Request timeout in ms |
| `retries` | `number` | `3` | Number of retry attempts |
| `debug` | `boolean` | `false` | Enable verbose logging |
```

- Parameters in backticks
- Types in backticks
- Default values in backticks
- Description — brief, no period at end

---

## What to Avoid

| Bad | Good |
|-----|------|
| "This module provides the ability to..." | "Module does X" |
| `@param data data` | `@param {Object} data - Request body` |
| "TODO: add description" | Write description now |
| Example with `foo`, `bar`, `baz` | Example with real names |
| Documentation without code example | At least one `@example` |
