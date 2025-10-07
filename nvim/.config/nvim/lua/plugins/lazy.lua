-- loaded by lazy.nvim via init.lua
-- customize LazyVim
return {
  -- load LazyVim extras
  -- see https://github.com/LazyVim/LazyVim/tree/main/lua/lazyvim/plugins/extras
  -- { import = "lazyvim.plugins.extras.coding.copilot" },
  -- language specific
  { import = "lazyvim.plugins.extras.lang.docker" },
  { import = "lazyvim.plugins.extras.lang.go" },
  { import = "lazyvim.plugins.extras.lang.json" },
  { import = "lazyvim.plugins.extras.lang.markdown" },
  { import = "lazyvim.plugins.extras.lang.python" },
  { import = "lazyvim.plugins.extras.lang.ruby" },
  { import = "lazyvim.plugins.extras.lang.terraform" },
  { import = "lazyvim.plugins.extras.lang.typescript" },
  { import = "lazyvim.plugins.extras.lang.yaml" },
  -- layout manager; must import before aerial
  { import = "lazyvim.plugins.extras.ui.edgy" },
  -- code outline
  { import = "lazyvim.plugins.extras.editor.aerial" },
  { import = "lazyvim.plugins.extras.test.core" },
}
