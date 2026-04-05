if vim.g.vscode then
  -- VSCode extension
  vim.opt.clipboard = "unnamedplus"
else
  -- ordinary Neovim
  -- Flag stdin usage before plugins load
  vim.api.nvim_create_autocmd("StdinReadPre", {
    callback = function()
      vim.g.started_with_stdin = true
    end,
  })
  -- bootstrap lazy.nvim, LazyVim and your plugins
  require("config.lazy")
  vim.g.python3_host_prog = vim.fn.expand("~/.pyenv/versions/py3nvim/bin/python")
end
