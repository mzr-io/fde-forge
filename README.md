# FDE Forge

A portable Agent Skill for identifying FDE potential, conducting adaptive interviews, generating personalized learning paths, teaching competency gaps, and reassessing readiness.

Built on the open Agent Skills convention. The repository root contains `SKILL.md`, with supporting references, templates and agent metadata.

## Package contents

```text
fde-forge/
├── SKILL.md
├── README.md
├── LICENSE
├── agents/
│   └── openai.yaml
├── references/
│   ├── assessment-playbook.md
│   ├── competency-framework.md
│   ├── scenario-bank.md
│   ├── training-curriculum.md
│   └── workspace-and-installation.md
├── templates/
│   ├── candidate-profile-template.md
│   ├── initial-assessment-template.md
│   ├── learning-path-template.md
│   ├── learning-record-template.md
│   ├── post-training-assessment-template.md
│   └── readiness-report-template.md
└── install/
    └── install.sh
```

## Modes

| Mode | Claude Code | Codex |
|---|---|---|
| Initial assessment | `/fde-forge assess` | `$fde-forge assess` |
| Learning | `/fde-forge learn` | `$fde-forge learn` |
| Reassessment | `/fde-forge reassess` | `$fde-forge reassess` |
| Progress report | `/fde-forge report` | `$fde-forge report` |

If the host does not expose a slash/$ command picker, ask the agent: "Read and follow the fde-forge skill. Start the [assessment/learning/reassessment/report] mode."

## Install with the standard `npx skills` CLI (recommended)

The standard Agent Skills CLI installs this skill into Claude Code, Codex, and other supported agents. The current CLI package requires Node.js 22.20 or later.

### From this extracted folder

Run from the directory containing the `fde-forge` folder:

```bash
npx skills add ./fde-forge
```

Install globally for your user and target Claude Code + Codex explicitly:

```bash
npx skills add ./fde-forge --global --agent claude-code --agent codex
```

### From GitHub (recommended for sharing and updates)

After uploading the contents of this package to a public GitHub repository, install with:

```bash
npx skills add <github-owner>/<github-repository> --global --agent claude-code --agent codex
```

Replace the placeholders with the actual GitHub owner and repository. The repository root must contain `SKILL.md` directly. Once installed from GitHub, update with:

```bash
npx skills update fde-forge
```

### Project-level installation

Run the local or GitHub install command without `--global` from your project directory. The skill will be installed in the project scope and can be shared with the project team.

### Select one agent only

```bash
npx skills add ./fde-forge --global --agent claude-code
npx skills add ./fde-forge --global --agent codex
```

### Check installation

```bash
npx skills list
```

The older `install/install.sh` script is retained as an optional manual installer for users who do not want to use the Skills CLI.

## Activate

After installation, restart or reload the agent if needed. Then ask it to use **FDE Forge** or invoke the skill from the agent's skill picker. The skill supports these modes:

- `assess` — initial adaptive FDE potential assessment
- `learn` — personalized learning and training
- `reassess` — post-training practical assessment
- `report` — progress and readiness report

## First-run workflow

1. Start with `assess`.
2. Answer one question at a time; ask the interviewer to probe your reasoning.
3. Review the initial assessment and training plan.
4. Run `learn` over multiple sessions.
5. Run `reassess` using new scenarios.
6. Review the readiness report.

## Candidate records

The skill asks the agent to preserve records in a candidate workspace. It does not require a database or external service. For a multi-candidate company programme, create one separate workspace per candidate and use a consistent candidate ID. Do not store sensitive personal data that is not needed for capability assessment.

## Important limitations

- This is an assessment aid, not a validated psychometric instrument or legally defensible hiring test.
- Scores require human review and calibration against observed job performance.
- One conversational simulation cannot establish production engineering capability.
- For high-stakes employment decisions, use multiple assessors, consistent rubrics, work samples and an accommodation/fairness review.
- The skill does not automatically access files unless the host agent has filesystem tools and permission.
- No candidate data is transmitted by this package. Data handling depends on the agent harness and the user's account/settings.

## Compatibility

Designed for the portable Agent Skills convention and includes Codex UI metadata. Claude Code and Codex use different discovery locations; the installer places the same skill folder in the appropriate directory.

Official guidance:
- Skills CLI: https://skills.sh/docs/cli
- Skills CLI source and command reference: https://github.com/vercel-labs/skills
