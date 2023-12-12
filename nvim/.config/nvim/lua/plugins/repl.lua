return {
  {
    "Vigemus/iron.nvim",
    keys = {
      {
        "<leader>ii",
        vim.cmd.IronRepl,
        desc = "󱠤 Toggle REPL",
      },
      {
        "<leader>ir",
        vim.cmd.IronRestart,
        desc = "󱠤 Restart REPL",
      },
      -- right hand side defined below
      {
        "<leader>iv",
        desc = "󱠤 Send Visual Selection to REPL",
      },
      {
        "<leader>if",
        desc = "󱠤 Send File to REPL",
      },
      {
        "<leader>il",
        desc = "󱠤 Send Line to REPL",
      },
    },

    -- tell lazy.nvim to `require("iron.core").setup`
    -- instead of `require("iron").setup`
    main = "iron.core",

    opts = {
      keymaps = {
        visual_send = "<leader>iv",
        send_file = "<leader>if",
        send_line = "<leader>il",
      },
      config = {
        repl_open_cmd = "horizontal bot 10 split",

        -- defaults REPLs in https://github.com/Vigemus/iron.nvim/tree/master/lua/iron/fts
      },
    },
  },
}
