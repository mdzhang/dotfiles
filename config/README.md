# Configs

This directory is symlinked to `$XDG_CONFIG_HOME`

Directory summary:

Each directory is named after the tool it configures e.g. `zsh`. Under that configs are split into

| Name | Purpose |
|------|---------|
| opt  | Third party stuff; can be copy pasted or a git submodule |
| usr  | My stuff |

For fairly simple config dirs, `rc` files are dropped at the top level.

See [here](https://wiki.archlinux.org/index.php/XDG_Base_Directory_support) for more on XDG support. Tools that don't support XDG should have their `rc` files in the top level of this project and symlinked to a file inside this directory.
