return {
  -- {
  --   "neovim/nvim-lspconfig",
  --   priority = 1000,
  --   opts = {
  --     servers = {
  --       vtsls = {
  --         settings = {
  --           -- List of Settings
  --           -- https://github.com/yioneko/vtsls/blob/main/packages/service/configuration.schema.json
  --           typescript = {
  --             updateImportsOnFileMove = { enabled = "always" },
  --             suggest = {
  --               completeFunctionCalls = true,
  --             },
  --             inlayHints = {
  --               enumMemberValues = { enabled = true },
  --               -- functionLikeReturnTypes = { enabled = true },
  --               parameterNames = { enabled = "all" },
  --               parameterTypes = { enabled = true },
  --               propertyDeclarationTypes = { enabled = true },
  --               variableTypes = { enabled = false },
  --               referencesCodeLens = {
  --                 showOnAllFunctions = { enabled = false },
  --                 enabled = false,
  --               },
  --             },
  --           },
  --         },
  --       },
  --     },
  --   },
  --   -- config = function()
  --   --   require("lspconfig").quick_lint_js.setup({})
  --   -- end,
  -- },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        vtsls = {
          enabled = false,
        },
        tsserver = {
          enabled = true,
          settings = {
            typescript = {
              inlayHints = {
                includeInlayEnumMemberValueHints = true,
                includeInlayFunctionLikeReturnTypeHints = true,
                includeInlayFunctionParameterTypeHints = true,
                includeInlayParameterNameHints = "literals",
                includeInlayParameterNameHintsWhenArgumentMatchesName = false,
                includeInlayPropertyDeclarationTypeHints = true,
                includeInlayVariableTypeHints = false,
                includeInlayVariableTypeHintsWhenTypeMatchesName = false,
              },
            },
            completions = {
              completeFunctionCalls = true,
            },
          },
          keys = {
            {
              "<leader>co",
              function()
                vim.lsp.buf.code_action({
                  apply = true,
                  context = {
                    only = { "source.organizeImports.ts" },
                    diagnostics = {},
                  },
                })
              end,
              desc = "Organize Imports",
            },
            {
              "<leader>cR",
              function()
                vim.lsp.buf.code_action({
                  apply = true,
                  context = {
                    only = { "source.removeUnused.ts" },
                    diagnostics = {},
                  },
                })
              end,
              desc = "Remove Unused Imports",
            },
          },
        },
      },
      setup = {
        tsserver = function()
          return false
        end,
        vtsls = function()
          return true
        end,
      },
    },
  }
}
