#!/bin/bash
# skills.txt-dəki bütün skill-ləri Claude Code üçün qlobal quraşdırır (~/.claude/skills).
cd "$(dirname "$0")"
grep -vE '^\s*(#|$)' skills.txt | while read -r repo skill; do
  NODE_USE_ENV_PROXY=1 npx -y skills add "$repo" --skill "$skill" -g -a claude-code -y </dev/null >/dev/null 2>&1 \
    && echo "ok: $skill" || echo "FAILED: $skill"
done
