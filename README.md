# FDE Forge

A portable Agent Skill for identifying FDE potential, conducting adaptive interviews, generating personalized learning paths, teaching competency gaps, and reassessing readiness.

Built on the open Agent Skills folder convention: a skill directory containing `SKILL.md` plus optional references, templates and metadata.

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

## Install

### Option A — Automated user-level installation (macOS/Linux)

Unzip the package, enter the extracted `fde-forge` directory, then run:

```bash
chmod +x install/install.sh
./install/install.sh --claude
./install/install.sh --codex
./install/install.sh --both
```

This installs for the current user across projects:
- Claude Code: `~/.claude/skills/fde-forge/`
- Codex: `~/.agents/skills/fde-forge/`

Use `--project` to install into the current directory's project scope:
```bash
./install/install.sh --claude --project
./install/install.sh --codex --project
./install/install.sh --both --project
```

The installer makes a timestamped backup if the destination already exists. It does not remove unrelated skills.

### Option B — Manual user-level installation

Copy the entire `fde-forge` folder to:

**Claude Code**
```text
~/.claude/skills/fde-forge/
```

**Codex**
```text
~/.agents/skills/fde-forge/
```

### Option C — Manual project-level installation

Copy the folder into your repository:

**Claude Code**
```text
<project>/.claude/skills/fde-forge/
```

**Codex**
```text
<project>/.agents/skills/fde-forge/
```

Keep `SKILL.md` directly inside the `fde-forge` directory.

## Activate

### Claude Code
Restart/reload the session if needed, then run:
```text
/fde-forge assess
```

### Codex
Restart Codex if the skill does not appear, then invoke:
```text
$fde-forge assess
```
Or use the skill picker (`/skills`) and select `fde-forge`.

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
- Claude Code skills: https://platform.claude.com/docs/en/agents-and-tools/agent-skills/overview
- Codex skills: https://learn.chatgpt.com/docs/build-skills
