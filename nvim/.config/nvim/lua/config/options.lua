-- loaded before lazy.nvim startup
vim.opt.relativenumber = false

vim.opt.foldmethod = "syntax"

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
