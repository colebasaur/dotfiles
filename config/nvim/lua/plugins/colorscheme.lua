return {
  "catppuccin/nvim",
  opts = {
    flavour = "mocha",
    transparent_background = true,
    styles = {
    }
  },
  config = function(_, opts)
    require("catppuccin").setup(opts)
    vim.cmd("colorscheme catppuccin")
  end,
}
-- hello world
