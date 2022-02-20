-- require("dapconfig.python")

require('telescope').load_extension('dap')
require('dbg.python')

-- local utils = require('utils')

vim.api.nvim_set_keymap('n', '<leader>cct', '<cmd>lua require"dap".continue()<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>csv', '<cmd>lua require"dap".step_over()<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>csi', '<cmd>lua require"dap".step_into()<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>cso', '<cmd>lua require"dap".step_out()<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>ctb', '<cmd>lua require"dap".toggle_breakpoint()<CR>', {})

vim.api.nvim_set_keymap('n', '<leader>csc', '<cmd>lua require"dap.ui.variables".scopes()<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>chh', '<cmd>lua require"dap.ui.variables".hover()<CR>', {})
vim.api.nvim_set_keymap('v', '<leader>chv',
          '<cmd>lua require"dap.ui.variables".visual_hover()<CR>', {})

vim.api.nvim_set_keymap('n', '<leader>cuh', '<cmd>lua require"dap.ui.widgets".hover()<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>cuf',
          "<cmd>lua local widgets=require'dap.ui.widgets';widgets.centered_float(widgets.scopes)<CR>", {})

vim.api.nvim_set_keymap('n', '<leader>csbr',
          '<cmd>lua require"dap".set_breakpoint(vim.fn.input("Breakpoint condition: "))<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>csbm',
          '<cmd>lua require"dap".set_breakpoint(nil, nil, vim.fn.input("Log point message: "))<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>cro', '<cmd>lua require"dap".repl.open()<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>crl', '<cmd>lua require"dap".repl.run_last()<CR>', {})


-- telescope-dap
vim.api.nvim_set_keymap('n', '<leader>ccc',
          '<cmd>lua require"telescope".extensions.dap.commands{}<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>cco',
          '<cmd>lua require"telescope".extensions.dap.configurations{}<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>clb',
          '<cmd>lua require"telescope".extensions.dap.list_breakpoints{}<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>cv',
          '<cmd>lua require"telescope".extensions.dap.variables{}<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>cf',
          '<cmd>lua require"telescope".extensions.dap.frames{}<CR>', {})

-- nvim-dap-virtual-text. Show virtual text for current frame
vim.g.dap_virtual_text = true

require('dbg.ui')
