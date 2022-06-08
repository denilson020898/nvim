-- vim.keymap.set("n", "<Space>", "<NOP>", { noremap = true })
-- vim.g.mapspace = " "

-- leader is \ , space , - , +

-- nnoremap q: <nop>
-- nnoremap Q <nop>
vim.keymap.set("n", "q:", "<nop>", { noremap = true })

vim.keymap.set("n", "-ii", "<cmd>LspInfo<cr>", { noremap = true })
vim.keymap.set("n", "-is", "<cmd>LspStop<cr>", { noremap = true })
vim.keymap.set("n", "-k", "<cmd>BufferLineCycleNext<CR>", { noremap = true })
vim.keymap.set("n", "-j", "<cmd>BufferLineCyclePrev<CR>", { noremap = true })
vim.keymap.set("n", "<space>-", "<cmd>BufferLineCycleNext<CR>", { noremap = true })
vim.keymap.set("n", "-<space>", "<cmd>BufferLineCyclePrev<CR>", { noremap = true })
vim.keymap.set("n", "<Tab>", "<cmd>BufferLineCycleNext<CR>", { noremap = true })
vim.keymap.set("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<CR>", { noremap = true })

vim.keymap.set("n", "<F15>", ":resize 100<CR>", { noremap = true })

vim.keymap.set("n", "-`", ":TestLast<CR>", { noremap = true })
vim.keymap.set("n", "-1", ":TestNearest<CR>", { noremap = true })
vim.keymap.set("n", "-2", ":TestFile<CR>", { noremap = true })
vim.keymap.set("n", "-3", ":TestSuite<CR>", { noremap = true })

vim.keymap.set('n', 'zx', [[<cmd>lua require('fold-cycle').open()<cr>]], {noremap = true})
vim.keymap.set('n', 'zc', [[<cmd>lua require('fold-cycle').close()<cr>]], {noremap = true})
vim.keymap.set('n', 'zX', [[<cmd>lua require('fold-cycle').open_all()<cr>]], {noremap = false})
vim.keymap.set('n', 'zC', [[<cmd>lua require('fold-cycle').close_all()<cr>]], {noremap = false})
vim.keymap.set('n', 'zv', [[<cmd>lua require('fold-cycle').toggle_all()<cr>]], {noremap = false})

vim.keymap.set("n", "<space>/", ":set hlsearch!<CR>", { noremap = true })

vim.keymap.set("n", "<space>er", ":NvimTreeFindFile<CR>", { noremap = true })
vim.keymap.set("n", "<space>ee", ":NvimTreeToggle<CR>", { noremap = true })
vim.keymap.set("n", "<space>e", ":NvimTreeToggle<CR>", { noremap = true })
vim.keymap.set("n", "<space>n", ":NvimTreeToggle<CR>", { noremap = true })

vim.keymap.set("n", "Y", "y$", { noremap = true })
vim.keymap.set("n", "n", "nzzzv", { noremap = true })
vim.keymap.set("n", "N", "Nzzzv", { noremap = true })
vim.keymap.set("n", "J", "mzJ`z", { noremap = true })

vim.keymap.set("n", "zh", "20zh", { noremap = true })
vim.keymap.set("n", "zl", "20zl", { noremap = true })
vim.keymap.set("n", "<C-j>", "20zh", { noremap = true })
vim.keymap.set("n", "<C-k>", "20zl", { noremap = true })

vim.cmd("noremap <expr> k (v:count > 5 ? \"m'\" . v:count : \"\") . 'k'")
vim.cmd("noremap <expr> j (v:count > 5 ? \"m'\" . v:count : \"\") . 'j'")

vim.keymap.set("i", ".", ".<c-g>u", { noremap = true })
vim.keymap.set("i", ",", ",<c-g>u", { noremap = true })
vim.keymap.set("i", "(", "(<c-g>u", { noremap = true })
vim.keymap.set("i", "{", "{<c-g>u", { noremap = true })
vim.keymap.set("i", "\"", "\"<c-g>u", { noremap = true })
vim.keymap.set("i", "'", "'<c-g>u", { noremap = true })
vim.keymap.set("i", ":", ":<c-g>u", { noremap = true })
vim.keymap.set("i", "<", "<<c-g>u", { noremap = true })

vim.keymap.set("n", "<space>h", "<C-w>h", {})
vim.keymap.set("n", "<space>j", "<C-w>j", {})
vim.keymap.set("n", "<space>k", "<C-w>k", {})
vim.keymap.set("n", "<space>l", "<C-w>l", {})

vim.keymap.set("n", "<space>V", "<C-w>^<C-w>k<C-w>J", {})
vim.keymap.set("n", "<space>H", "<C-w>^<C-w>k<C-w>L", {})

vim.keymap.set("n", "<F7>", "<cmd>FocusToggle<cr>", {})
-- shift F7
vim.keymap.set("n", "<F19>", "<cmd>FocusMaxOrEqual<cr>", {})
vim.keymap.set("n", "<F2>", "<cmd>FocusMaxOrEqual<cr>", {})

vim.keymap.set("v", "<", "<gv", { noremap = true })
vim.keymap.set("v", ">", ">gv", { noremap = true })

vim.keymap.set("n", "<space>a", "ggVG", { noremap = true })

-- vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>", { noremap = true })
-- vim.keymap.set("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", { noremap = true })

vim.keymap.set("n", "--", ":BufferLinePick<CR>", { noremap = true })
vim.keymap.set("n", "<space>O", ":BufferLinePickClose<CR>", { noremap = true })
vim.keymap.set("n", "<space>bw", "<cmd>lua require('close_buffers').wipe({type = 'all', force = true})<cr>", { noremap = true })
vim.keymap.set("n", "<space>bo", "<cmd>lua require('close_buffers').wipe({type = 'other'})<cr>", { noremap = true })
vim.keymap.set("n", "<space>bh", "<cmd>lua require('close_buffers').delete({type = 'hidden', force = true})<cr>", { noremap = true })
vim.keymap.set("n", "<space>bn", "<cmd>lua require('close_buffers').delete({type = 'nameless'})<cr>", { noremap = true })
vim.keymap.set("n", "<space>q",  "<cmd>lua require('close_buffers').delete({type = 'this'})<cr>", { noremap = true })
vim.keymap.set("n", "<space>d", ":bd<CR>", {noremap = true})
vim.keymap.set("n", "<space>w", ":wa<CR>", {noremap = true})

vim.keymap.set("n", "<space><space>", "<cmd>b#<cr>", { noremap = true })

vim.keymap.set("n", "<space>t", ":Telescope<CR>", {noremap = true})
vim.keymap.set("n", "<space>tr", ":Telescope resume<CR>", {noremap = true})
vim.keymap.set("n", "<space>tp", "<cmd>lua require('myplugins.telescope').search_dotfiles()<CR>", {noremap = true})
vim.keymap.set("n", "<space>tx", "<cmd>lua require('myplugins.telescope').search_with_extension()<CR>", {noremap = true})
vim.keymap.set("n", "<space>te", ":Telescope file_browser<CR>", {noremap = true})
vim.keymap.set("n", "<space>tf", "<cmd>lua require('telescope.builtin').find_files()<CR>", {noremap = true})
vim.keymap.set("n", "<space>tg", "<cmd>lua require('telescope.builtin').live_grep()<CR>", {noremap = true})
vim.keymap.set("n", "<space>b", "<cmd>lua require('telescope.builtin').buffers()<CR>", {noremap = true})
vim.keymap.set("n", "<space>i", "<cmd>lua require('telescope.builtin').buffers()<CR>", {noremap = true})
vim.keymap.set("n", "<space>th", "<cmd>lua require('telescope.builtin').help_tags()<CR>", {noremap = true})
vim.keymap.set("n", "<space>ts", ":SearchSession<CR>", {noremap = true})

vim.keymap.set("n", "<space>rr", ":RustRunnables<CR>", {noremap = true})
vim.keymap.set("n", "<space>rc", ":RustOpenCargo<CR>", {noremap = true})
vim.keymap.set("n", "<space>rp", ":RustParentModule<CR>", {noremap = true})
vim.keymap.set("n", "<space>rt", ":RustToggleInlayHints<CR>", {noremap = true})
vim.keymap.set("n", "<space>rg", ":CargoReload<CR>", {noremap = true})
vim.keymap.set("n", "<space>r.", ":RustHoverAction<CR>", {noremap = true})
vim.keymap.set("n", "<space>re", ":RustExpandMacro<CR>", {noremap = true})
vim.keymap.set("n", "<space>rd", ":RustDebuggables<CR>", {noremap = true})

vim.keymap.set("n", "<space>ff", "<CMD>QFToggle!<CR>", {noremap = true})
vim.keymap.set("n", "<space>fk", ":Keep<CR>", {noremap = true})
vim.keymap.set("n", "<space>fr", ":Reject<CR>", {noremap = true})
vim.keymap.set("n", "<space>fn", "<CMD>QFNext<CR>", {noremap = true})
vim.keymap.set("n", "<space>fp", "<CMD>QFPrev<CR>", {noremap = true})
vim.keymap.set("n", "<space>fc", ":cexpr []<CR>", {noremap = true})

vim.keymap.set("n", "<space>gg", ":Neogit<CR>", {noremap = true })
vim.keymap.set("n", "<space>go", ":DiffviewClose<CR>", {noremap = true })
vim.keymap.set("n", "<space>gc", ":DiffviewClose<CR>", {noremap = true })
vim.keymap.set("n", "<space>gb", ":GitBlameToggle<CR>", {noremap = true})

vim.keymap.set('x', 'K', ':move \'<-2<CR>gv-gv', {noremap = true})
vim.keymap.set('x', 'J', ':move \'>+1<CR>gv-gv', {noremap = true})

vim.keymap.set("n", "<space>s", "<cmd>lua require('spectre').open()<CR>", { noremap = true })
vim.keymap.set("n", "<space>sw", "<cmd>lua require('spectre').open_visual({select_word=true})<CR>", { noremap = true })
vim.keymap.set("v", "<space>s", "<cmd>lua require('spectre').open_visual()<CR>",{ noremap = true })
vim.keymap.set("n", "<space>sc", "viw:lua require('spectre').open_file_search()<cr>",{ noremap = true })

vim.keymap.set("n", "<space>sp", ":lua require('spectre').open({path='*py'})<cr>", { noremap = true })
vim.keymap.set("n", "<space>sx", ":lua require('spectre').open({path='*xml'})<cr>", { noremap = true })
vim.keymap.set("n", "<space>sj", ":lua require('spectre').open({path='*js'})<cr>", { noremap = true })
vim.keymap.set("n", "<space>sb", ":lua require('spectre').open({path='*py *xml'})<cr>", { noremap = true })
vim.keymap.set("n", "<space>sa", ":lua require('spectre').open({path='*py *xml *js'})<cr>", { noremap = true })

vim.keymap.set("n", "<F36>", ":PackerSync<cr>", {})
vim.keymap.set("n", "<C-F12>", ":PackerSync<cr>", {})
vim.keymap.set("n", "<F6>", ":lua require'colorscheme'.toggle_theme()<cr>", {})
vim.keymap.set("n", "<F5>", ":checktime<cr>", {})
vim.keymap.set("n", "<F4>", ":AerialToggle!<cr>", { noremap = true })
vim.keymap.set("n", "<F3>", ":IndentBlanklineToggle<cr>", {})

vim.keymap.set("n", "<F13>", ":lua require'settings'.switch_foldmethod()<cr>", {silent=true})

vim.keymap.set("n", "<space>xx", "<cmd>Trouble<cr>", {noremap = true})
vim.keymap.set("n", "<space>xw", "<cmd>Trouble workspace_diagnostics<cr>", {noremap = true})
vim.keymap.set("n", "<space>xd", "<cmd>Trouble document_diagnostics<cr>", {noremap = true})
vim.keymap.set("n", "<space>xl", "<cmd>Trouble loclist<cr>", {noremap = true})
vim.keymap.set("n", "<space>xq", "<cmd>Trouble quickfix<cr>", {noremap = true})
vim.keymap.set("n", "gR", "<cmd>Trouble lsp_references<cr>", {noremap = true})

vim.keymap.set("n", "<space>pw", "<cmd>HopWord<cr>", {noremap = true})
vim.keymap.set("n", "<space>ps", "<cmd>HopLineStart<cr>", {noremap = true})
vim.keymap.set("n", "<space>pl", "<cmd>HopLine<cr>", {noremap = true})
vim.keymap.set("n", "<space>pp", "<cmd>HopPattern<cr>", {noremap = true})
vim.keymap.set("n", "<space>pc", "<cmd>HopChar2<cr>", {noremap = true})
vim.keymap.set("n", "<space>pC", "<cmd>HopChar1<cr>", {noremap = true})
vim.keymap.set("n", "<space>pC", "<cmd>HopChar1<cr>", {noremap = true})

vim.keymap.set('n', '<space>cct', '<cmd>lua require"dap".continue()<CR>', {noremap = true})
vim.keymap.set('n', '<space>csv', '<cmd>lua require"dap".step_over()<CR>', {noremap = true})
vim.keymap.set('n', '<space>csi', '<cmd>lua require"dap".step_into()<CR>', {noremap = true})
vim.keymap.set('n', '<space>cso', '<cmd>lua require"dap".step_out()<CR>', {noremap = true})

vim.keymap.set('n', '<space>u', '<cmd>lua require("memento").toggle()<CR>', {noremap = true})
vim.keymap.set('n', '<space>U', '<cmd>lua require("memento").clear_history()<CR>', {noremap = true})

vim.keymap.set('n', '<F24>', '<cmd>lua require"dap".continue()<CR>', {noremap = true})
vim.keymap.set('n', '<F10>', '<cmd>lua require"dap".step_over()<CR>', {noremap = true})
vim.keymap.set('n', '<F11>', '<cmd>lua require"dap".step_into()<CR>', {noremap = true})
vim.keymap.set('n', '<F23>', '<cmd>lua require"dap".step_out()<CR>', {noremap = true})
vim.keymap.set('n', '<F9>', '<cmd>lua require"dap".toggle_breakpoint()<CR>', {noremap = true})
vim.keymap.set('n', '<F8>', '<cmd>lua require"dap.ui.widgets".hover()<CR>', {noremap = true})
vim.keymap.set('n', '<F21>', '<cmd>lua require"dapui".toggle()<CR>', {noremap = true})
vim.keymap.set('n', '<F20>',
          "<cmd>lua local widgets=require'dap.ui.widgets';widgets.centered_float(widgets.scopes)<CR>", {noremap = true})
vim.keymap.set('n', '<F22>',
          '<cmd>lua require"telescope".extensions.dap.list_breakpoints{noremap = true}<CR>', {noremap = true})
vim.keymap.set('n', '<F12><F11>', '<cmd>lua require"dap".repl.toggle()<CR>', {noremap = true})
vim.keymap.set('n', '<F12><F12>', '<cmd>lua require"dap".repl.run_last()<CR>', {noremap = true})

vim.keymap.set('n', '<space>ctb', '<cmd>lua require"dap".toggle_breakpoint()<CR>', {noremap = true})
vim.keymap.set('n', '<space>csc', '<cmd>lua require"dap.ui.variables".scopes()<CR>', {noremap = true})
vim.keymap.set('n', '<space>chh', '<cmd>lua require"dap.ui.variables".hover()<CR>', {noremap = true})
vim.keymap.set('v', '<space>chv',
          '<cmd>lua require"dap.ui.variables".visual_hover()<CR>', {noremap = true})
vim.keymap.set('n', '<space>cuh', '<cmd>lua require"dap.ui.widgets".hover()<CR>', {noremap = true})
vim.keymap.set('n', '<space>cuf',
          "<cmd>lua local widgets=require'dap.ui.widgets';widgets.centered_float(widgets.scopes)<CR>", {noremap = true})
vim.keymap.set('n', '<space>csbr',
          '<cmd>lua require"dap".set_breakpoint(vim.fn.input("Breakpoint condition: "))<CR>', {noremap = true})
vim.keymap.set('n', '<space>csbm',
          '<cmd>lua require"dap".set_breakpoint(nil, nil, vim.fn.input("Log point message: "))<CR>', {noremap = true})
vim.keymap.set('n', '<space>cro', '<cmd>lua require"dap".repl.open()<CR>', {noremap = true})
vim.keymap.set('n', '<space>crl', '<cmd>lua require"dap".repl.run_last()<CR>', {noremap = true})
vim.keymap.set('n', '<space>cui', '<cmd>lua require"dapui".toggle()<CR>', {noremap = true})
vim.keymap.set('n', '<space>ccc',
          '<cmd>lua require"telescope".extensions.dap.commands{noremap = true}<CR>', {noremap = true})
vim.keymap.set('n', '<space>cco',
          '<cmd>lua require"telescope".extensions.dap.configurations{noremap = true}<CR>', {noremap = true})
vim.keymap.set('n', '<space>clb',
          '<cmd>lua require"telescope".extensions.dap.list_breakpoints{noremap = true}<CR>', {noremap = true})
vim.keymap.set('n', '<space>cv',
          '<cmd>lua require"telescope".extensions.dap.variables{noremap = true}<CR>', {noremap = true})
vim.keymap.set('n', '<space>cf',
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

