local function config()
  local dap = require("mason-nvim-dap")
  dap.setup({
    handlers = {},
  })
end

return {
  "jay-babu/mason-nvim-dap.nvim",
  dependences = {
    "williamboman/mason.nvim",
    "mfussengger/nvim-dap",
  },
  config = config,
  event = "VeryLazy",
}
