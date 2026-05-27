---
name: skillopt-skillreview
description: Use when solving skillreview benchmark tasks with the shipped SkillOpt seed guidance.
---

# Code Review Skill

## Review Objective

- Identify architecture boundary violations.
- Identify unsafe migrations and missing rollback paths.
- Identify correctness risks and missing test coverage.
- Keep findings actionable and grounded in the provided context.

## Response Format

- Use concise bullet points.
- For each finding include: severity, issue, evidence, and proposed fix.
- Avoid rewriting unrelated modules or inventing requirements not present in context.
