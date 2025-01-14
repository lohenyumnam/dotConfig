return {
  {
    "ellisonleao/gruvbox.nvim",
    lazy = true,
    -- priority = 1000,
    config = true,
    opts = ...,
  },
  -- material
  {
    "marko-cerovac/material.nvim",
    name = "material",
    lazy = true,
    -- priority = 1000,
    opts = {
      -- disable = {
      --   background = true,
      --   term_colors = true,
      --   eob_lines = true,
      -- },
    },
  },
  -- Catppuccin
  {
    "catppuccin/nvim",
    priority = 1000,
    name = "catppuccin",
    opts = {
      -- transparentbackground = true,
    },
    specs = {
      {
        "akinsho/bufferline.nvim",
        optional = true,
        opts = function(_, opts)
          if (vim.g.colors_name or ""):find("catppuccin") then
            opts.highlights = require("catppuccin.groups.integrations.bufferline").get()
          end
        end,
      },
    },
  },
  {
    "michaeldyrynda/carbon",
    config = function()
      -- vim.cmd("colorscheme carbon")
    end,
  },
  -- rose-pine
  {
    "rose-pine/neovim",
    name = "rose-pine",
  },
  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "gruvbox",
      colorscheme = "catppuccin",
      -- colorscheme = "material",
    },
  },
}
