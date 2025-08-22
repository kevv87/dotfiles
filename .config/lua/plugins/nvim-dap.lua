return {
  "mfussenegger/nvim-dap",
  config = function()
    local dap = require("dap")
    dap.configurations.rust = {
      {
        name = "Attach to process",
        type = "codelldb",
        request = "attach",
        pid = function()
          return tonumber(vim.fn.input('PID: '))
        end,
      },
    }
  end
}

