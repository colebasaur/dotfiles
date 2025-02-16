return {
  "mfussenegger/nvim-dap-python",
  dependencies = { "mfussenegger/nvim-dap" },
  config = function()
    local dap_python = require("dap-python")
    local python_path = vim.fn.systemlist("pyenv which python")[1]
    dap_python.setup(python_path)

    local dap = require("dap")
    dap.adapters.python = {
      type = "executable",
      command = python_path,
      args = { "-m", "debugpy.adapter" },
    }

    -- Define custom debug configurations
    dap.configurations.python = {
      {
        type = "python",
        request = "launch",
        name = "Launch file",
        program = "${file}",
        console = "integratedTerminal",
      },
      {
        type = "python",
        request = "attach",
        name = "Attach to process",
        connect = {
          host = "localhost",
          port = 5678,
        },
        justMyCode = false,
      },
    }
  end,
}
