#!/usr/bin/env bash
set -euo pipefail

usage() {
  cat <<'EOF'
FDE Forge installer

Usage:
  ./install/install.sh --claude [--project]
  ./install/install.sh --codex  [--project]
  ./install/install.sh --both   [--project]

Default: install for the current user across projects.
--project: install into the current working directory's project scope.

The script must be run from the extracted fde-forge package directory,
or pass the package directory as FDE_SKILL_SOURCE.
EOF
}

TARGET="both"
SCOPE="user"

while [[ $# -gt 0 ]]; do
  case "$1" in
    --claude) TARGET="claude" ;;
    --codex) TARGET="codex" ;;
    --both) TARGET="both" ;;
    --project) SCOPE="project" ;;
    -h|--help) usage; exit 0 ;;
    *) echo "Unknown option: $1" >&2; usage; exit 2 ;;
  esac
  shift
done

SOURCE="${FDE_SKILL_SOURCE:-$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)}"
if [[ ! -f "$SOURCE/SKILL.md" ]]; then
  echo "Cannot find SKILL.md in source directory: $SOURCE" >&2
  exit 1
fi

if [[ "$SCOPE" == "project" ]]; then
  ROOT="$PWD"
  CLAUDE_BASE="$ROOT/.claude/skills"
  CODEX_BASE="$ROOT/.agents/skills"
else
  HOME_DIR="${HOME:?HOME is not set}"
  CLAUDE_BASE="$HOME_DIR/.claude/skills"
  CODEX_BASE="$HOME_DIR/.agents/skills"
fi

install_to() {
  local dest="$1"
  local parent
  parent="$(dirname "$dest")"
  mkdir -p "$parent"

  if [[ -e "$dest" ]]; then
    local stamp backup
    stamp="$(date +%Y%m%d-%H%M%S)"
    backup="${dest}.backup-${stamp}"
    mv "$dest" "$backup"
    echo "Existing installation backed up to: $backup"
  fi

  mkdir -p "$dest"
  (cd "$SOURCE" && tar --exclude='./.DS_Store' -cf - .) | (cd "$dest" && tar -xf -)
  echo "Installed: $dest"
}

if [[ "$TARGET" == "claude" || "$TARGET" == "both" ]]; then
  install_to "$CLAUDE_BASE/fde-forge"
fi

if [[ "$TARGET" == "codex" || "$TARGET" == "both" ]]; then
  install_to "$CODEX_BASE/fde-forge"
fi

echo
echo "Installation complete."
if [[ "$TARGET" == "claude" || "$TARGET" == "both" ]]; then
  echo "Claude Code: /fde-forge assess"
fi
if [[ "$TARGET" == "codex" || "$TARGET" == "both" ]]; then
  echo 'Codex: $fde-forge assess (or select it from /skills)'
fi
echo "Restart/reload the agent if the skill is not discovered."
