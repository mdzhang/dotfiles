vim.filetype.add({
  filename = {
    [".Rprofile"] = "r",
    [".arcconfig"] = "json",
    [".arclint"] = "json",
    [".dockerignore"] = "conf",
    [".envrc"] = "sh",
    [".eslintrc"] = "json",
    [".esprintrc"] = "json",
    [".prettierrc"] = "json",
    [".yamllint"] = "yaml",
    ["Brewfile"] = "ruby",
    ["go.mod"] = "go",
  },
  pattern = {
    ["*.cf"] = "dosini",
    ["*.cfg"] = "dosini",
    ["*.conf"] = "dosini",
    ["*.es6"] = "javascript",
    ["*.jenkinsfile"] = "groovy",
    ["*.muttrc"] = "muttrc",
    ["*.soql"] = "sql",
    ["*.tpl"] = "gohtmltmpl",
    ["*Dangerfile"] = "ruby",
    ["*_test.rb"] = "rspec",
  },
})

vim.filetype.add({
  extension = {
    astro = "astro",
  },
})
