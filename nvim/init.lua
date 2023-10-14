if vim.g.vscode then
  -- VSCode extension
  vim.opt.clipboard = "unnamedplus"
else
  -- ordinary Neovim
  -- bootstrap lazy.nvim, LazyVim and your plugins
  require("config.lazy")
  vim.g.python3_host_prog = "/Users/coletroutman/.pyenv/versions/py3nvim/bin/python"
end
