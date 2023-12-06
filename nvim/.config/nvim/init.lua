-- neovim loads this file on startup

-- load vanilla vim settings
vim.cmd("source ~/.vim/pack/usr/base.vim")

-- bootstrap lazy.nvim
require("config.lazy")
