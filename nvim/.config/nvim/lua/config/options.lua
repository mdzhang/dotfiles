-- loaded before lazy.nvim startup
vim.o.relativenumber = false

vim.o.clipboard = "unnamed"

-- do not keep backups or swapfiles
vim.o.nobackup = true
vim.o.nowritebackup = true
vim.o.noswapfile = true

-- ignore case when searching
vim.o.ignorecase = true
-- do incremental searching i.e. highlight as pattern typed
vim.o.incsearch = true

-- replace tab with spaces, except for makefiles
vim.o.expandtab = true
vim.o.autoindent = true
vim.o.nosmartindent = true
vim.o.softtabstop = 2

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
