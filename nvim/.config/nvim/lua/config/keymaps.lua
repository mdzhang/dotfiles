-- loaded on the VeryLazy event
-- default: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

local map = vim.keymap.set

-- exit terminal mode using Esc
map("t", "<Esc>", [[<C-\><C-n>]])

-- get current buf file name in register
map("n", "<leader>fy", function()
  vim.fn.setreg("+", vim.fn.expand("%"))
end, { desc = "Yank file name (relative)" })
