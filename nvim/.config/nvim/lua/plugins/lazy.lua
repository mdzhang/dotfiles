-- loaded by lazy.nvim via init.lua
-- customize LazyVim
return {
  --
  -- MOVEMENT
  --
  {
    "folke/flash.nvim",
    event = "VeryLazy",
  },

  --
  -- LAYOUT
  --

  -- file tree explorer
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        filtered_items = {
          visible = true,
          hide_dotfiles = false, -- show dotfiles
          hide_gitignored = true,
        },
      },
    },
  },

  -- code outline
  {
    "simrat39/symbols-outline.nvim",
    cmd = "SymbolsOutline",
    keys = {
      {
        "<leader>cs",
        "<cmd>SymbolsOutline<cr>",
        desc = "Symbols Outline",
      },
    },
    config = true,
  },

  -- bottom tray to show issues
  {
    "folke/trouble.nvim",
    opts = {
      use_diagnostic_signs = true,
      auto_open = true, -- pin
    },
  },

  -- layout manager; must import before aerial
  { import = "lazyvim.plugins.extras.ui.edgy" },
  -- code outline
  { import = "lazyvim.plugins.extras.editor.aerial" },

  --
  -- SEARCH
  --

  -- change some telescope options and a keymap to browse plugin files
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      -- add a keymap to browse plugin files
      -- stylua: ignore
      {
        "<leader>fp",
        function()
          require("telescope.builtin").find_files({
            cwd = require("lazy.core.config").options.root
          })
        end,
        desc = "Find Plugin File",
      },
      {
        "<leader>fg",
        function()
          require("telescope.builtin").live_grep()
        end,
        desc = "Find string",
      },
      {
        "<leader>fz",
        function()
          require("telescope").extensions.zoxide.list()
        end,
        desc = "Find with zoxide",
      },
    },
    -- change some options
    opts = {
      defaults = {
        layout_strategy = "horizontal",
        layout_config = { prompt_position = "top" },
        sorting_strategy = "ascending",
        winblend = 0,
      },
    },
  },

  -- add telescope-fzf-native
  {
    "telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("fzf")
      end,
    },
  },

  -- add telescope-zoxide
  {
    "telescope.nvim",
    dependencies = {
      "jvgrootveld/telescope-zoxide",
      config = function()
        require("telescope").load_extension("zoxide")
      end,
    },
  },

  --
  -- SYNTAX, LINTING, FORMATTING, etc.
  --

  -- add more treesitter parsers
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      configs = {
        endwise = {
          -- RRethy/nvim-treesitter-endwise not working as expected
          enable = false,
        },
      },
      ensure_installed = {
        "bash",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "ruby",
        "tsx",
        "typescript",
        "vim",
        "yaml",
      },
    },
  },

  -- docstring scaffolding
  {
    "danymat/neogen",
    dependencies = "nvim-treesitter/nvim-treesitter",
    config = function()
      require("neogen").setup({
        enabled = true,
      })

      vim.keymap.set(
        { "n" },
        "<leader>nc",
        ":lua require('neogen').generate({ type = 'class' })<CR>",
        { noremap = true, silent = true, desc = "Generate [c]lass annotations" }
      )
      vim.keymap.set(
        { "n" },
        "<leader>nf",
        ":lua require('neogen').generate()<CR>",
        { noremap = true, silent = true, desc = "Generate [f]unction annotations" }
      )
    end,
  },

  -- load LazyVim extras
  -- see https://github.com/LazyVim/LazyVim/tree/main/lua/lazyvim/plugins/extras
  { import = "lazyvim.plugins.extras.coding.copilot" },
  -- language specific
  { import = "lazyvim.plugins.extras.lang.docker" },
  { import = "lazyvim.plugins.extras.lang.go" },
  { import = "lazyvim.plugins.extras.lang.json" },
  { import = "lazyvim.plugins.extras.lang.markdown" },
  { import = "lazyvim.plugins.extras.lang.python" },
  { import = "lazyvim.plugins.extras.lang.ruby" },
  { import = "lazyvim.plugins.extras.lang.rust" },
  { import = "lazyvim.plugins.extras.lang.terraform" },
  { import = "lazyvim.plugins.extras.lang.typescript" },
  { import = "lazyvim.plugins.extras.lang.yaml" },

  -- setup LSP servers, DAP servers, linters, and formatters
  -- see https://github.com/mason-org/mason-registry/tree/main/packages
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shellcheck",
        "shfmt",
        "ruff",
        "solargraph",
      },
    },
  },

  --
  -- TESTING
  --
  { import = "lazyvim.plugins.extras.test.core" },
  {
    "nvim-neotest/neotest",
    dependencies = {
      "olimorris/neotest-rspec",
    },
    opts = {
      adapters = {
        ["neotest-rspec"] = {
          rspec_cmd = function()
            return vim.tbl_flatten({
              "docker",
              "compose",
              "exec",
              "-i",
              "api-backend",
              "bundle",
              "exec",
              "rspec",
            })
          end,

          transform_spec_path = function(path)
            local prefix = require("neotest-rspec").root(path)
            return string.sub(path, string.len(prefix) + 2, -1)
          end,

          results_path = "tmp/rspec.output",
        },
      },
    },
  },

  --
  -- VCS
  --
  {
    "lewis6991/gitsigns.nvim",
    event = "LazyFile",
    opts = {
      current_line_blame = true, -- show git blame inline
    },
  },
}
