return {
  {
    "neovim/nvim-lspconfig",
    priority = 1000,
    opts = {
      servers = {
        tsserver = {
          enabled = false,
        },
        ts_ls = {
          enabled = false,
        },
        vtsls = {
          enabled = true,
          settings = {
            -- List of Settings
            -- https://github.com/yioneko/vtsls/blob/main/packages/service/configuration.schema.json
            typescript = {
              updateImportsOnFileMove = { enabled = "always" },
              suggest = {
                completeFunctionCalls = true,
              },
              inlayHints = {
                enumMemberValues = { enabled = true },
                -- functionLikeReturnTypes = { enabled = true },
                parameterNames = { enabled = "all" },
                parameterTypes = { enabled = true },
                propertyDeclarationTypes = { enabled = true },
                variableTypes = { enabled = false },
                referencesCodeLens = {
                  showOnAllFunctions = { enabled = false },
                  enabled = false,
                },
              },
            },
          },
        },
      },
    },
    -- config = function()
    --   require("lspconfig").quick_lint_js.setup({})
    -- end,
  },
}
