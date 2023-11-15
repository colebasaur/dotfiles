-- return {
--   "rebelot/kanagawa.nvim",
--   lazy = false,
--   priority = 1000,
--   config = function()
--     vim.cmd([[colorscheme kanagawa-wave]]) -- dark
--     -- vim.cmd([[colorscheme kanagawa-dragon]]) -- darker
--     -- vim.cmd([[colorscheme kanagawa-lotus]]) -- light
--   end,
-- }
return {
  "catppuccin/nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd([[colorscheme catppuccin-mocha]]) -- darkest
    -- vim.cmd([[colorscheme catppuccin-macchiato]]) -- darker
    -- vim.cmd([[colorscheme catppuccin-frappe]]) -- dark
    -- vim.cmd([[colorscheme catppuccin-latte]]) -- light
  end,
}
