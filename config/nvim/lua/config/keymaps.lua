-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("i", "jk", "<Esc>", { silent = true })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { silent = true })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { silent = true })
vim.keymap.set("n", "<leader>mt", ":RenderMarkdown toggle<CR>", { silent = true })

-- Parrot AI implementations
vim.keymap.set("v", "<leader>cci", ":PrtImplement<CR>", { silent = true })
vim.keymap.set("v", "<leader>ccr", ":PrtRewrite<CR>", { silent = true })
vim.keymap.set("n", "<leader>ccm", ":PrtModel<CR>", { silent = true })
