return {
  "nvim-telescope/telescope.nvim",
  lazy = false,
  priority = 1000,
  extensions = {
    media_files = {
      filetypes = { "png", "jpg", "jpeg", "mp4", "webm", "pdf" }, -- file types to support
      find_cmd = "rg", -- command to find media files
    },
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope-media-files.nvim",
  },
  config = function()
    require("telescope").load_extension("media_files")
  end,
}
