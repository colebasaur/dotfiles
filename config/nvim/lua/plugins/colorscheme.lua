return {
  {
    "catppuccin/nvim",
    opts = {
      flavour = "mocha",
      transparent_background = true,
      styles = {},
    },
  },
  { "ellisonleao/gruvbox.nvim" },
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = { style = "moon" },
  },
  {
    "EdenEast/nightfox.nvim",
  },
  {
    "shaunsingh/moonlight.nvim",
  },
  {
    "shaunsingh/nord.nvim",
  },
  -- Configure LazyVim to load colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
      -- colorscheme = "gruvbox",
      -- colorscheme = "tokyonight",
      -- colorscheme = "duskfox",
      -- colorscheme = "nightfox",
      -- colorscheme = "terafox",
      -- colorscheme = "nordfox",
      -- colorscheme = "carbonfox",
      -- colorscheme = "moonlight",
      -- colorscheme = "nord",
    },
  },
}
