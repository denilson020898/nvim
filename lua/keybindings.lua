vim.api.nvim_set_keymap("n", "<Space>", "<NOP>", { noremap = true })
vim.g.mapleader = " "

-- nnoremap q: <nop>
-- nnoremap Q <nop>
vim.api.nvim_set_keymap("n", "q:", "<nop>", { noremap = true })

vim.api.nvim_set_keymap("n", "<F15>", ":resize 100<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>`", ":TestLast<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>1", ":TestNearest<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>2", ":TestFile<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>3", ":TestSuite<CR>", { noremap = true })

vim.api.nvim_set_keymap('n', 'zx', [[<cmd>lua require('fold-cycle').open()<cr>]], {noremap = true})
vim.api.nvim_set_keymap('n', 'zc', [[<cmd>lua require('fold-cycle').close()<cr>]], {noremap = true})
vim.api.nvim_set_keymap('n', 'zX', [[<cmd>lua require('fold-cycle').open_all()<cr>]], {noremap = false})
vim.api.nvim_set_keymap('n', 'zC', [[<cmd>lua require('fold-cycle').close_all()<cr>]], {noremap = false})
vim.api.nvim_set_keymap('n', 'zv', [[<cmd>lua require('fold-cycle').toggle_all()<cr>]], {noremap = false})

vim.api.nvim_set_keymap("n", "<Leader>/", ":set hlsearch!<CR>", { noremap = true })

vim.api.nvim_set_keymap("n", "<leader>er", ":NvimTreeFindFile<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>ee", ":NvimTreeToggle<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>n", ":NvimTreeToggle<CR>", { noremap = true })

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

vim.api.nvim_set_keymap("i", "<A-h>", "<C-o>h", {})
vim.api.nvim_set_keymap("i", "<A-j>", "<C-o>j", {})
vim.api.nvim_set_keymap("i", "<A-k>", "<C-o>k", {})
vim.api.nvim_set_keymap("i", "<A-l>", "<C-o>l", {})
vim.api.nvim_set_keymap("i", "<A-a>", "<C-o>a", {})
vim.api.nvim_set_keymap("i", "<A-$>", "<C-o>$", {})

vim.api.nvim_set_keymap("n", "<A-h>", "<C-w>h", {})
vim.api.nvim_set_keymap("n", "<A-j>", "<C-w>j", {})
vim.api.nvim_set_keymap("n", "<A-k>", "<C-w>k", {})
vim.api.nvim_set_keymap("n", "<A-l>", "<C-w>l", {})

vim.api.nvim_set_keymap("n", "<leader>h", "<C-w>h", {})
vim.api.nvim_set_keymap("n", "<leader>j", "<C-w>j", {})
vim.api.nvim_set_keymap("n", "<leader>k", "<C-w>k", {})
vim.api.nvim_set_keymap("n", "<leader>l", "<C-w>l", {})

vim.api.nvim_set_keymap("n", "<A-H>", "<C-w>H", {})
vim.api.nvim_set_keymap("n", "<A-J>", "<C-w>J", {})
vim.api.nvim_set_keymap("n", "<A-K>", "<C-w>K", {})
vim.api.nvim_set_keymap("n", "<A-L>", "<C-w>L", {})

vim.api.nvim_set_keymap("n", "<A-w>", "<C-w>w", {})
vim.api.nvim_set_keymap("n", "<A-q>", "<C-w>q", {})
vim.api.nvim_set_keymap("n", "<A-v>", "<C-w>v", {})
vim.api.nvim_set_keymap("n", "<A-c>", "<C-w>c", {})
vim.api.nvim_set_keymap("n", "<A-r>", "<C-w>r", {})
vim.api.nvim_set_keymap("n", "<A-R>", "<C-w>R", {})
vim.api.nvim_set_keymap("n", "<A-s>", "<C-w>s", {})
vim.api.nvim_set_keymap("n", "<A-T>", "<C-w>T", {})
vim.api.nvim_set_keymap("n", "<A-o>", "<C-w>o", {})
vim.api.nvim_set_keymap("n", "<A-n>", "<C-w>n", {})
-- vim.api.nvim_set_keymap("n", "<A-_>", "<C-w>_", {})
vim.api.nvim_set_keymap("n", "<A-->", "<C-w>_", {})
vim.api.nvim_set_keymap("n", "<A-=>", "<C-w>=", {})
vim.api.nvim_set_keymap("n", "<A-|>", "<C-w>|", {})
vim.api.nvim_set_keymap("n", "<A->>", "<C-w>>", {})
vim.api.nvim_set_keymap("n", "<A-<>", "<C-w><", {})
vim.api.nvim_set_keymap("n", "<A-^>", "<C-w>^", {})
vim.api.nvim_set_keymap("n", "<A-p>", "<C-w>p", {})
vim.api.nvim_set_keymap("n", "<A-b>", "<C-w>b", {})
vim.api.nvim_set_keymap("n", "<A-x>", "<C-w>x", {})

vim.api.nvim_set_keymap("n", "<leader>V", "<C-w>^<C-w>k<C-w>J", {})
vim.api.nvim_set_keymap("n", "<leader>H", "<C-w>^<C-w>k<C-w>L", {})

vim.api.nvim_set_keymap("n", "<F7>", "<cmd>FocusToggle<cr>", {})
-- shift F7
vim.api.nvim_set_keymap("n", "<F19>", "<cmd>FocusMaxOrEqual<cr>", {})
vim.api.nvim_set_keymap("n", "<F2>", "<cmd>FocusMaxOrEqual<cr>", {})

vim.api.nvim_set_keymap("v", "<", "<gv", { noremap = true })
vim.api.nvim_set_keymap("v", ">", ">gv", { noremap = true })

vim.api.nvim_set_keymap("n", "<Leader>a", "ggVG", { noremap = true })

vim.api.nvim_set_keymap("n", "<Tab>", ":BufferLineCycleNext<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>o", ":BufferLinePick<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>O", ":BufferLinePickClose<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>bw", "<cmd>lua require('close_buffers').wipe({type = 'all', force = true})<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>bo", "<cmd>lua require('close_buffers').wipe({type = 'other'})<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>bh", "<cmd>lua require('close_buffers').delete({type = 'hidden', force = true})<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>bn", "<cmd>lua require('close_buffers').delete({type = 'nameless'})<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>q",  "<cmd>lua require('close_buffers').delete({type = 'this'})<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>d", ":bd<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<Leader>w", ":wa<CR>", {noremap = true})

vim.api.nvim_set_keymap("n", "<Leader><Space>", ":b#<CR>", { noremap = true })

vim.api.nvim_set_keymap("n", "<Leader>t", ":Telescope<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<Leader>tr", ":Telescope resume<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<Leader>tp", "<cmd>lua require('myplugins.telescope').search_dotfiles()<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<Leader>tx", "<cmd>lua require('myplugins.telescope').search_with_extension()<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<Leader>te", ":Telescope file_browser<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<Leader>tf", "<cmd>lua require('telescope.builtin').find_files()<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<Leader>tg", "<cmd>lua require('telescope.builtin').live_grep()<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<Leader>b", "<cmd>lua require('telescope.builtin').buffers()<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<Leader>i", "<cmd>lua require('telescope.builtin').buffers()<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<Leader>th", "<cmd>lua require('telescope.builtin').help_tags()<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<Leader>ts", ":SearchSession<CR>", {noremap = true})

vim.api.nvim_set_keymap("n", "<Leader>rr", ":RustRunnables<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<Leader>rc", ":RustOpenCargo<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<Leader>rp", ":RustParentModule<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<Leader>rt", ":RustToggleInlayHints<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<Leader>rg", ":CargoReload<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<Leader>r.", ":RustHoverAction<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<Leader>re", ":RustExpandMacro<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<Leader>rd", ":RustDebuggables<CR>", {noremap = true})

vim.api.nvim_set_keymap("n", "<Leader>ff", "<CMD>QFToggle!<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<Leader>fk", ":Keep<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<Leader>fr", ":Reject<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<Leader>fn", "<CMD>QFNext<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<Leader>fp", "<CMD>QFPrev<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<Leader>fc", ":cexpr []<CR>", {noremap = true})

vim.api.nvim_set_keymap("n", "<Leader>gg", ":Neogit<CR>", {noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>go", ":DiffviewClose<CR>", {noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>gc", ":DiffviewClose<CR>", {noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>gb", ":GitBlameToggle<CR>", {noremap = true})

vim.api.nvim_set_keymap('x', 'K', ':move \'<-2<CR>gv-gv', {noremap = true})
vim.api.nvim_set_keymap('x', 'J', ':move \'>+1<CR>gv-gv', {noremap = true})

vim.api.nvim_set_keymap("n", "<leader>s", "<cmd>lua require('spectre').open()<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>sw", "<cmd>lua require('spectre').open_visual({select_word=true})<CR>", { noremap = true })
vim.api.nvim_set_keymap("v", "<leader>s", "<cmd>lua require('spectre').open_visual()<CR>",{ noremap = true })
vim.api.nvim_set_keymap("n", "<leader>sc", "viw:lua require('spectre').open_file_search()<cr>",{ noremap = true })

vim.api.nvim_set_keymap("n", "<Leader>sp", ":lua require('spectre').open({path='*py'})<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>sx", ":lua require('spectre').open({path='*xml'})<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>sj", ":lua require('spectre').open({path='*js'})<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>sb", ":lua require('spectre').open({path='*py *xml'})<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>sa", ":lua require('spectre').open({path='*py *xml *js'})<cr>", { noremap = true })

vim.api.nvim_set_keymap("n", "<F36>", ":PackerSync<cr>", {})
vim.api.nvim_set_keymap("n", "<C-F12>", ":PackerSync<cr>", {})
vim.api.nvim_set_keymap("n", "<F13>", "<Plug>RestNvim", {})
vim.api.nvim_set_keymap("n", "<F6>", ":lua require'colorscheme'.toggle_theme()<cr>", {})
vim.api.nvim_set_keymap("n", "<F5>", ":checktime<cr>", {})
vim.api.nvim_set_keymap("n", "<F4>", ":AerialToggle!<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<F3>", ":IndentBlanklineToggle<cr>", {})

vim.api.nvim_set_keymap("n", "<leader>,", "<cmd>CodeActionMenu<cr>", {noremap = true})

vim.api.nvim_set_keymap("n", "<leader>xx", "<cmd>Trouble<cr>", {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>xw", "<cmd>Trouble workspace_diagnostics<cr>", {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>xd", "<cmd>Trouble document_diagnostics<cr>", {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>xl", "<cmd>Trouble loclist<cr>", {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>xq", "<cmd>Trouble quickfix<cr>", {noremap = true})
vim.api.nvim_set_keymap("n", "gR", "<cmd>Trouble lsp_references<cr>", {noremap = true})

vim.api.nvim_set_keymap("n", "<leader>pw", "<cmd>HopWord<cr>", {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>ps", "<cmd>HopLineStart<cr>", {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>pl", "<cmd>HopLine<cr>", {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>pp", "<cmd>HopPattern<cr>", {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>pc", "<cmd>HopChar2<cr>", {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>pC", "<cmd>HopChar1<cr>", {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>pC", "<cmd>HopChar1<cr>", {noremap = true})

vim.api.nvim_set_keymap('n', '<leader>cct', '<cmd>lua require"dap".continue()<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>csv', '<cmd>lua require"dap".step_over()<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>csi', '<cmd>lua require"dap".step_into()<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>cso', '<cmd>lua require"dap".step_out()<CR>', {noremap = true})

vim.api.nvim_set_keymap('n', '<leader>u', '<cmd>lua require("memento").toggle()<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>U', '<cmd>lua require("memento").clear_history()<CR>', {noremap = true})

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

vim.api.nvim_set_keymap('n', '<leader>ctb', '<cmd>lua require"dap".toggle_breakpoint()<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>csc', '<cmd>lua require"dap.ui.variables".scopes()<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>chh', '<cmd>lua require"dap.ui.variables".hover()<CR>', {noremap = true})
vim.api.nvim_set_keymap('v', '<leader>chv',
          '<cmd>lua require"dap.ui.variables".visual_hover()<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>cuh', '<cmd>lua require"dap.ui.widgets".hover()<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>cuf',
          "<cmd>lua local widgets=require'dap.ui.widgets';widgets.centered_float(widgets.scopes)<CR>", {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>csbr',
          '<cmd>lua require"dap".set_breakpoint(vim.fn.input("Breakpoint condition: "))<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>csbm',
          '<cmd>lua require"dap".set_breakpoint(nil, nil, vim.fn.input("Log point message: "))<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>cro', '<cmd>lua require"dap".repl.open()<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>crl', '<cmd>lua require"dap".repl.run_last()<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>cui', '<cmd>lua require"dapui".toggle()<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>ccc',
          '<cmd>lua require"telescope".extensions.dap.commands{noremap = true}<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>cco',
          '<cmd>lua require"telescope".extensions.dap.configurations{noremap = true}<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>clb',
          '<cmd>lua require"telescope".extensions.dap.list_breakpoints{noremap = true}<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>cv',
          '<cmd>lua require"telescope".extensions.dap.variables{noremap = true}<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>cf',
          '<cmd>lua require"telescope".extensions.dap.frames{noremap = true}<CR>', {noremap = true})

vim.api.nvim_exec([[
nnoremap <silent> <leader>Ct :lua require('crates').toggle()<cr>
nnoremap <silent> <leader>Cr :lua require('crates').reload()<cr>
nnoremap <silent> <leader>Cu :lua require('crates').update_crate()<cr>
vnoremap <silent> <leader>Cu :lua require('crates').update_crates()<cr>
nnoremap <silent> <leader>Ca :lua require('crates').update_all_crates()<cr>
nnoremap <silent> <leader>CU :lua require('crates').upgrade_crate()<cr>
vnoremap <silent> <leader>CU :lua require('crates').upgrade_crates()<cr>
nnoremap <silent> <leader>CA :lua require('crates').upgrade_all_crates()<cr>
]], false)

