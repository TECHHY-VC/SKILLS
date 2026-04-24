---
name: prd-discovery
description: turn messy product ideas, notes, roadmap fragments, meeting notes, scope documents, user feedback, research snippets, or problem statements into a structured software product discovery brief. use when chatgpt needs to clarify the user problem, target users, jobs to be done, assumptions, constraints, evidence, success signals, and open questions before writing a prd.
---

# PRD Discovery

## Purpose

Use this skill before writing a PRD.

The goal is to transform ambiguous product input into a clear discovery brief that explains the problem, target users, context, evidence, assumptions, constraints, and open questions.

This skill is universal and does not require connectors or external sources. Work only with the text, files, notes, or context provided by the user.

## When to use

Use this skill when the user provides:

- a product idea
- a rough feature request
- messy notes
- meeting notes
- roadmap fragments
- a large scope document
- a product vision
- customer feedback
- internal process description
- early product requirements
- a draft that is not yet ready for PRD writing

## Main rule

Do not jump directly into features.

First clarify:

- what problem exists
- who has the problem
- why it matters
- what outcome is expected
- what evidence exists
- what assumptions are still unverified

## Workflow

Follow this process:

1. Identify the input type.
2. Extract the core problem.
3. Identify the primary user or actor.
4. Identify secondary users, operators, admins, reviewers, or external actors.
5. Describe the current workflow or current workaround.
6. Identify the desired outcome.
7. Separate facts from assumptions.
8. Identify constraints.
9. Identify open questions.
10. Produce a structured discovery brief in Russian.
11. Finish with a PRD readiness verdict.

## Input type classification

Classify the input into one or more of these types:

- idea only
- feature request
- roadmap fragment
- scope document
- messy notes
- meeting summary
- user feedback
- competitor inspiration
- internal operations problem
- platform vision
- draft PRD

If the input combines several types, mention this and synthesize them.

## Rules for reasoning

- Treat only user-provided information as fact.
- Mark assumptions explicitly.
- Do not invent market data.
- Do not pretend missing evidence exists.
- If the user provides a broad platform vision, narrow it into a specific initiative.
- If the input is too broad, identify the most reasonable first initiative.
- If the input mixes several modules, separate them.
- If the product is operator-assisted, explicitly capture operator workflows.
- If trust, identity, compliance, security, or money movement are involved, mark them as high-risk discovery areas.

## Output format

Always answer in Russian using this structure:

# Discovery Brief: [Название инициативы]

## 1. Initiative summary

Кратко опишите инициативу в 1–2 абзацах.

## 2. Problem statement

Опишите:

- какая проблема существует сейчас;
- у кого она возникает;
- в каком контексте;
- почему её важно решать.

## 3. Target users and actors

Опишите:

- primary user;
- secondary users;
- internal operators / reviewers / admins, если применимо;
- external parties, если применимо.

## 4. Current workflow or workaround

Опишите:

- как процесс работает сейчас;
- какие ручные действия существуют;
- где возникают задержки, ошибки, потери данных, потери доверия или операционный хаос.

## 5. Desired outcomes

Разделите на:

### User outcomes

Что должно стать проще, быстрее, безопаснее или понятнее для пользователя.

### Business outcomes

Какой бизнес-эффект ожидается.

### Operational outcomes

Какой эффект ожидается для команды, операторов или внутренних процессов.

## 6. Evidence available

Перечислите только то, что реально есть во входных материалах:

- факты;
- сигналы;
- пользовательские жалобы;
- продуктовый контекст;
- операционные наблюдения.

## 7. Assumptions

Перечислите предположения, которые пока не доказаны.

Формат:

- Assumption 1:
- Assumption 2:
- Assumption 3:

## 8. Constraints

Разделите на:

- product constraints;
- technical constraints;
- operational constraints;
- legal / compliance / trust constraints;
- timeline or resource constraints.

## 9. Open questions

Сформулируйте только вопросы, которые реально влияют на будущий PRD.

Не задавайте слишком много вопросов. Лучше 5–10 сильных вопросов, чем длинный список.

## 10. PRD readiness verdict

Выберите один статус:

- ready for prd drafting
- partially ready for prd drafting
- not ready for prd drafting

Затем объясните, почему.

## Quality bar

A strong discovery brief should:

- be more structured than the original input;
- separate facts and assumptions;
- identify the real problem behind the feature request;
- clarify target users and actors;
- show what is missing before PRD writing;
- help the next skill produce a strong PRD.
