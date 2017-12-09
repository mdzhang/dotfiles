# Configs

Configs for things that are too large for a single dotfile. Should generally follow dir structure

```
- <module name e.g. vim>
  \_ modules        # files that should be sourced on module startup
```

Exception for `xdg`, which contains files to be symlinked into `$XDG_CONFIG_HOME`
