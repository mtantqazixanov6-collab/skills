#!/bin/bash
# skills.txt-dəki bütün skill-ləri Claude Code üçün qlobal quraşdırır (~/.claude/skills).
# Skill adı "*" olarsa, həmin mənbədəki bütün skill-lər quraşdırılır.
cd "$(dirname "$0")"
grep -vE '^\s*(#|$)' skills.txt | while read -r repo skill; do
  if [ "$skill" = "*" ]; then set -- ; else set -- --skill "$skill"; fi
  NODE_USE_ENV_PROXY=1 npx -y skills add "$repo" "$@" -g -a claude-code -y </dev/null >/dev/null 2>&1 \
    && echo "ok: $repo $skill" || echo "FAILED: $repo $skill"
done
