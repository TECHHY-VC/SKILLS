---
name: team-coding-standards
description: Team coding rules for automated code review. Use this skill when reviewing PRs, analyzing code for standards compliance, or checking naming conventions, JSDoc, or code comments.
---

# Team Coding Standards

## Naming

| Type | Style | Example |
|------|-------|---------|
| Variables | `camelCase` | `userName`, `isLoading`, `fetchedData` |
| Constants | `UPPER_SNAKE_CASE` | `MAX_RETRIES`, `API_BASE_URL`, `DEFAULT_TIMEOUT` |
| Classes | `PascalCase` | `UserService`, `HttpClient`, `DataProcessor` |
| Functions | `camelCase` | `getUserById()`, `parseResponse()` |
| Interfaces/types | `PascalCase` | `UserProfile`, `ApiResponse` |
| Private fields | `_camelCase` (prefix `_`) | `_cache`, `_retryCount` |

### Common Naming Errors

❌ `my_variable`, `MY_variable` → ✅ `myVariable`
❌ `MAXRETRIES`, `max_retries` → ✅ `MAX_RETRIES`
❌ `userservice`, `user_service` → ✅ `UserService`

## Documentation

### Public APIs — JSDoc required

Any public function, method, class or exported variable **must** have a JSDoc comment.

```js
/**
 * Gets a user by identifier.
 * @param {string} id - Unique user identifier
 * @returns {Promise<User>} User object
 * @throws {NotFoundError} If user not found
 */
export async function getUserById(id) { ... }
```

Minimum JSDoc includes: description, `@param` for each parameter, `@returns`.

### Complex logic — Why-comments

For non-obvious logic, write **why**, not **what** the code does.

❌ Bad:
```js
// Increment counter by 2
counter += 2;
```

✅ Good:
```js
// Skip header (row 0) and total (last row),
// so start at index 1 and go to length-1
for (let i = 1; i < rows.length - 1; i++) { ... }
```

Complexity criterion: if the next developer will spend > 30 seconds understanding — a comment is needed.

## Application in Review

When analyzing a diff, check **only lines with `+`** (new/changed code). Lines with `-` (deleted code) are not reviewed.

Violation priority:
1. **High**: missing JSDoc on public APIs
2. **Medium**: incorrect naming conventions
3. **Low**: missing why-comments on complex logic
