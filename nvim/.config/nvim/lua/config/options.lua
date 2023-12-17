-- loaded before lazy.nvim startup
vim.opt.relativenumber = false

vim.opt.foldmethod = "syntax"

-- do not keep backups or swapfiles
vim.opt.nobackup = true
vim.opt.nowritebackup = true
vim.opt.noswapfile = true

-- ignore case when searching
vim.opt.ignorecase = true
-- do incremental searching i.e. highlight as pattern typed
vim.opt.incsearch = true

-- replace tab with spaces, except for makefiles
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.nosmartindent = true
vim.opt.softtabstop = 2

local function read_ignore(file)
  local f = io.open(file, "rb")
  if f == nil then
    return {}
  end

  local lines = {}
  for line in io.lines(file) do
    local k, _ = string.match(line, "^#.*")

    -- remove comments and empty lines
    if k == nil and line ~= "" then
      table.insert(lines, line)
    end
  end

  return lines
end

local ignorefile = os.getenv("HOME") .. "/.ignore"
vim.opt.wildignore = read_ignore(ignorefile)

-- exit terminal mode using Esc
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]])
