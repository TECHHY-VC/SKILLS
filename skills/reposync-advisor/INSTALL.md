# Install RepoSync Advisor

## Clone the full public catalog

```bash
git clone https://github.com/TECHHY-VC/SKILLS.git
```

The Skill is located at:

```text
SKILLS/skills/reposync-advisor
```

## Download only this Skill with sparse checkout

```bash
git clone --filter=blob:none --no-checkout https://github.com/TECHHY-VC/SKILLS.git
cd SKILLS
git sparse-checkout init --cone
git sparse-checkout set skills/reposync-advisor
git checkout main
```

## Use in an agent environment

Copy or link the `skills/reposync-advisor` directory into the agent's supported Skills directory. The directory must retain:

```text
reposync-advisor/
├── SKILL.md
├── agents/openai.yaml
└── references/evaluation-rubric.md
```

After installation, give the Advisor access to the relevant GitHub repository and ask it to review completed RepoSync Work Items and propose recommendation updates through a Pull Request.
