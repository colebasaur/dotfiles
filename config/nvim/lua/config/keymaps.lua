-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("i", "jk", "<Esc>", { silent = true })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { silent = true })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { silent = true })
vim.keymap.set("n", "<leader>mt", ":RenderMarkdown toggle<CR>", { silent = true })

-- Copilot AI implementations
vim.keymap.set("i", "<M-CR>", 'copilot#Accept("\\<CR>")', { expr = true, replace_keycodes = false })
vim.keymap.set("n", "<leader>cpd", ":Copilot disable<CR>")
vim.keymap.set("n", "<leader>cpe", ":Copilot enable<CR>")
vim.keymap.set("n", "<leader>cpp", ":Copilot panel<CR>")
vim.g.copilot_no_tab_map = true

-- Copy current buffer path to clipboard
vim.keymap.set("n", "<leader>bcp", ":CopyBufferPath<CR>", { silent = true })
