if vim.g.neovide then
  -- Put anything you want to happen only in Neovide here
  -- vim.o.guifont = "Operator Mono Lig,JetBrains Mono:h14" -- text below applies for VimScript

  -- vim.opt.linespace = 13
  vim.o.linespace = 15
  -- vim.g.neovide_scale_factor = 1
  vim.g.neovide_cursor_animation_length = 0.1
  vim.g.neovide_cursor_animate_command_line = true
  vim.g.neovide_cursor_trail_size = 0.05
end
