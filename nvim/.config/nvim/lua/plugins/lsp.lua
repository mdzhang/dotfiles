local lspconfig = require("lspconfig")
local util = lspconfig.util

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        tsserver = {
          settings = {
            typescript = {
              inlayHints = {
                includeInlayParameterNameHints = "all",
                includeInlayParameterNameHintsWhenArgumentMatchesName = false,
                includeInlayFunctionLikeReturnTypeHints = true,
                includeInlayEnumMemberValueHints = true,
              },
            },
            javascript = {
              inlayHints = {
                includeInlayParameterNameHints = "all",
                includeInlayParameterNameHintsWhenArgumentMatchesName = false,
                includeInlayFunctionLikeReturnTypeHints = true,
                includeInlayEnumMemberValueHints = true,
              },
            },
          },
          init_options = {
            preferences = {
              quotePreference = "single",
              importModuleSpecifierPreference = "relative",
            },
          },
          on_new_config = function(config, root_dir)
            -- Check if jest is installed in the project
            if util.path.exists(util.path.join(root_dir, "node_modules", "@types", "jest")) then
              if not config.settings then
                config.settings = {}
              end
              if not config.settings.typescript then
                config.settings.typescript = {}
              end
              config.settings.typescript.tsserver = {
                useSeparateSyntaxServer = false,
              }
            end
          end,
        },
      },
    },
  },
}




