require('telescope').load_extension('dap')
require("nvim-dap-virtual-text").setup()
require("dapui").setup()

-- nvim-dap-virtual-text. Show virtual text for current frame
vim.g.dap_virtual_text = true
