local function config(_, _)
  local dap = require("dap")

  vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint, {})
  vim.keymap.set("n", "<leader>dr", dap.continue, {})
end

return {
  "mfussenegger/nvim-dap",
  config = config,
}
