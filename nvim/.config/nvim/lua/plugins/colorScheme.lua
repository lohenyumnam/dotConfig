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
    lazy = true,
    config = function()
      -- vim.cmd("colorscheme carbon")
    end,
  },
  -- rose-pine
  {
    "rose-pine/neovim",
    name = "rose-pine",
  },
  -- gruvbox-material
  {
    "https://github.com/sainnhe/gruvbox-material",
    lazy = true,
  },
  -- TokyoNight Transparent
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = false,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },
  -- GitHub Theme
  {
    "projekt0n/github-nvim-theme",
    -- name = "github-theme",
    -- lazy = false, -- make sure we load this during startup if it is your main colorscheme
    -- priority = 1000, -- make sure to load this before all the other start plugins
    --   config = function()
    --     require("github-theme").setup({})
    --     vim.cmd("colorscheme github_dark")
    --   end,
  },
  -- everforest
  -- :help everforest.txt
  {
    "sainnhe/everforest",
    -- lazy = false, -- make sure we load this during startup if it is your main colorscheme
    -- priority = 1000, -- make sure to load this before all the other start plugins
    -- config = function()
    --   vim.g.everforest_background = "hard" -- 'hard', 'medium'(default), 'soft'
    --   vim.cmd("colorscheme everforest")
    -- end,
  },

  -- Configure LazyVim to load colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "gruvbox",
      -- colorscheme = "catppuccin",
      -- colorscheme = "material",
      -- colorscheme = "material-darker",
      -- colorscheme = "tokyonight-night",
      colorscheme = "tokyonight",
      -- colorscheme = "github_dark",
      -- colorscheme = "everforest",
    },
  },
}
