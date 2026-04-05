-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Open file picker on startup when no file was passed (stdin guard set in init.lua)
if vim.fn.argc() == 0 and not vim.g.started_with_stdin then
  Snacks.picker.files()
end

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

-- Copy Buffer Path to Clipboard
vim.api.nvim_create_user_command("CopyBufferPath", function()
  vim.fn.setreg("+", vim.fn.expand("%:p"))
  print("Copied: " .. vim.fn.expand("%:p"))
end, { desc = "Copy full buffer path" })
