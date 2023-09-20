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
vim.keymap.set("n", "<space><space>", "<cmd>b#<cr>", { noremap = true })

vim.keymap.set("n", "<space>n", "<cmd>Rex<cr>", { noremap = true })

vim.keymap.set("n", "<space>tt", "<cmd>Telescope<cr>", { noremap = true })
vim.keymap.set("n", "<space>r", "<cmd>Telescope resume<cr>", { noremap = true })
vim.keymap.set("n", "<space>f", require('telescope.builtin').find_files, { noremap = true })
vim.keymap.set("n", "<space>d", require('telescope.builtin').live_grep, { noremap = true })

vim.keymap.set("n", "<space>i", "<cmd>lua require('telescope.builtin').buffers{cache_picker=false}<cr>",
  { noremap = true })
vim.keymap.set("n", "<space>td", require('telescope.builtin').diagnostics, { noremap = true })

vim.keymap.set("n", "<space>I", "<cmd>lua require('telescope.builtin').lsp_implementations({show_line=false})<cr>",
  { noremap = true })
vim.keymap.set("n", "<space>F", "<cmd>lua require('telescope.builtin').lsp_type_definitions({show_line=false})<cr>",
  { noremap = true })
vim.keymap.set("n", "<space>D", "<cmd>lua require('telescope.builtin').lsp_definitions({show_line=false})<cr>",
  { noremap = true })
vim.keymap.set("n", "<space>y", "<cmd>lua require('telescope.builtin').lsp_references({fname_width=100})<cr>",
  { noremap = true })
vim.keymap.set("n", "<space>e",
  "<cmd>lua require('telescope.builtin').lsp_dynamic_workspace_symbols({fname_width=100})<cr>", { noremap = true })
vim.keymap.set("n", "<space>E", "<cmd>lua require('telescope.builtin').lsp_document_symbols({fname_width=100})<cr>",
  { noremap = true })
vim.keymap.set("n", "<space>S", "<cmd>lua require('telescope.builtin').lsp_workspace_symbols({fname_width=100})<cr>",
  { noremap = true })

vim.keymap.set("n", "<space>o", "<cmd>lua require('telescope.builtin').oldfiles{cache_picker=false}<cr>",
  { noremap = true })

-- vim.keymap.set("n", "<space>vv", "<cmd>copen<cr>", { noremap = true })
-- vim.keymap.set("n", "<space>vc", "<cmd>cexpr []<cr>", { noremap = true })
-- vim.keymap.set("n", "<space>vn", "<cmd>cnext<cr>", { noremap = true })
-- vim.keymap.set("n", "<space>vp", "<cmd>cprev<cr>", { noremap = true })
-- vim.keymap.set("n", "<leader>q", "<cmd>cnext<cr>", { noremap = true })
-- vim.keymap.set("n", "<leader>e", "<cmd>cprev<cr>", { noremap = true })
-- vim.keymap.set("n", "<leader>w", "<cmd>copen<cr>", { noremap = true })
-- vim.keymap.set("n", "<leader>W", "<cmd>cclose<cr>", { noremap = true })

vim.keymap.set("n", "<A-n>", "<cmd>cn<cr>", { noremap = true })
vim.keymap.set("n", "<A-p>", "<cmd>cp<cr>", { noremap = true })

vim.keymap.set("n", "<A-f>", "<cmd>cnewer<cr>", { noremap = true })
vim.keymap.set("n", "<A-b>", "<cmd>colder<cr>", { noremap = true })

vim.keymap.set("n", "<C-F12>", "<cmd>PackerSync<cr>", { noremap = true })
vim.keymap.set("n", "<F36>", "<cmd>PackerSync<cr>", { noremap = true })


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

vim.keymap.set({ "n", "v" }, "<leader>.", "<cmd>HopAnywhere<cr>", { noremap = true })
vim.keymap.set({ "n", "v" }, "<leader>m", "<cmd>HopWord<cr>", { noremap = true })

vim.keymap.set('n', '<leader>F', ':%!python -m json.tool<cr>', { noremap = true })
