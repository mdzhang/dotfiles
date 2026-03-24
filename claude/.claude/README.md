# Claude Code config

Files in here are symlinked to `~/.claude`

## Structure

```
claude/
├── setup.sh                  # bootstrap script
├── settings.json             # claude settings
├── skills/                   # one-off skills
│   └── <skill-name>/
│       └── SKILL.md
└── plugins/
    ├── local/                # local marketplace
    │   ├── .claude-plugin/
    │   │   └── marketplace.json
    │   └── plugins/
    │       └── <plugin-name>/
    │           ├── .claude-plugin/
    │           │   └── plugin.json
    │           └── skills/
    │               └── <skill-name>/
    │                   └── SKILL.md
    └── marketplaces/         # git submodule marketplaces (e.g. anthropics/claude-code)
```

## Adding a one-off skill

User-invoked skill (slash command) example:

```markdown
---
name: skill-name
description: Short description shown in /help
argument-hint: <arg1> [optional-arg]
---

Skill instructions here.
```

Minimal model-invoked skill (triggered by task context):

```markdown
---
name: skill-name
description: Conditions under which this skill should activate
version: 1.0.0
---

Skill instructions here.
```

## Adding a local plugin

1. Create `plugins/local/plugins/<plugin-name>/.claude-plugin/plugin.json`:

```json
{
  "name": "plugin-name",
  "description": "What it does"
}
```

1. Add skills under `plugins/local/plugins/<plugin-name>/skills/<skill-name>/SKILL.md`.

2. Register the plugin in `plugins/local/.claude-plugin/marketplace.json`:

```json
{
  "plugins": [
    {
      "name": "plugin-name",
      "description": "What it does",
      "source": "./plugins/plugin-name"
    }
  ]
}
```

The local marketplace is registered in `setup.sh` via:

```bash
plugin_marketplace_add ~/.dotfiles/claude/plugins/local
```
