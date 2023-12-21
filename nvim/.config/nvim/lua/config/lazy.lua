local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- install lazy.nvim if not installed at ~/.local/share/nvim/lazy/lazy.nvim
if not vim.loop.fs_stat(lazypath) then
  -- stylua: ignore
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath
  })
end
vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

require("lazy").setup({
  spec = {
    -- bootstrap LazyVim
    {
      "LazyVim/LazyVim",
      import = "lazyvim.plugins",
    },

    -- load all plugins/*.lua files
    { import = "plugins" },
  },
  defaults = {
    lazy = false, -- set to true to have all custom plugins loaded by default
    version = false, -- always use the latest git commit
  },
  install = { colorscheme = {} },
  checker = { enabled = false }, -- don't automatically check for plugin updates
  performance = {
    rtp = {
      -- disable some rtp plugins
      disabled_plugins = {
        "gzip",
        -- "matchit",
        -- "matchparen",
        -- "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})
