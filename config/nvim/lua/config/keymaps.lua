-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("i", "jk", "<Esc>", { silent = true })
vim.keymap.set("n", "<C-j>", "4jzz", { silent = true })
vim.keymap.set("n", "<C-k>", "4kzz", { silent = true })
vim.keymap.set("n", "G", "Gzz", { silent = true })
vim.keymap.set("n", "<leader>mt", ":RenderMarkdown toggle<CR>", { silent = true })

