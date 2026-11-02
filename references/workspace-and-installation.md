# Workspace and Installation

## Candidate workspace

For a programme, create one separate folder per candidate, for example:

```text
fde-candidates/
  CAND-0001/
    candidate-profile.md
    assessments/
      initial-assessment.md
      post-training-assessment.md
    learning-path/
      personalized-training-plan.md
    learning-records/
      lesson-01.md
      lesson-02.md
    reports/
      fde-readiness-report.md
```

Use a candidate ID rather than a full name where possible. Restrict access to assessment records. Follow company retention, privacy and employment policies.

## Skill installation locations

### Claude Code
- User-level: `~/.claude/skills/fde-forge/`
- Project-level: `<repo>/.claude/skills/fde-forge/`

### Codex
- User-level: `~/.agents/skills/fde-forge/`
- Project-level: `<repo>/.agents/skills/fde-forge/`

The skill directory must contain `SKILL.md` at its top level.

## Manual installation

Copy the complete `fde-forge` folder into the appropriate directory above. Do not copy only `SKILL.md`, because the skill references supporting files.

## Verification

After installation, restart or reload the agent if needed. Invoke the skill explicitly and ask it to read the FDE Forge skill. Confirm it can access:
- `SKILL.md`
- `references/competency-framework.md`
- `references/assessment-playbook.md`
- `references/training-curriculum.md`

If the agent cannot read sibling reference files, verify the skill was copied as a complete folder and that the path is correct.
