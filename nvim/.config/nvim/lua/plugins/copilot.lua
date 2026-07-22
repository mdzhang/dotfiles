return {
  -- GitHub Copilot
  {
    "github/copilot.vim",
    config = function()
      vim.g.copilot_no_tab_map = true
      vim.keymap.set("i", "<C-g>", 'copilot#Accept("<CR>")', {
        expr = true,
        noremap = true,
        silent = true,
        desc = "Copilot Accept",
      })
    end,
  },

  -- Avante.nvim with Claude support via acp
  {
    "yetone/avante.nvim",
    event = "VeryLazy",
    lazy = false,
    build = "make",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
      "stevearc/dressing.nvim",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "hrsh7th/nvim-cmp",
      "nvim-telescope/telescope.nvim",
      {
        "MeanderingProgrammer/render-markdown.nvim",
        opts = {
          file_types = { "markdown", "Avante" },
        },
        ft = { "markdown", "Avante" },
      },
    },
    opts = {
      provider = "claude",
      providers = {
        claude = {
          api_key = os.getenv("ANTHROPIC_API_KEY"),
          model = "claude-3-5-sonnet-20241022",
          extra_request_body = {
            temperature = 0,
            max_tokens = 4096,
          },
        },
      },
      behaviour = {
        auto_suggestions = false,
        auto_set_highlight_group = true,
        auto_apply_diff_after_generation = false,
        support_paste_from_clipboard = false,
      },
      windows = {
        wrap = true,
        width = 30,
        sidebar_header = {
          align = "center",
          rounded = false,
        },
      },
    },
    config = function(_, opts)
      require("avante").setup(opts)
      vim.keymap.set({ "n", "v" }, "<leader>aa", function()
        require("avante.api").ask()
      end, { noremap = true, silent = true, desc = "Avante Ask" })
      vim.keymap.set({ "n", "v" }, "<leader>ae", function()
        require("avante.api").edit()
      end, { noremap = true, silent = true, desc = "Avante Edit" })
    end,
  },
}
