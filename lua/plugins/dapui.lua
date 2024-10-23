local function config()
  local dap = require("dap")
  local dapui = require("dapui")
  dapui.setup()
  dap.listeners.after.event_initialized["dapui_config"] = function()
    dapui.open()
  end
  dap.listeners.before.event_initialized["dapui_config"] = function()
    dapui.close()
  end
  dap.listeners.before.event_exited["dapui_config"] = function()
    dapui.close()
  end
end

return {
  {
    "nvim-neotest/nvim-nio",
  },
  {
    "rcarriga/nvim-dap-ui",
    dependences = {
      "mfussenegger/nvim-dap",
      "nvim-neotest/nvim-nio",
    },

    config = config,
    event = "VeryLazy",
  },
}
