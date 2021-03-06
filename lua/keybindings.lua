-- leader is ,
-- space , - , =
vim.g.mapleader = ","

-- OTHERS
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
vim.keymap.set("i", "<c-c>", "<esc>", { noremap = true })
vim.keymap.set("i", "jk", "<esc>", { noremap = true })
vim.keymap.set("i", "kk", "<esc>", { noremap = true })
vim.keymap.set("i", "jj", "<esc>", { noremap = true })
vim.keymap.set("i", "kj", "<esc>", { noremap = true })
vim.keymap.set("t", "<esc>", "<C-\\><C-n>", { noremap = true })

-- CORE KEYBINDINGS
-- nnoremap q: <nop>
-- nnoremap Q <nop>
vim.keymap.set("n", "q:", "<nop>", { noremap = true })
vim.keymap.set("n", "-k", "<cmd>BufferLineCycleNext<cr>", { noremap = true })
vim.keymap.set("n", "-j", "<cmd>BufferLineCyclePrev<cr>", { noremap = true })
vim.keymap.set("n", "<space>-", "<cmd>BufferLineCycleNext<cr>", { noremap = true })
vim.keymap.set("n", "-<space>", "<cmd>BufferLineCyclePrev<cr>", { noremap = true })
vim.keymap.set("n", "<Tab>", "<cmd>BufferLineCycleNext<cr>", { noremap = true })
vim.keymap.set("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<cr>", { noremap = true })
vim.keymap.set("n", "<leader>,", "<cmd>BufferLinePick<cr>", { noremap = true })
vim.keymap.set("n", "<space>O", "<cmd>BufferLinePickClose<cr>", { noremap = true })
vim.keymap.set('n', 'zx', require('fold-cycle').open, { noremap = true })
vim.keymap.set('n', 'zc', require('fold-cycle').close, { noremap = true })
vim.keymap.set('n', 'zX', require('fold-cycle').open_all, { noremap = false })
vim.keymap.set('n', 'zC', require('fold-cycle').close_all, { noremap = false })
vim.keymap.set('n', 'zv', require('fold-cycle').toggle_all, { noremap = false })
vim.keymap.set("n", "<space>/", "<cmd>set hlsearch!<cr>", { noremap = true })
vim.keymap.set("n", "<space>er", "<cmd>NvimTreeFindFile<cr>", { noremap = true })
vim.keymap.set("n", "<space>ee", "<cmd>NvimTreeToggle<cr>", { noremap = true })
vim.keymap.set("n", "<space>e", "<cmd>NvimTreeToggle<cr>", { noremap = true })
vim.keymap.set("n", "<space>n", "<cmd>NvimTreeToggle<cr>", { noremap = true })
vim.keymap.set("n", "Y", "y$", { noremap = true })
vim.keymap.set("n", "n", "nzzzv", { noremap = true })
vim.keymap.set("n", "N", "Nzzzv", { noremap = true })
vim.keymap.set("n", "J", "mzJ`z", { noremap = true })
vim.keymap.set("n", "zh", "35zh", { noremap = true })
vim.keymap.set("n", "zl", "35zl", { noremap = true })
vim.keymap.set("v", "<", "<gv", { noremap = true })
vim.keymap.set("v", ">", ">gv", { noremap = true })
vim.keymap.set("n", "<space>a", "ggVG", { noremap = true })
vim.keymap.set("n", "<space>bw", function() require('close_buffers').wipe({ type = 'all', force = true }) end,
  { noremap = true })
vim.keymap.set("n", "<space>bo", function() require('close_buffers').wipe({ type = 'other' }) end, { noremap = true })
vim.keymap.set("n", "<space>bh", function() require('close_buffers').delete({ type = 'hidden', force = true }) end,
  { noremap = true })
vim.keymap.set("n", "<space>bn", function() require('close_buffers').delete({ type = 'nameless' }) end,
  { noremap = true })
vim.keymap.set("n", "<space>q", function() require('close_buffers').delete({ type = 'this' }) end, { noremap = true })
vim.keymap.set("n", "<space>d", "<cmd>bd<cr>", { noremap = true })
vim.keymap.set("n", "<space>w", "<cmd>wa<cr>", { noremap = true })
vim.keymap.set("n", "<space><space>", "<cmd>b#<cr>", { noremap = true })
vim.keymap.set("n", "<space>t", "<cmd>Telescope<cr>", { noremap = true })
vim.keymap.set("n", "<space>tr", "<cmd>Telescope resume<cr>", { noremap = true })
vim.keymap.set("n", "-t", "<cmd>Telescope resume<cr>", { noremap = true })
vim.keymap.set("n", "-r", "<cmd>Telescope resume<cr>", { noremap = true })
vim.keymap.set("n", "<space>tp", require('myplugins.telescope').search_dotfiles, { noremap = true })
vim.keymap.set("n", "<space>tx", require('myplugins.telescope').search_with_extension, { noremap = true })
vim.keymap.set("n", "<space>te", require('telescope.builtin').find_files, { noremap = true })
vim.keymap.set("n", "<space>tf", require('telescope.builtin').git_files, { noremap = true })
vim.keymap.set("n", "<space>tg", require("telescope").extensions.live_grep_args.live_grep_args, { noremap = true })
vim.keymap.set("n", "<space>tl", require('telescope.builtin').live_grep, { noremap = true })
vim.keymap.set("n", "<space>i", require('telescope.builtin').buffers, { noremap = true })
vim.keymap.set("n", "<space>th", require('telescope.builtin').help_tags, { noremap = true })
vim.keymap.set("n", "<space>tz", require'telescope'.extensions.zoxide.list, { noremap = true })
vim.keymap.set("n", "<space>tc", "<cmd>Telescope neoclip<cr>", { noremap = true })

vim.keymap.set("n", "<space>ts", "<cmd>SearchSession<cr>", { noremap = true })
vim.keymap.set("n", "<space>ff", "<cmd>QFToggle!<cr>", { noremap = true })
vim.keymap.set("n", "<space>fk", "<cmd>Keep<cr>", { noremap = true })
vim.keymap.set("n", "<space>fr", "<cmd>Reject<cr>", { noremap = true })
vim.keymap.set("n", "<space>fn", "<cmd>QFNext<cr>", { noremap = true })
vim.keymap.set("n", "<space>fp", "<cmd>QFPrev<cr>", { noremap = true })
vim.keymap.set("n", "<space>fc", "<cmd>cexpr []<cr>", { noremap = true })

-- FN KEY
vim.keymap.set("n", "<F10>", "<cmd>AerialToggle!<cr>", { noremap = true })
vim.keymap.set("n", "<F6>", "<cmd>resize 100<cr>", { noremap = true })
vim.keymap.set("n", "<S-F6>", "<cmd>lua require'colorscheme'.toggle_theme()<cr>", { noremap = true })
vim.keymap.set("n", "<F7>", "<cmd>FocusToggle<cr>", { noremap = true })
vim.keymap.set("n", "<S-F7>", "<cmd>FocusMaxOrEqual<cr>", { noremap = true })
vim.keymap.set("n", "<S-F8>", "<cmd>lua require'settings'.switch_foldmethod()<cr>", { noremap = true })
vim.keymap.set("n", "<C-F12>", "<cmd>PackerSync<cr>", { noremap = true })

vim.keymap.set("n", "<space>h", "<C-w>h", { noremap = true })
vim.keymap.set("n", "<space>j", "<C-w>j", { noremap = true })
vim.keymap.set("n", "<space>k", "<C-w>k", { noremap = true })
vim.keymap.set("n", "<space>l", "<C-w>l", { noremap = true })

vim.keymap.set("n", "<A-h>", "<C-w>10<", { noremap = true })
vim.keymap.set("n", "<A-j>", "<C-w>10-", { noremap = true })
vim.keymap.set("n", "<A-k>", "<C-w>10+", { noremap = true })
vim.keymap.set("n", "<A-l>", "<C-w>10>", { noremap = true })

vim.keymap.set("n", "<space>V", "<C-w>^<C-w>k<C-w>J", { noremap = true })
vim.keymap.set("n", "<space>H", "<C-w>^<C-w>k<C-w>L", { noremap = true })

-- vim.keymap.set("n", "<space>gg", "<cmd>Neogit<cr>", { noremap = true })
vim.keymap.set("n", "<space>gg", function()
  require('neogit').open()
end, { noremap = true })

vim.keymap.set("n", "<space>gh", "<cmd>DiffviewFileHistory %<cr>", { noremap = true })
vim.keymap.set("n", "<space>gd", "<cmd>DiffviewOpen<cr>", { noremap = true })
vim.keymap.set("n", "<space>gc", "<cmd>DiffviewClose<cr>", { noremap = true })
vim.keymap.set("n", "<space>gb", "<cmd>GitBlameToggle<cr>", { noremap = true })

vim.keymap.set('x', 'K', ':move \'<-2<cr>gv-gv', { noremap = true })
vim.keymap.set('x', 'J', ':move \'>+1<cr>gv-gv', { noremap = true })
vim.keymap.set("n", "<space>s", require('spectre').open, { noremap = true })
vim.keymap.set("n", "<leader>s", require('myplugins.spectre').search_resume, { noremap = true })
vim.keymap.set("n", "<space>sw", function() require('spectre').open_visual({ select_word = true }) end,
  { noremap = true })
vim.keymap.set("v", "<space>s", "<cmd>lua require('spectre').open_visual()<cr>", { noremap = true })
vim.keymap.set("n", "<space>sc", "viw:lua require('spectre').open_file_search()<cr>", { noremap = true })
vim.keymap.set("n", "<space>sp", "<cmd>lua require('spectre').open({path='*py'})<cr>", { noremap = true })
vim.keymap.set("n", "<space>sx", "<cmd>lua require('spectre').open({path='*xml'})<cr>", { noremap = true })
vim.keymap.set("n", "<space>sj", "<cmd>lua require('spectre').open({path='*js'})<cr>", { noremap = true })
vim.keymap.set("n", "<space>sb", "<cmd>lua require('spectre').open({path='*py *xml'})<cr>", { noremap = true })
vim.keymap.set({ "n", "v" }, "<space>sa", "<cmd>lua require('spectre').open({path='*py *xml *js'})<cr>",
  { noremap = true })
vim.keymap.set({ "n", "v" }, "<space>pw", "<cmd>HopWord<cr>", { noremap = true })
vim.keymap.set({ "n", "v" }, "<leader>.", "<cmd>HopWord<cr>", { noremap = true })
vim.keymap.set({ "n", "v" }, "<leader>m", "<cmd>HopWord<cr>", { noremap = true })
vim.keymap.set({ "n", "v" }, "<space>ps", "<cmd>HopLineStart<cr>", { noremap = true })
vim.keymap.set({ "n", "v" }, "<space>pl", "<cmd>HopLine<cr>", { noremap = true })
vim.keymap.set({ "n", "v" }, "<space>pp", "<cmd>HopPattern<cr>", { noremap = true })
vim.keymap.set({ "n", "v" }, "<space>pc", "<cmd>HopChar2<cr>", { noremap = true })
vim.keymap.set({ "n", "v" }, "<space>pC", "<cmd>HopChar1<cr>", { noremap = true })
vim.keymap.set({ "n", "v" }, "<space>pC", "<cmd>HopChar1<cr>", { noremap = true })
vim.keymap.set('n', '=u', require("memento").toggle, { noremap = true })
vim.keymap.set('n', '=U', require("memento").clear_history, { noremap = true })

-- LSP KEYBINDINGS - key
-- rust
vim.keymap.set("n", "=rr", "<cmd>RustRunnables<cr>", { noremap = true })
vim.keymap.set("n", "=rc", "<cmd>RustOpenCargo<cr>", { noremap = true })
vim.keymap.set("n", "=rp", "<cmd>RustParentModule<cr>", { noremap = true })
vim.keymap.set("n", "=rt", "<cmd>RustToggleInlayHints<cr>", { noremap = true })
vim.keymap.set("n", "=rg", "<cmd>CargoReload<cr>", { noremap = true })
-- vim.keymap.set("n", "=r.", "<cmd>RustHoverAction<cr>", { noremap = true })
vim.keymap.set("n", "<S-F1>", "<cmd>RustHoverAction<cr>", { noremap = true })
vim.keymap.set("n", "=re", "<cmd>RustExpandMacro<cr>", { noremap = true })
vim.keymap.set("n", "=rd", "<cmd>RustDebuggables<cr>", { noremap = true })

vim.keymap.set("n", "=ii", "<cmd>LspInfo<cr>", { noremap = true })
vim.keymap.set("n", "=io", "<cmd>LspInstallInfo<cr>", { noremap = true })
vim.keymap.set("n", "=is", "<cmd>LspStop<cr>", { noremap = true })
vim.keymap.set("n", "=ia", "<cmd>LspStop<cr>", { noremap = true })

-- vim.keymap.set("n", "-ct", require('crates').toggle, { noremap = true })
-- vim.keymap.set("n", "-cr", require('crates').reload, { noremap = true })
-- vim.keymap.set("n", "-cu", require('crates').update_crate, { noremap = true })
-- vim.keymap.set("n", "-cu", require('crates').update_crates, { noremap = true })
-- vim.keymap.set("n", "-ca", require('crates').update_all_crates, { noremap = true })
-- vim.keymap.set("n", "-cU", require('crates').upgrade_crate, { noremap = true })
-- vim.keymap.set("n", "-cU", require('crates').upgrade_crates, { noremap = true })
-- vim.keymap.set("n", "-cA", require('crates').upgrade_all_crates, { noremap = true })

-- DAP + TEST KEYBINDINGS
vim.keymap.set("n", "=`", "<cmd>TestLast<cr>", { noremap = true })
vim.keymap.set("n", "=1", "<cmd>TestNearest<cr>", { noremap = true })
vim.keymap.set("n", "=2", "<cmd>TestFile<cr>", { noremap = true })
vim.keymap.set("n", "=3", "<cmd>TestSuite<cr>", { noremap = true })

vim.keymap.set({ 'i', 'n', 'v' }, '<A-o>', '<esc>', { noremap = true })

vim.keymap.set('n', '<F5>', '<cmd>lua require"dap".continue()<cr>', { noremap = true })
vim.keymap.set('n', '<S-F5>', '<Cmd>lua require"dap".run_last()<CR>', { noremap = true })
vim.keymap.set('n', '<F1>', '<cmd>lua require"dap".step_over()<cr>', { noremap = true })
vim.keymap.set('n', '<F2>', '<cmd>lua require"dap".step_into()<cr>', { noremap = true })
vim.keymap.set('n', '<F3>', '<cmd>lua require"dap".step_out()<cr>', { noremap = true })
vim.keymap.set('n', '<F11>', '<cmd>lua require"dapui".toggle()<cr>', { noremap = true })
vim.keymap.set('n', '<F4>', '<Cmd>lua require("dapui").eval()<CR>', { noremap = true })
vim.keymap.set('v', '<F4>', '<Cmd>lua require("dapui").eval()<CR>', { noremap = true })
-- vim.keymap.set('n', '<F9>', '<cmd>lua require"dap".toggle_breakpoint()<cr>', { noremap = true })
-- vim.keymap.set('n', '<S-F9>', '<cmd>lua require"dap".set_breakpoint(vim.fn.input("Breakpoint condition: "))<cr>',
  -- { noremap = true })
vim.keymap.set('n', '<S-F10>', '<cmd>lua require"dap".set_breakpoint(nil, nil, vim.fn.input("Log point message: "))<cr>',
  { noremap = true })

vim.keymap.set("n", "<F9>", "<cmd>lua require('dap').toggle_breakpoint(); require('persistent-breakpoints.api').store_breakpoints(false)<cr>", { noremap = true })
vim.keymap.set("n", "<F8>", "<cmd>lua require('dap').set_breakpoint(vim.fn.input '[Condition] > '); require('persistent-breakpoints.api').store_breakpoints(false)<cr>", { noremap = true })
vim.keymap.set("n", "<S-F9>", "<cmd>lua require('dap').clear_breakpoints(); require('persistent-breakpoints.api').store_breakpoints(true)<cr>", { noremap = true })

vim.keymap.set('n', '<A-c>', '<cmd>lua require"dap".continue()<cr>', { noremap = true })
vim.keymap.set('n', '<A-n>', '<cmd>lua require"dap".step_over()<cr>', { noremap = true })
vim.keymap.set('n', '<A-s>', '<cmd>lua require"dap".step_into()<cr>', { noremap = true })
vim.keymap.set('n', '<A-f>', '<cmd>lua require"dap".step_out()<cr>', { noremap = true })
vim.keymap.set('n', '<A-b>', '<cmd>lua require"dap".toggle_breakpoint()<cr>', { noremap = true })
vim.keymap.set('n', '<A-T>', '<cmd>lua require"dapui".toggle()<cr>', { noremap = true })
vim.keymap.set('n', '<A-C>', '<Cmd>lua require"dap".run_last()<CR>', { noremap = true })
vim.keymap.set('n', '<A-i>', '<Cmd>lua require("dapui").eval()<CR>', { noremap = true })
vim.keymap.set('v', '<A-i>', '<Cmd>lua require("dapui").eval()<CR>', { noremap = true })
vim.keymap.set('n', '=h', '<cmd>lua require"dap.ui.widgets".hover()<cr>', { noremap = true })
vim.keymap.set('n', '=k', "<cmd>lua local widgets=require'dap.ui.widgets';widgets.centered_float(widgets.scopes)<cr>",
  { noremap = true })
vim.keymap.set('n', '=tx', require 'telescope'.extensions.dap.commands, { noremap = true })
vim.keymap.set('n', '=tc', require 'telescope'.extensions.dap.configurations, { noremap = true })
vim.keymap.set('n', '=tb', require 'telescope'.extensions.dap.list_breakpoints, { noremap = true })
vim.keymap.set('n', '=tv', require 'telescope'.extensions.dap.variables, { noremap = true })
vim.keymap.set('n', '=tf', require 'telescope'.extensions.dap.frames, { noremap = true })
-- vim.keymap.set('n', '=r', require"dap".repl.run_last, { noremap = true })
vim.keymap.set('n', '<A-r>', require "dap".run_to_cursor, { noremap = true })
vim.keymap.set('n', '<A-v>', '<cmd>lua require"dap".set_breakpoint(vim.fn.input("Breakpoint condition: "))<cr>',
  { noremap = true })
vim.keymap.set('n', '<A-x>', '<cmd>lua require"dap".set_breakpoint(nil, nil, vim.fn.input("Log point message: "))<cr>',
  { noremap = true })
-- vim.keymap.set('n', '=T', '<cmd>lua require"dap".terminate()<cr>', { noremap = true })
vim.keymap.set('n', '<A-t>', '<cmd>lua require"dap".disconnect()<cr>', { noremap = true })

-- vim.keymap.set('n', '<space>csc', '<cmd>lua require"dap.ui.variables".scopes()<cr>', { noremap = true })
-- vim.keymap.set('n', '<space>chh', '<cmd>lua require"dap.ui.variables".hover()<cr>', { noremap = true })
--   '<cmd>lua require"dap.ui.variables".visual_hover()<cr>', { noremap = true })
-- vim.keymap.set('n', '<space>cuh', '<cmd>lua require"dap.ui.widgets".hover()<cr>', { noremap = true })


