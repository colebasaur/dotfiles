return {
  {
    "catppuccin/nvim",
    opts = {
      flavour = "mocha",
      transparent_background = true,
      float = {
        transparent = true,
      },
      styles = {
        comments = { "italic" },
      },
    },
  },
  -- Configure LazyVim to load colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
