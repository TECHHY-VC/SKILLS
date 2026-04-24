---
name: prd-quality-review
description: perform a final quality review of a software prd before engineering handoff. use when a prd draft already exists and chatgpt needs to identify ambiguity, contradictions, missing scope decisions, weak acceptance logic, unclear flows, duplicate requirements, and sections that will likely create delivery confusion or rework. suitable as the final review step in a prd workflow.
---

# PRD Quality Review

## Purpose

Use this skill for the final quality review of a PRD before engineering handoff.

The focus is clarity, completeness, consistency, scope discipline, and execution readiness.

This skill is universal and does not require connectors or external sources.

## When to use

Use this skill when:

- a PRD draft already exists;
- the user asks to review or improve a PRD;
- the team wants to check readiness before development;
- the PRD may contain ambiguity, contradictions, vague requirements, or scope creep;
- the PRD needs a final red-team check.

## Main rule

Review the PRD from the perspective of product, design, engineering, QA, and operations.

Ask: where would the team still need to guess?

## Workflow

Follow this process:

1. Read the PRD end to end.
2. Check whether the release boundary is clear.
3. Check whether the problem statement and target users are clear.
4. Check whether current and future workflows are coherent.
5. Check whether requirements are testable.
6. Check for contradictions and duplication.
7. Check whether metrics are meaningful.
8. Check whether dependencies and risks are explicit.
9. Identify delivery confusion points.
10. Produce a structured review in Russian.

## Review dimensions

Check these areas:

- problem clarity
- target user clarity
- release scope
- out-of-scope clarity
- current workflow
- future workflow
- functional requirements
- non-functional requirements
- acceptance logic
- metrics
- dependencies
- risks
- open questions
- consistency across sections
- delivery readiness

## Common PRD failure modes

Look for:

- no clear primary user;
- scope too broad;
- weak or missing out-of-scope;
- strategy mixed chaotically with delivery detail;
- current workflow unclear;
- future workflow incomplete;
- requirements not testable;
- metrics vague or missing;
- dependencies implied but not named;
- important edge cases omitted;
- duplicated requirements;
- conflicting requirements;
- unresolved decisions hidden inside requirements;
- too much vision and not enough execution detail.

## Output format

Always answer in Russian using this structure:

# Final PRD Quality Review: [Название PRD]

## 1. Overall quality verdict

Выберите один статус:

- strong prd
- workable but needs revision
- weak prd and needs restructuring

Затем объясните решение.

## 2. What is already strong

Кратко перечислите сильные стороны документа.

## 3. Key ambiguities

Перечислите места, где формулировки слишком общие или допускают разные трактовки.

Для каждого пункта:

- ambiguous point;
- why it creates delivery risk;
- recommended clarification.

## 4. Contradictions or inconsistencies

Перечислите конкретные противоречия.

Если противоречий нет, напишите: “Явных противоречий не обнаружено.”

## 5. Missing decisions

Перечислите решения, которые команда должна принять до передачи в разработку.

## 6. Likely delivery confusion points

Опишите, где product, design, engineering, QA или operations могут понять документ по-разному.

## 7. Recommended edits

Разделите на:

### High-impact edits

Правки, которые нужно сделать в первую очередь.

### Medium-impact edits

Полезные правки, которые улучшат качество документа.

### Optional improvements

Некритичные улучшения.

## 8. Final readiness checklist

Дайте checklist:

- release scope is clear: yes/no
- primary user is clear: yes/no
- current workflow is clear: yes/no
- future workflow is clear: yes/no
- requirements are testable: yes/no
- success metrics are defined: yes/no
- dependencies are explicit: yes/no
- risks are explicit: yes/no
- ready for engineering handoff: yes/no

## Quality bar

A PRD is strong when:

- the release boundary is obvious;
- the main actor is clear;
- the main workflow is coherent;
- requirements are testable;
- success metrics are meaningful;
- risks and dependencies are explicit;
- engineering, design, QA, and operations can work from it without major guessing.
