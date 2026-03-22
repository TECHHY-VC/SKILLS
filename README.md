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

### Website Design & UX
- [`skills/site-design-system`](skills/site-design-system) — Design systems, tokens, component contracts, and reusable page structure for websites
- [`skills/site-accessibility-layout`](skills/site-accessibility-layout) — WCAG-first semantic layout, forms, navigation, focus handling, and keyboard-safe patterns
- [`skills/site-performance-seo-ui`](skills/site-performance-seo-ui) — Core Web Vitals, responsive media, and crawl-safe interface patterns for modern websites
- [`skills/site-ux-states-patterns`](skills/site-ux-states-patterns) — Loading, empty, error, success, disclosure, and motion patterns for resilient website UX

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

### Specialized
- [`skills/bdi-mental-states`](skills/bdi-mental-states) — BDI (Belief-Desire-Intention) mental state modeling with RDF/OWL ontology

## Contributing

More skills can be added after the same sanitization pass:
- remove corporate hostnames and internal paths
- remove keys, tokens, credentials
- generalize project-specific context to reusable patterns
