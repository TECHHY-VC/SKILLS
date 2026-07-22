# Install RepoSync Worker

## Clone the full public catalog

```bash
git clone https://github.com/TECHHY-VC/SKILLS.git
```

The Skill is located at:

```text
SKILLS/skills/reposync-worker
```

## Download only this Skill with sparse checkout

```bash
git clone --filter=blob:none --no-checkout https://github.com/TECHHY-VC/SKILLS.git
cd SKILLS
git sparse-checkout init --cone
git sparse-checkout set skills/reposync-worker
git checkout main
```

## Use in an agent environment

Copy or link the `skills/reposync-worker` directory into the agent's supported Skills directory. The directory must retain:

```text
reposync-worker/
├── SKILL.md
├── agents/openai.yaml
└── references/templates.md
```

After installation, open a repository containing `AGENTS.md` or `.reposync/` and ask the agent to follow the RepoSync protocol.
