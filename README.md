# SKILLS

Public, sanitized skills for Claude Code and compatible AI agents.

This repository contains only generalized skill packages reviewed to avoid:

- corporate hostnames and internal infrastructure details
- local private paths and usernames
- keys, secrets, or deployment credentials
- project-specific sensitive context

## Available Skills

### Content & Style
- [`skills/copywriter`](skills/copywriter) — Financial analysis articles, educational trading content, and market reviews in a clear mentor-style voice
- [`skills/documentation-style`](skills/documentation-style) — Team style for README, CHANGELOG, JSDoc technical documentation
- [`skills/team-coding-standards`](skills/team-coding-standards) — Code review standards: naming conventions, JSDoc requirements, why-comments

### Web Development
- [`skills/web-coding-workflow`](skills/web-coding-workflow) — Full Reuse-First + Security-First workflow for implementing web features
- [`skills/playwright`](skills/playwright) — Automate real browsers from the terminal via playwright-cli
- [`skills/recharts-stacked-interactivity`](skills/recharts-stacked-interactivity) — Interactive stacked area and pie charts in React/Recharts
- [`skills/jump-host-static-deploy`](skills/jump-host-static-deploy) — Deploy static sites via SSH jump host to Nginx on Linux VPS
- [`skills/sandbox-ui-iteration`](skills/sandbox-ui-iteration) — Sandbox-first workflow for safe frontend iteration, visual QA, and production isolation
- [`skills/browser-first-ux-qa`](skills/browser-first-ux-qa) — Browser-first QA flow for role-based UX validation with evidence-ready bug reporting

### Website Design & UX
- [`skills/site-design-system`](skills/site-design-system) — Design systems, tokens, component contracts, and reusable page structure for websites
- [`skills/site-accessibility-layout`](skills/site-accessibility-layout) — WCAG-first semantic layout, forms, navigation, focus handling, and keyboard-safe patterns
- [`skills/site-performance-seo-ui`](skills/site-performance-seo-ui) — Core Web Vitals, responsive media, and crawl-safe interface patterns for modern websites
- [`skills/site-ux-states-patterns`](skills/site-ux-states-patterns) — Loading, empty, error, success, disclosure, and motion patterns for resilient website UX
- [`skills/dashboard-reading-flow`](skills/dashboard-reading-flow) — Information hierarchy for analytical dashboards: snapshot, controls, interpretation, charts, and drill-downs
- [`skills/ux-ui-oss-playbook`](skills/ux-ui-oss-playbook) — Open-source UX/UI best-practice playbook (GOV.UK, USWDS, Primer, Cloudscape, PatternFly, Polaris, Ant Design)
- [`skills/role-based-cabinet-ux`](skills/role-based-cabinet-ux) — Role-based cabinet journeys and privacy-safe design for multi-role users without duplicate accounts

### Context Engineering
- [`skills/context-fundamentals`](skills/context-fundamentals) — Foundational concepts: context components, attention mechanics, progressive disclosure
- [`skills/context-degradation`](skills/context-degradation) — Patterns of context failure: lost-in-middle, poisoning, distraction, confusion, clash
- [`skills/context-compression`](skills/context-compression) — Compression strategies for long-running agent sessions exceeding context limits
- [`skills/context-optimization`](skills/context-optimization) — Techniques for extending effective context capacity: compaction, masking, KV-cache, partitioning
- [`skills/filesystem-context`](skills/filesystem-context) — Using the filesystem for agent memory: scratch pads, plan persistence, dynamic skill loading

### Multi-Agent & Architecture
- [`skills/multi-agent-patterns`](skills/multi-agent-patterns) — Supervisor, swarm, and hierarchical multi-agent architectures with context isolation
- [`skills/hosted-agents`](skills/hosted-agents) — Remote sandboxed agent infrastructure: image registry, warm pools, self-spawning agents
- [`skills/tool-design`](skills/tool-design) — Designing tools for LLMs: consolidation principle, architectural reduction, MCP naming
- [`skills/memory-systems`](skills/memory-systems) — Agent memory frameworks: Mem0, Zep/Graphiti, Letta, Cognee — benchmarks and selection guide
- [`skills/project-development`](skills/project-development) — LLM project methodology: task-model fit, pipeline architecture, cost estimation

### Evaluation & Quality
- [`skills/evaluation`](skills/evaluation) — Evaluation methods for agent systems: LLM-as-judge, multi-dimensional rubrics, continuous testing
- [`skills/advanced-evaluation`](skills/advanced-evaluation) — Production-grade LLM-as-judge: direct scoring, pairwise comparison, bias mitigation

### Skill Optimization
- [`skills/skillopt-alfworld`](skills/skillopt-alfworld) — Seed guidance for ALFWorld tasks optimized with SkillOpt
- [`skills/skillopt-docvqa`](skills/skillopt-docvqa) — Seed guidance for DocVQA tasks optimized with SkillOpt
- [`skills/skillopt-livemathematicianbench`](skills/skillopt-livemathematicianbench) — Seed guidance for LiveMathematicianBench tasks optimized with SkillOpt
- [`skills/skillopt-officeqa`](skills/skillopt-officeqa) — Seed guidance for OfficeQA tasks optimized with SkillOpt
- [`skills/skillopt-searchqa`](skills/skillopt-searchqa) — Seed guidance for SearchQA tasks optimized with SkillOpt
- [`skills/skillopt-skillreview`](skills/skillopt-skillreview) — Seed guidance for rubric-based repository review tasks optimized with SkillOpt
- [`skills/skillopt-spreadsheetbench`](skills/skillopt-spreadsheetbench) — Seed guidance for SpreadsheetBench tasks optimized with SkillOpt

### Product Requirements
- [`skills/prd-discovery`](skills/prd-discovery) — Convert messy product input into a structured discovery brief
- [`skills/prd-scope-slicer`](skills/prd-scope-slicer) — Cut broad scope into a realistic v1 and release backlog
- [`skills/prd-writer`](skills/prd-writer) — Write a full Russian PRD for software development
- [`skills/prd-risk-nfr-review`](skills/prd-risk-nfr-review) — Review PRDs for security, privacy, NFRs, auditability, and operations
- [`skills/prd-quality-review`](skills/prd-quality-review) — Red-team PRDs before engineering handoff

### Specialized
- [`skills/bdi-mental-states`](skills/bdi-mental-states) — BDI (Belief-Desire-Intention) mental state modeling with RDF/OWL ontology

<!-- TPO-SKILLS-START -->
### Technical Product Owner Agent
- [skills/tpo-acceptance-criteria-template](skills/tpo-acceptance-criteria-template) — Guideline module for Acceptance Criteria Template: preserves templates, checklists, gates, and execution rules
- [skills/tpo-ai-developer-task-template](skills/tpo-ai-developer-task-template) — Guideline module for Ai Developer Task Template: preserves templates, checklists, gates, and execution rules
- [skills/tpo-api-design-standards](skills/tpo-api-design-standards) — Guideline module for Api Design Standards: preserves templates, checklists, gates, and execution rules
- [skills/tpo-architecture-and-module-planning-guidelines](skills/tpo-architecture-and-module-planning-guidelines) — Guideline module for Architecture And Module Planning Guidelines: preserves templates, checklists, gates, and execution rules
- [skills/tpo-architecture-principles](skills/tpo-architecture-principles) — Guideline module for Architecture Principles: preserves templates, checklists, gates, and execution rules
- [skills/tpo-backend-architecture](skills/tpo-backend-architecture) — Guideline module for Backend Architecture: preserves templates, checklists, gates, and execution rules
- [skills/tpo-bug-tracking-template](skills/tpo-bug-tracking-template) — Guideline module for Bug Tracking Template: preserves templates, checklists, gates, and execution rules
- [skills/tpo-code-review-checklist](skills/tpo-code-review-checklist) — Guideline module for Code Review Checklist: preserves templates, checklists, gates, and execution rules
- [skills/tpo-code-ux-qa-review-checklist](skills/tpo-code-ux-qa-review-checklist) — Guideline module for Code Ux Qa Review Checklist: preserves templates, checklists, gates, and execution rules
- [skills/tpo-coding-standards](skills/tpo-coding-standards) — Guideline module for Coding Standards: preserves templates, checklists, gates, and execution rules
- [skills/tpo-database-design-rules](skills/tpo-database-design-rules) — Guideline module for Database Design Rules: preserves templates, checklists, gates, and execution rules
- [skills/tpo-definition-of-done](skills/tpo-definition-of-done) — Guideline module for Definition Of Done: preserves templates, checklists, gates, and execution rules
- [skills/tpo-definition-of-ready](skills/tpo-definition-of-ready) — Guideline module for Definition Of Ready: preserves templates, checklists, gates, and execution rules
- [skills/tpo-design-review-checklist](skills/tpo-design-review-checklist) — Guideline module for Design Review Checklist: preserves templates, checklists, gates, and execution rules
- [skills/tpo-development-stages-template](skills/tpo-development-stages-template) — Guideline module for Development Stages Template: preserves templates, checklists, gates, and execution rules
- [skills/tpo-examples-of-good-outputs](skills/tpo-examples-of-good-outputs) — Guideline module for Examples Of Good Outputs: preserves templates, checklists, gates, and execution rules
- [skills/tpo-frontend-architecture](skills/tpo-frontend-architecture) — Guideline module for Frontend Architecture: preserves templates, checklists, gates, and execution rules
- [skills/tpo-interface-quality-criteria](skills/tpo-interface-quality-criteria) — Guideline module for Interface Quality Criteria: preserves templates, checklists, gates, and execution rules
- [skills/tpo-module-structure-guidelines](skills/tpo-module-structure-guidelines) — Guideline module for Module Structure Guidelines: preserves templates, checklists, gates, and execution rules
- [skills/tpo-product-owner-agent-operating-manual](skills/tpo-product-owner-agent-operating-manual) — Guideline module for Product Owner Agent Operating Manual: preserves templates, checklists, gates, and execution rules
- [skills/tpo-product-requirements-template](skills/tpo-product-requirements-template) — Guideline module for Product Requirements Template: preserves templates, checklists, gates, and execution rules
- [skills/tpo-release-checklist](skills/tpo-release-checklist) — Guideline module for Release Checklist: preserves templates, checklists, gates, and execution rules
- [skills/tpo-repository-structure](skills/tpo-repository-structure) — Guideline module for Repository Structure: preserves templates, checklists, gates, and execution rules
- [skills/tpo-roadmap-sprint-release-template](skills/tpo-roadmap-sprint-release-template) — Guideline module for Roadmap Sprint Release Template: preserves templates, checklists, gates, and execution rules
- [skills/tpo-roadmap-template](skills/tpo-roadmap-template) — Guideline module for Roadmap Template: preserves templates, checklists, gates, and execution rules
- [skills/tpo-security-checklist](skills/tpo-security-checklist) — Guideline module for Security Checklist: preserves templates, checklists, gates, and execution rules
- [skills/tpo-sprint-planning-template](skills/tpo-sprint-planning-template) — Guideline module for Sprint Planning Template: preserves templates, checklists, gates, and execution rules
- [skills/tpo-technical-specification-template](skills/tpo-technical-specification-template) — Guideline module for Technical Specification Template: preserves templates, checklists, gates, and execution rules
- [skills/tpo-testing-guidelines](skills/tpo-testing-guidelines) — Guideline module for Testing Guidelines: preserves templates, checklists, gates, and execution rules
- [skills/tpo-user-flow-template](skills/tpo-user-flow-template) — Guideline module for User Flow Template: preserves templates, checklists, gates, and execution rules
- [skills/tpo-ux-ui-guidelines](skills/tpo-ux-ui-guidelines) — Guideline module for Ux Ui Guidelines: preserves templates, checklists, gates, and execution rules
<!-- TPO-SKILLS-END -->

## Contributing

More skills can be added after the same sanitization pass:
- remove corporate hostnames and internal paths
- remove keys, tokens, credentials
- generalize project-specific context to reusable patterns
