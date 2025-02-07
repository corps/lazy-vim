return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim", opts = { terminal_colors = true, contrast = "hard" } },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}
