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
vim.keymap.set("i", "jj", "<esc>", { noremap = true })
vim.keymap.set("t", "<esc>", "<C-\\><C-n>", { noremap = true })

-- CORE KEYBINDINGS
vim.keymap.set("n", "q:", "<nop>", { noremap = true })
vim.keymap.set("n", "<space>/", "<cmd>set hlsearch!<cr>", { noremap = true })
vim.keymap.set("n", "<space>n", "<cmd>NvimTreeToggle<cr>", { noremap = true })
vim.keymap.set("n", "<leader>n", "<cmd>NvimTreeFindFile<cr>", { noremap = true })
vim.keymap.set("n", "Y", "y$", { noremap = true })
vim.keymap.set("n", "#", "#zz", { noremap = true })
vim.keymap.set("n", "*", "*zz", { noremap = true })
vim.keymap.set("n", "<c-u>", "<c-u>zz", { noremap = true })
vim.keymap.set("n", "<c-d>", "<c-d>zz", { noremap = true })
vim.keymap.set("n", "n", "nzzzv", { noremap = true })
vim.keymap.set("n", "N", "Nzzzv", { noremap = true })
vim.keymap.set("n", "J", "mzJ`z", { noremap = true })
vim.keymap.set("n", "zh", "35zh", { noremap = true })
vim.keymap.set("n", "zl", "35zl", { noremap = true })
vim.keymap.set("v", ">", ">gv", { noremap = true })
vim.keymap.set("v", "<", "<gv", { noremap = true })
vim.keymap.set("v", "m", ">gv", { noremap = true })
vim.keymap.set("v", "n", "<gv", { noremap = true })
vim.keymap.set("n", "<space>a", "ggVG", { noremap = true })
vim.keymap.set("n", "<space>w", "<cmd>wa<cr>", { noremap = true })
vim.keymap.set("n", "<space><space>", "<cmd>b#<cr>", { noremap = true })

vim.keymap.set("n", "<space>t", "<cmd>Telescope<cr>", { noremap = true })
vim.keymap.set("n", "<space>r", "<cmd>Telescope resume<cr>", { noremap = true })
vim.keymap.set("n", "<space>tw", "<cmd>Telescope grep_string<cr>", { noremap = true })
vim.keymap.set("n", "<space>tp", require('myplugins.telescope').search_dotfiles, { noremap = true })
vim.keymap.set("n", "<space>tx", require('myplugins.telescope').search_with_extension, { noremap = true })
vim.keymap.set("n", "<space>tf", require('telescope.builtin').find_files, { noremap = true })
vim.keymap.set("n", "<space>tg", require('telescope.builtin').live_grep, { noremap = true })
vim.keymap.set("n", "<space>q", '<cmd>bd<CR>', { noremap = true })
vim.keymap.set("n", "<space>f", require('telescope.builtin').find_files, { noremap = true })
vim.keymap.set("n", "<space>d", require('telescope.builtin').live_grep, { noremap = true })
vim.keymap.set("n", "H", '<cmd>bprevious<CR>', { noremap = true })
vim.keymap.set("n", "L", '<cmd>bnext<CR>', { noremap = true })

vim.keymap.set("n", "<space>tj", require('telescope.builtin').jumplist, { noremap = true, silent = true })
vim.keymap.set("n", "<space>tk", "<cmd>Telescope dir find_files<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<space>tl", require('telescope.builtin').live_grep, { noremap = true })
vim.keymap.set("n", "<space>tm", require('telescope.builtin').marks, { noremap = true })
vim.keymap.set("n", "<space>i", "<cmd>lua require('telescope.builtin').buffers{cache_picker=false}<cr>",
  { noremap = true })
vim.keymap.set("n", "<space>u", "<cmd>lua require('telescope').extensions.undo.undo()<cr>", { noremap = true })
vim.keymap.set("n", "<space>tH", require('telescope.builtin').help_tags, { noremap = true })

vim.keymap.set("n", "<space>1", require'telescope'.extensions.dap.commands, { noremap = true })
vim.keymap.set("n", "<space>2", require'telescope'.extensions.dap.configurations, { noremap = true })
vim.keymap.set("n", "<space>3", require'telescope'.extensions.dap.list_breakpoints, { noremap = true })
vim.keymap.set("n", "<space>4", require'telescope'.extensions.dap.variables, { noremap = true })
vim.keymap.set("n", "<space>5", require'telescope'.extensions.dap.frames, { noremap = true })

-- vim.keymap.set("n", "<space>q", function() require('close_buffers').delete({ type = 'this' }) end, { noremap = true })
-- vim.keymap.set("n", "<leader>k", "<cmd>BufferLineCycleNext<cr>", { noremap = true })
-- vim.keymap.set("n", "<leader>j", "<cmd>BufferLineCyclePrev<cr>", { noremap = true })
-- vim.keymap.set("n", "<Tab>", "<cmd>BufferLineCycleNext<cr>", { noremap = true })
-- vim.keymap.set("n", "<leader><Tab>", "<cmd>BufferLineCyclePrev<cr>", { noremap = true })
-- vim.keymap.set("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<cr>", { noremap = true })
-- vim.keymap.set("n", "<leader>,", "<cmd>BufferLinePick<cr>", { noremap = true })
-- vim.keymap.set("n", "<leader>o", "<cmd>BufferLinePickClose<cr>", { noremap = true })
-- vim.keymap.set("n", "<leader>`", "<cmd>BufferLineSortByRelativeDirectory<cr>", { noremap = true })

vim.keymap.set("n", "<space>tq", "<cmd>lua require('telescope.builtin').quickfix({cache_picker=false})<cr>",
  { noremap = true })
vim.keymap.set("n", "<space>tQ", "<cmd>lua require('telescope.builtin').quickfixhistory({cache_picker=false})<cr>",
  { noremap = true })
vim.keymap.set("n", "<space>tz", "<cmd>lua require('telescope.builtin').quickfixhistory({cache_picker=false})<cr>",
  { noremap = true })

vim.keymap.set("n", "<space>tb", require('telescope.builtin').current_buffer_fuzzy_find, { noremap = true })
vim.keymap.set("n", "<space>tC", require('telescope.builtin').command_history, { noremap = true })
vim.keymap.set("n", "<space>td", require('telescope.builtin').diagnostics, { noremap = true })

vim.keymap.set("n", "<space>y", require('telescope.builtin').lsp_references, { noremap = true })
vim.keymap.set("n", "<space>e", require('telescope.builtin').lsp_document_symbols, { noremap = true })
vim.keymap.set("n", "<space>E", require('telescope.builtin').lsp_workspace_symbols, { noremap = true })

vim.keymap.set("n", "<space>o", "<cmd>lua require('telescope.builtin').oldfiles{cache_picker=false}<cr>",
  { noremap = true })

vim.keymap.set("n", "<space>ta", "<cmd>Autosession search<cr>", { noremap = true })
vim.keymap.set("n", "<space>tA", "<cmd>Autosession delete<cr>", { noremap = true })

vim.keymap.set("n", "<space>vv", "<cmd>copen<cr>", { noremap = true })
vim.keymap.set("n", "<space>vc", "<cmd>cexpr []<cr>", { noremap = true })
vim.keymap.set("n", "<space>vn", "<cmd>cnext<cr>", { noremap = true })
vim.keymap.set("n", "<space>vp", "<cmd>cprev<cr>", { noremap = true })
vim.keymap.set("n", "<leader>q", "<cmd>cnext<cr>", { noremap = true })
vim.keymap.set("n", "<leader>e", "<cmd>cprev<cr>", { noremap = true })
vim.keymap.set("n", "<leader>w", "<cmd>copen<cr>", { noremap = true })
vim.keymap.set("n", "<leader>W", "<cmd>cclose<cr>", { noremap = true })

-- FN KEY
vim.keymap.set("n", "<F10>", "<cmd>AerialToggle!<cr>", { noremap = true })
vim.keymap.set("n", "<F6>", "<cmd>resize 100<cr>", { noremap = true })
vim.keymap.set("n", "<F18>", "<cmd>lua require'colorscheme'.toggle_theme()<cr>", { noremap = true })
vim.keymap.set("n", "<F7>", "<cmd>lua require'settings'.switch_foldmethod()<cr>", { noremap = true })

vim.keymap.set("n", "<C-F12>", "<cmd>PackerSync<cr>", { noremap = true })
vim.keymap.set("n", "<F36>", "<cmd>PackerSync<cr>", { noremap = true })

vim.keymap.set("n", "<space>h", "<C-w>h", { noremap = true })
vim.keymap.set("n", "<space>j", "<C-w>j", { noremap = true })
vim.keymap.set("n", "<space>k", "<C-w>k", { noremap = true })
vim.keymap.set("n", "<space>l", "<C-w>l", { noremap = true })
vim.keymap.set("n", "<space>p", "<C-w>p", { noremap = true })

vim.keymap.set("n", "<space>=", "<C-w>=", { noremap = true })
vim.keymap.set("n", "<space>-", "<C-w>_", { noremap = true })
vim.keymap.set("n", "<space>\\", "<C-w>|", { noremap = true })
vim.keymap.set("n", "<space>,", "<C-w>|<C-w>_", { noremap = true })
vim.keymap.set("n", "<space>0", "<C-w>|<C-w>_", { noremap = true })

vim.keymap.set("n", "<A-h>", "<C-w>10<", { noremap = true })
vim.keymap.set("n", "<A-j>", "<C-w>10-", { noremap = true })
vim.keymap.set("n", "<A-k>", "<C-w>10+", { noremap = true })
vim.keymap.set("n", "<A-l>", "<C-w>10>", { noremap = true })

vim.keymap.set("n", "<space>V", "<C-w>^<C-w>k<C-w>J", { noremap = true })
vim.keymap.set("n", "<space>H", "<C-w>^<C-w>k<C-w>L", { noremap = true })
vim.keymap.set("n", "<space>Q", "<C-w>q", { noremap = true })

vim.keymap.set("n", "<A-v>", "<C-w>^<C-w>k<C-w>J", { noremap = true })
vim.keymap.set("n", "<A-s>", "<C-w>^<C-w>k<C-w>L", { noremap = true })
vim.keymap.set("n", "<A-q>", "<C-w>q", { noremap = true })

vim.keymap.set("n", "<space>gg", function()
  require('neogit').open()
end, { noremap = true })

vim.keymap.set("n", "<space>gh", "<cmd>DiffviewFileHistory %<cr>", { noremap = true })
vim.keymap.set("n", "<space>gd", "<cmd>DiffviewOpen<cr>", { noremap = true })
vim.keymap.set("n", "<space>gc", "<cmd>DiffviewClose<cr>", { noremap = true })
vim.keymap.set("n", "<space>gr", "<cmd>DiffviewRefresh<cr>", { noremap = true })
vim.keymap.set("n", "<space>gb", "<cmd>GitBlameToggle<cr>", { noremap = true })
vim.keymap.set("n", "<space>go", "<cmd>GitBlameOpenCommitURL<cr>", { noremap = true })

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
vim.keymap.set({ "n", "v" }, "<leader>.", "<cmd>HopAnywhere<cr>", { noremap = true })
vim.keymap.set({ "n", "v" }, "<leader>m", "<cmd>HopWord<cr>", { noremap = true })
vim.keymap.set({ "n", "v" }, "<leader>pw", "<cmd>HopWord<cr>", { noremap = true })
vim.keymap.set({ "n", "v" }, "<leader>ps", "<cmd>HopLineStart<cr>", { noremap = true })
vim.keymap.set({ "n", "v" }, "<leader>pl", "<cmd>HopLine<cr>", { noremap = true })
vim.keymap.set({ "n", "v" }, "<leader>pp", "<cmd>HopPattern<cr>", { noremap = true })
vim.keymap.set({ "n", "v" }, "<leader>pc", "<cmd>HopChar2<cr>", { noremap = true })
vim.keymap.set({ "n", "v" }, "<leader>pC", "<cmd>HopChar1<cr>", { noremap = true })
vim.keymap.set({ "n", "v" }, "<leader>pC", "<cmd>HopChar1<cr>", { noremap = true })

-- LSP KEYBINDINGS - key
-- rust
vim.keymap.set("n", "<leader>b", "<cmd>RustRunnables<cr>", { noremap = true })
vim.keymap.set("n", "<leader>v", "<cmd>RustDebuggables<cr>", { noremap = true })
vim.keymap.set("n", "<leader>zc", "<cmd>RustOpenCargo<cr>", { noremap = true })
vim.keymap.set("n", "<leader>zp", "<cmd>RustParentModule<cr>", { noremap = true })
vim.keymap.set("n", "<leader>zt", "<cmd>RustToggleInlayHints<cr>", { noremap = true })
vim.keymap.set("n", "<leader>zg", "<cmd>CargoReload<cr>", { noremap = true })
vim.keymap.set("n", "<leader>zh", "<cmd>RustHoverAction<cr>", { noremap = true })

vim.keymap.set("n", "<leader>ii", "<cmd>LspInfo<cr>", { noremap = true })
vim.keymap.set("n", "<leader>is", "<cmd>LspStop<cr>", { noremap = true })
vim.keymap.set("n", "<leader>ia", "<cmd>LspStart<cr>", { noremap = true })
vim.keymap.set("n", "<leader>ir", "<cmd>LspRestart<cr>", { noremap = true })

-- vim.keymap.set("n", "-ct", require('crates').toggle, { noremap = true })
-- vim.keymap.set("n", "-cr", require('crates').reload, { noremap = true })
-- vim.keymap.set("n", "-cu", require('crates').update_crate, { noremap = true })
-- vim.keymap.set("n", "-cu", require('crates').update_crates, { noremap = true })
-- vim.keymap.set("n", "-ca", require('crates').update_all_crates, { noremap = true })
-- vim.keymap.set("n", "-cU", require('crates').upgrade_crate, { noremap = true })
-- vim.keymap.set("n", "-cU", require('crates').upgrade_crates, { noremap = true })
-- vim.keymap.set("n", "-cA", require('crates').upgrade_all_crates, { noremap = true })

-- DAP
vim.keymap.set('n', '<F5>', '<cmd>lua require"dap".continue()<cr>', { noremap = true })
vim.keymap.set('n', '<F17>', '<Cmd>lua require"dap".run_last()<CR>', { noremap = true })
vim.keymap.set('n', '<F1>', '<cmd>lua require"dap".step_over()<cr>', { noremap = true })
vim.keymap.set('n', '<F2>', '<cmd>lua require"dap".step_into()<cr>', { noremap = true })
vim.keymap.set('n', '<F3>', '<cmd>lua require"dap".step_out()<cr>', { noremap = true })
vim.keymap.set('n', '<F11>', '<cmd>lua require"dapui".toggle()<cr>', { noremap = true })
vim.keymap.set('n', '<F4>', '<Cmd>lua require("dapui").eval()<CR>', { noremap = true })
vim.keymap.set('v', '<F4>', '<Cmd>lua require("dapui").eval()<CR>', { noremap = true })
vim.keymap.set('n', '<S-F10>', '<cmd>lua require"dap".set_breakpoint(nil, nil, vim.fn.input("Log point message: "))<cr>'
  , { noremap = true })
vim.keymap.set("n", "<F9>",
  "<cmd>lua require('dap').toggle_breakpoint(); require('persistent-breakpoints.api').store_breakpoints(false)<cr>",
  { noremap = true })
vim.keymap.set("n", "<F8>",
  "<cmd>lua require('dap').set_breakpoint(vim.fn.input '[Condition] > '); require('persistent-breakpoints.api').store_breakpoints(false)<cr>"
  , { noremap = true })
vim.keymap.set("n", "<F21>",
  "<cmd>lua require('dap').clear_breakpoints(); require('persistent-breakpoints.api').store_breakpoints(true)<cr>",
  { noremap = true })
vim.keymap.set("n", "<F14>", require "dap".run_to_cursor, { noremap = true })

vim.keymap.set('n', '<leader>cq', '<cmd>GitConflictListQf<cr>', { noremap = true })
vim.keymap.set('n', '<leader>cr', '<cmd>GitConflictRefresh<cr>', { noremap = true })
vim.keymap.set('n', '<leader>ca', '<cmd>GitConflictChooseBase<cr>', { noremap = true })
vim.keymap.set('n', '<leader>cb', '<cmd>GitConflictChooseBoth<cr>', { noremap = true })
vim.keymap.set('n', '<leader>cc', '<cmd>GitConflictChooseNone<cr>', { noremap = true })
vim.keymap.set('n', '<leader>co', '<cmd>GitConflictChooseOurs<cr>', { noremap = true })
vim.keymap.set('n', '<leader>ct', '<cmd>GitConflictChooseTheirs<cr>', { noremap = true })
vim.keymap.set('n', '<leader>cn', '<cmd>GitConflictNextConflict<cr>', { noremap = true })
vim.keymap.set('n', '<leader>cp', '<cmd>GitConflictPrevConflict<cr>', { noremap = true })

vim.keymap.set('n', '<leader>F', ':%!python -m json.tool<cr>', { noremap = true })

vim.keymap.set("n", "<F12>", "<cmd>set rnu!<CR>")

vim.keymap.set("n", "<space>bo", '<cmd>bufdo bwipeout<CR>', { noremap = true })

-- vim.keymap.set("n", "<space>bw", function() require('close_buffers').wipe({ type = 'all', force = true }) end,
--   { noremap = true })
-- vim.keymap.set("n", "<space>bo", function() require('close_buffers').wipe({ type = 'other' }) end, { noremap = true })
-- vim.keymap.set("n", "<space>bh", function() require('close_buffers').delete({ type = 'hidden', force = true }) end,
--   { noremap = true })
-- vim.keymap.set("n", "<space>C", function() require('close_buffers').delete({ type = 'nameless' }) end,
--   { noremap = true })
-- vim.keymap.set("n", "<space>q", function() require('close_buffers').delete({ type = 'this' }) end, { noremap = true })

-- vim.keymap.set('n', '<space>z', function() require("neotest").output.open({ enter = true, auto_close = true }) end, { noremap = true })
-- vim.keymap.set('n', '<space>x', function() require("neotest").run.run() end, { noremap = true })
-- vim.keymap.set('n', '<space>c', function() require("neotest").run.run(vim.fn.expand("%")) end, { noremap = true })
