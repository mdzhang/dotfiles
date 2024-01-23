return {
  -- code folding
  {
    "kevinhwang91/nvim-ufo",
    dependencies = {
      "kevinhwang91/promise-async",
    },
    config = function()
      vim.o.foldmethod = "syntax"
      vim.o.foldcolumn = "1"
      vim.o.foldlevel = 99
      vim.o.foldlevelstart = 99
      vim.o.foldenable = true

      require("ufo").setup({
        provider_selector = function(bufnr, filetype, buftype)
          return { "treesitter", "indent" }
        end,
      })
    end,
  },

  -- autopairs
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    dependencies = {
      -- wants to hook into <CR> mappings set by cmp
      "hrsh7th/nvim-cmp",
    },
    config = function()
      local npairs = require("nvim-autopairs")

      npairs.setup({
        disable_filetype = {
          "TelescopePrompt",
        },
      })

      npairs.add_rules(require("nvim-autopairs.rules.endwise-ruby"))
    end,
  },

  -- ai
  {
    "jackMort/ChatGPT.nvim",
    event = "VeryLazy",
    opts = {
      popup_input = {
        submit_n = "<C-Enter>",
        submit = "<Enter>",
      },
    },
    config = function()
      require("chatgpt").setup()
    end,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "folke/trouble.nvim",
      "nvim-telescope/telescope.nvim",
    },
  },
}
