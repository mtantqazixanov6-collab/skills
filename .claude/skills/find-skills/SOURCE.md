# Source

Copied unchanged from [vercel-labs/skills](https://github.com/vercel-labs/skills/tree/57217cf86ba38148a57af9e90d14a4c049558330/skills/find-skills)
at commit `57217cf86ba38148a57af9e90d14a4c049558330`. MIT License, © Vercel, Inc. (see `LICENSE`).

Kept in `.claude/skills/` (project-scoped for Claude Code), not in `skills/`, so it is not
published or listed as one of the Remotion skills.

Searching requires network access to `skills.sh`. In Claude Code cloud sessions (which route
traffic through a proxy), Node's built-in `fetch` ignores `HTTPS_PROXY`, so the CLI silently
reports "No skills found". Run it as `NODE_USE_ENV_PROXY=1 npx skills find <query>` there.
