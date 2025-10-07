return {
  -- GitHub integration
  {
    "pwntester/octo.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
      "nvim-tree/nvim-web-devicons",
    },
    config = true,
  },
  {
    "Almo7aya/openingh.nvim",
    keys = {
      {
        "<leader>go",
        "<cmd>OpenInGHFile<cr>",
        desc = "Open in GitHub",
      },
    },
  },
  {
    "lewis6991/gitsigns.nvim",
    event = "LazyFile",
    opts = {
      current_line_blame = true, -- show git blame inline
    },
  },
}
