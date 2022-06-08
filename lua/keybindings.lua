-- vim.api.nvim_set_keymap("n", "<Space>", "<NOP>", { noremap = true })
-- vim.g.mapspace = " "

-- leader is \ , space , - , +

-- nnoremap q: <nop>
-- nnoremap Q <nop>
vim.api.nvim_set_keymap("n", "q:", "<nop>", { noremap = true })

vim.api.nvim_set_keymap("n", "-ii", "<cmd>LspInfo<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "-is", "<cmd>LspStop<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "-k", "<cmd>BufferLineCycleNext<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "-j", "<cmd>BufferLineCyclePrev<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<space>-", "<cmd>BufferLineCycleNext<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "-<space>", "<cmd>BufferLineCyclePrev<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Tab>", "<cmd>BufferLineCycleNext<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<CR>", { noremap = true })

vim.api.nvim_set_keymap("n", "<F15>", ":resize 100<CR>", { noremap = true })

vim.api.nvim_set_keymap("n", "-`", ":TestLast<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "-1", ":TestNearest<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "-2", ":TestFile<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "-3", ":TestSuite<CR>", { noremap = true })

vim.api.nvim_set_keymap('n', 'zx', [[<cmd>lua require('fold-cycle').open()<cr>]], {noremap = true})
vim.api.nvim_set_keymap('n', 'zc', [[<cmd>lua require('fold-cycle').close()<cr>]], {noremap = true})
vim.api.nvim_set_keymap('n', 'zX', [[<cmd>lua require('fold-cycle').open_all()<cr>]], {noremap = false})
vim.api.nvim_set_keymap('n', 'zC', [[<cmd>lua require('fold-cycle').close_all()<cr>]], {noremap = false})
vim.api.nvim_set_keymap('n', 'zv', [[<cmd>lua require('fold-cycle').toggle_all()<cr>]], {noremap = false})

vim.api.nvim_set_keymap("n", "<space>/", ":set hlsearch!<CR>", { noremap = true })

vim.api.nvim_set_keymap("n", "<space>er", ":NvimTreeFindFile<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<space>ee", ":NvimTreeToggle<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<space>e", ":NvimTreeToggle<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<space>n", ":NvimTreeToggle<CR>", { noremap = true })

vim.api.nvim_set_keymap("n", "Y", "y$", { noremap = true })
vim.api.nvim_set_keymap("n", "n", "nzzzv", { noremap = true })
vim.api.nvim_set_keymap("n", "N", "Nzzzv", { noremap = true })
vim.api.nvim_set_keymap("n", "J", "mzJ`z", { noremap = true })

vim.api.nvim_set_keymap("n", "zh", "20zh", { noremap = true })
vim.api.nvim_set_keymap("n", "zl", "20zl", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-j>", "20zh", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-k>", "20zl", { noremap = true })

vim.cmd("noremap <expr> k (v:count > 5 ? \"m'\" . v:count : \"\") . 'k'")
vim.cmd("noremap <expr> j (v:count > 5 ? \"m'\" . v:count : \"\") . 'j'")

vim.api.nvim_set_keymap("i", ".", ".<c-g>u", { noremap = true })
vim.api.nvim_set_keymap("i", ",", ",<c-g>u", { noremap = true })
vim.api.nvim_set_keymap("i", "(", "(<c-g>u", { noremap = true })
vim.api.nvim_set_keymap("i", "{", "{<c-g>u", { noremap = true })
vim.api.nvim_set_keymap("i", "\"", "\"<c-g>u", { noremap = true })
vim.api.nvim_set_keymap("i", "'", "'<c-g>u", { noremap = true })
vim.api.nvim_set_keymap("i", ":", ":<c-g>u", { noremap = true })
vim.api.nvim_set_keymap("i", "<", "<<c-g>u", { noremap = true })

vim.api.nvim_set_keymap("n", "<space>h", "<C-w>h", {})
vim.api.nvim_set_keymap("n", "<space>j", "<C-w>j", {})
vim.api.nvim_set_keymap("n", "<space>k", "<C-w>k", {})
vim.api.nvim_set_keymap("n", "<space>l", "<C-w>l", {})

vim.api.nvim_set_keymap("n", "<space>V", "<C-w>^<C-w>k<C-w>J", {})
vim.api.nvim_set_keymap("n", "<space>H", "<C-w>^<C-w>k<C-w>L", {})

vim.api.nvim_set_keymap("n", "<F7>", "<cmd>FocusToggle<cr>", {})
-- shift F7
vim.api.nvim_set_keymap("n", "<F19>", "<cmd>FocusMaxOrEqual<cr>", {})
vim.api.nvim_set_keymap("n", "<F2>", "<cmd>FocusMaxOrEqual<cr>", {})

vim.api.nvim_set_keymap("v", "<", "<gv", { noremap = true })
vim.api.nvim_set_keymap("v", ">", ">gv", { noremap = true })

vim.api.nvim_set_keymap("n", "<space>a", "ggVG", { noremap = true })

-- vim.api.nvim_set_keymap("n", "<Tab>", ":BufferLineCycleNext<CR>", { noremap = true })
-- vim.api.nvim_set_keymap("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", { noremap = true })

vim.api.nvim_set_keymap("n", "--", ":BufferLinePick<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<space>O", ":BufferLinePickClose<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<space>bw", "<cmd>lua require('close_buffers').wipe({type = 'all', force = true})<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<space>bo", "<cmd>lua require('close_buffers').wipe({type = 'other'})<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<space>bh", "<cmd>lua require('close_buffers').delete({type = 'hidden', force = true})<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<space>bn", "<cmd>lua require('close_buffers').delete({type = 'nameless'})<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<space>q",  "<cmd>lua require('close_buffers').delete({type = 'this'})<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<space>d", ":bd<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<space>w", ":wa<CR>", {noremap = true})

vim.api.nvim_set_keymap("n", "<space><Space>", ":b#<CR>", { noremap = true })

vim.api.nvim_set_keymap("n", "<space>t", ":Telescope<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<space>tr", ":Telescope resume<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<space>tp", "<cmd>lua require('myplugins.telescope').search_dotfiles()<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<space>tx", "<cmd>lua require('myplugins.telescope').search_with_extension()<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<space>te", ":Telescope file_browser<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<space>tf", "<cmd>lua require('telescope.builtin').find_files()<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<space>tg", "<cmd>lua require('telescope.builtin').live_grep()<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<space>b", "<cmd>lua require('telescope.builtin').buffers()<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<space>i", "<cmd>lua require('telescope.builtin').buffers()<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<space>th", "<cmd>lua require('telescope.builtin').help_tags()<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<space>ts", ":SearchSession<CR>", {noremap = true})

vim.api.nvim_set_keymap("n", "<space>rr", ":RustRunnables<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<space>rc", ":RustOpenCargo<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<space>rp", ":RustParentModule<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<space>rt", ":RustToggleInlayHints<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<space>rg", ":CargoReload<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<space>r.", ":RustHoverAction<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<space>re", ":RustExpandMacro<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<space>rd", ":RustDebuggables<CR>", {noremap = true})

vim.api.nvim_set_keymap("n", "<space>ff", "<CMD>QFToggle!<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<space>fk", ":Keep<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<space>fr", ":Reject<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<space>fn", "<CMD>QFNext<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<space>fp", "<CMD>QFPrev<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<space>fc", ":cexpr []<CR>", {noremap = true})

vim.api.nvim_set_keymap("n", "<space>gg", ":Neogit<CR>", {noremap = true })
vim.api.nvim_set_keymap("n", "<space>go", ":DiffviewClose<CR>", {noremap = true })
vim.api.nvim_set_keymap("n", "<space>gc", ":DiffviewClose<CR>", {noremap = true })
vim.api.nvim_set_keymap("n", "<space>gb", ":GitBlameToggle<CR>", {noremap = true})

vim.api.nvim_set_keymap('x', 'K', ':move \'<-2<CR>gv-gv', {noremap = true})
vim.api.nvim_set_keymap('x', 'J', ':move \'>+1<CR>gv-gv', {noremap = true})

vim.api.nvim_set_keymap("n", "<space>s", "<cmd>lua require('spectre').open()<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<space>sw", "<cmd>lua require('spectre').open_visual({select_word=true})<CR>", { noremap = true })
vim.api.nvim_set_keymap("v", "<space>s", "<cmd>lua require('spectre').open_visual()<CR>",{ noremap = true })
vim.api.nvim_set_keymap("n", "<space>sc", "viw:lua require('spectre').open_file_search()<cr>",{ noremap = true })

vim.api.nvim_set_keymap("n", "<space>sp", ":lua require('spectre').open({path='*py'})<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<space>sx", ":lua require('spectre').open({path='*xml'})<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<space>sj", ":lua require('spectre').open({path='*js'})<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<space>sb", ":lua require('spectre').open({path='*py *xml'})<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<space>sa", ":lua require('spectre').open({path='*py *xml *js'})<cr>", { noremap = true })

vim.api.nvim_set_keymap("n", "<F36>", ":PackerSync<cr>", {})
vim.api.nvim_set_keymap("n", "<C-F12>", ":PackerSync<cr>", {})
vim.api.nvim_set_keymap("n", "<F6>", ":lua require'colorscheme'.toggle_theme()<cr>", {})
vim.api.nvim_set_keymap("n", "<F5>", ":checktime<cr>", {})
vim.api.nvim_set_keymap("n", "<F4>", ":AerialToggle!<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<F3>", ":IndentBlanklineToggle<cr>", {})

vim.api.nvim_set_keymap("n", "<F13>", ":lua require'settings'.switch_foldmethod()<cr>", {silent=true})

vim.api.nvim_set_keymap("n", "<space>xx", "<cmd>Trouble<cr>", {noremap = true})
vim.api.nvim_set_keymap("n", "<space>xw", "<cmd>Trouble workspace_diagnostics<cr>", {noremap = true})
vim.api.nvim_set_keymap("n", "<space>xd", "<cmd>Trouble document_diagnostics<cr>", {noremap = true})
vim.api.nvim_set_keymap("n", "<space>xl", "<cmd>Trouble loclist<cr>", {noremap = true})
vim.api.nvim_set_keymap("n", "<space>xq", "<cmd>Trouble quickfix<cr>", {noremap = true})
vim.api.nvim_set_keymap("n", "gR", "<cmd>Trouble lsp_references<cr>", {noremap = true})

vim.api.nvim_set_keymap("n", "<space>pw", "<cmd>HopWord<cr>", {noremap = true})
vim.api.nvim_set_keymap("n", "<space>ps", "<cmd>HopLineStart<cr>", {noremap = true})
vim.api.nvim_set_keymap("n", "<space>pl", "<cmd>HopLine<cr>", {noremap = true})
vim.api.nvim_set_keymap("n", "<space>pp", "<cmd>HopPattern<cr>", {noremap = true})
vim.api.nvim_set_keymap("n", "<space>pc", "<cmd>HopChar2<cr>", {noremap = true})
vim.api.nvim_set_keymap("n", "<space>pC", "<cmd>HopChar1<cr>", {noremap = true})
vim.api.nvim_set_keymap("n", "<space>pC", "<cmd>HopChar1<cr>", {noremap = true})

vim.api.nvim_set_keymap('n', '<space>cct', '<cmd>lua require"dap".continue()<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<space>csv', '<cmd>lua require"dap".step_over()<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<space>csi', '<cmd>lua require"dap".step_into()<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<space>cso', '<cmd>lua require"dap".step_out()<CR>', {noremap = true})

vim.api.nvim_set_keymap('n', '<space>u', '<cmd>lua require("memento").toggle()<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<space>U', '<cmd>lua require("memento").clear_history()<CR>', {noremap = true})

vim.api.nvim_set_keymap('n', '<F24>', '<cmd>lua require"dap".continue()<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<F10>', '<cmd>lua require"dap".step_over()<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<F11>', '<cmd>lua require"dap".step_into()<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<F23>', '<cmd>lua require"dap".step_out()<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<F9>', '<cmd>lua require"dap".toggle_breakpoint()<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<F8>', '<cmd>lua require"dap.ui.widgets".hover()<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<F21>', '<cmd>lua require"dapui".toggle()<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<F20>',
          "<cmd>lua local widgets=require'dap.ui.widgets';widgets.centered_float(widgets.scopes)<CR>", {noremap = true})
vim.api.nvim_set_keymap('n', '<F22>',
          '<cmd>lua require"telescope".extensions.dap.list_breakpoints{noremap = true}<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<F12><F11>', '<cmd>lua require"dap".repl.toggle()<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<F12><F12>', '<cmd>lua require"dap".repl.run_last()<CR>', {noremap = true})

vim.api.nvim_set_keymap('n', '<space>ctb', '<cmd>lua require"dap".toggle_breakpoint()<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<space>csc', '<cmd>lua require"dap.ui.variables".scopes()<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<space>chh', '<cmd>lua require"dap.ui.variables".hover()<CR>', {noremap = true})
vim.api.nvim_set_keymap('v', '<space>chv',
          '<cmd>lua require"dap.ui.variables".visual_hover()<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<space>cuh', '<cmd>lua require"dap.ui.widgets".hover()<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<space>cuf',
          "<cmd>lua local widgets=require'dap.ui.widgets';widgets.centered_float(widgets.scopes)<CR>", {noremap = true})
vim.api.nvim_set_keymap('n', '<space>csbr',
          '<cmd>lua require"dap".set_breakpoint(vim.fn.input("Breakpoint condition: "))<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<space>csbm',
          '<cmd>lua require"dap".set_breakpoint(nil, nil, vim.fn.input("Log point message: "))<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<space>cro', '<cmd>lua require"dap".repl.open()<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<space>crl', '<cmd>lua require"dap".repl.run_last()<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<space>cui', '<cmd>lua require"dapui".toggle()<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<space>ccc',
          '<cmd>lua require"telescope".extensions.dap.commands{noremap = true}<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<space>cco',
          '<cmd>lua require"telescope".extensions.dap.configurations{noremap = true}<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<space>clb',
          '<cmd>lua require"telescope".extensions.dap.list_breakpoints{noremap = true}<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<space>cv',
          '<cmd>lua require"telescope".extensions.dap.variables{noremap = true}<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<space>cf',
          '<cmd>lua require"telescope".extensions.dap.frames{noremap = true}<CR>', {noremap = true})

vim.api.nvim_exec([[
nnoremap <silent> <space>Ct :lua require('crates').toggle()<cr>
nnoremap <silent> <space>Cr :lua require('crates').reload()<cr>
nnoremap <silent> <space>Cu :lua require('crates').update_crate()<cr>
vnoremap <silent> <space>Cu :lua require('crates').update_crates()<cr>
nnoremap <silent> <space>Ca :lua require('crates').update_all_crates()<cr>
nnoremap <silent> <space>CU :lua require('crates').upgrade_crate()<cr>
vnoremap <silent> <space>CU :lua require('crates').upgrade_crates()<cr>
nnoremap <silent> <space>CA :lua require('crates').upgrade_all_crates()<cr>
]], false)

