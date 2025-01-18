return {
  "nvimtools/none-ls.nvim",
  event = "LazyFile",
  dependencies = {
    "davidmh/cspell.nvim", -- install cSpell globally also by using "npm install -g cspell@latest"
  },
  config = function()
    local cspell = require("cspell")
    require("null-ls").setup({
      sources = {
        cspell.diagnostics,
        cspell.code_actions,
      },
    })
  end,
}
