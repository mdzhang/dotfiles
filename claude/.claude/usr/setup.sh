#!/bin/bash

set -ex

mcp_add() { claude mcp get "$1" &>/dev/null || claude mcp add "${@}"; }
plugin_add() { claude plugin add "$1" 2>/dev/null || true; }
plugin_marketplace_add() { claude plugin marketplace add "$1" 2>/dev/null || true; }

# MCP
mcp_add notion --transport http https://mcp.notion.com/mcp --scope user
mcp_add slack --transport http https://mcp.slack.com/mcp --scope user
mcp_add figma-remote-mcp --transport http https://mcp.figma.com/mcp --scope user
mcp_add context7 --transport http https://mcp.context7.com/mcp --scope user
mcp_add github --transport http https://api.githubcopilot.com/mcp/ --scope user
mcp_add fetch --transport stdio --scope user -- npx -y @modelcontextprotocol/server-fetch
mcp_add filesystem --transport stdio --scope user -- npx -y @modelcontextprotocol/server-filesystem ~/src
mcp_add sqlite --transport stdio --scope user -- npx -y @modelcontextprotocol/server-sqlite ~/.local/share/claude.db
mcp_add gmail --transport http https://mcp.gmail.com/mcp --scope user
mcp_add google-calendar --transport http https://mcp.googlecalendar.com/mcp --scope user

# Marketplaces
plugin_marketplace_add anthropics/claude-code
plugin_marketplace_add ~/.dotfiles/claude/plugins/local

# Plugins
plugin_add anthropics/claude-code/security-guidance
plugin_add anthropics/claude-code/code-review       # /code-review
plugin_add anthropics/claude-code/pr-review-toolkit # /pr-review
plugin_add anthropics/claude-code/commit-commands   # /commit, /commit-push-pr
plugin_add anthropics/claude-code/code-simplifier   # /simplify
plugin_add anthropics/claude-code/feature-dev       # /feature-dev, multi-agent
plugin_add anthropics/claude-code/frontend-design
plugin_add anthropics/claude-code/hookify              # /hookify, manage hooks
plugin_add anthropics/claude-code/claude-md-management # /revise-claude-md
plugin_add anthropics/claude-code/test-generation
plugin_add anthropics/claude-code/infra-review
plugin_add anthropics/claude-code/data-analysis

# Skills
npx playbooks add skill davila7/claude-code-templates --skill prompt-engineer -y -g
npx playbooks add skill davila7/claude-code-templates --skill graphite-workflow -y -g
npx playbooks add skill davila7/claude-code-templates --skill data-analysis -y -g
npx playbooks add skill davila7/claude-code-templates --skill sql-expert -y -g
