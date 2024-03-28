-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

---- Disable autoformat for kotlin files
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "kotlin" },
  callback = function()
    vim.b.autoformat = false
  end,
})

---- Disable autoformat for TF files
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { ".tf" },
  callback = function()
    vim.b.autoformat = false
  end,
})
