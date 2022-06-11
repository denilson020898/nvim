require('telescope').load_extension('dap')
require("nvim-dap-virtual-text").setup()
require("dapui").setup()
local dap, dapui = require("dap"), require("dapui")
dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end
-- nvim-dap-virtual-text. Show virtual text for current frame
vim.g.dap_virtual_text = true
