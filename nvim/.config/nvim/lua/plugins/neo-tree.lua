return {
  -- file explorer
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        filtered_items = {
          hide_dotfiles = false,
          visible = true, -- All "hide" just mean "dimmed out"
          hide_gitignored = false,
        },
      },
    },
  },
}
