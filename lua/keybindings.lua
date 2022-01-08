vim.api.nvim_set_keymap("n", "<Space>", "<NOP>", { noremap = true })
vim.g.mapleader = " "

-- vim.api.nvim_set_keymap("i", "jk", "<esc>", {})
-- vim.api.nvim_set_keymap("i", "jj", "<esc>", {})
-- vim.api.nvim_set_keymap("i", "kk", "<esc>", {})
-- vim.api.nvim_set_keymap("i", "kj", "<esc>", {})

-- nnoremap q: <nop>
-- nnoremap Q <nop>
vim.api.nvim_set_keymap("n", "q:", "<nop>", { noremap = true })
-- vim.api.nvim_set_keymap("n", "Q", "<nop>", { noremap = true })

vim.api.nvim_set_keymap("n", "<Leader>/", ":set hlsearch!<CR>", { noremap = true })

vim.api.nvim_set_keymap("n", "<leader>er", ":NvimTreeFindFile<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>ee", ":NvimTreeToggle<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-e>", ":NvimTreeToggle<CR>", { noremap = true })

vim.api.nvim_set_keymap("n", "Y", "y$", { noremap = true })
vim.api.nvim_set_keymap("n", "n", "nzzzv", { noremap = true })
vim.api.nvim_set_keymap("n", "N", "Nzzzv", { noremap = true })
vim.api.nvim_set_keymap("n", "J", "mzJ`z", { noremap = true })

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

vim.api.nvim_set_keymap("n", "<leader>,,", "<cmd>FocusMaxOrEqual<cr>", {})
vim.api.nvim_set_keymap("n", "<leader>,.", "<cmd>FocusToggle<cr>", {})

vim.api.nvim_set_keymap("v", "<", "<gv", { noremap = true })
vim.api.nvim_set_keymap("v", ">", ">gv", { noremap = true })

vim.api.nvim_set_keymap("n", "<Leader>a", "ggVG", { noremap = true })

vim.api.nvim_set_keymap("n", "<Tab>", ":BufferLineCycleNext<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>bw", "<cmd>lua require('close_buffers').wipe({type = 'all', force = true})<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>bo", "<cmd>lua require('close_buffers').wipe({type = 'other'})<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>bh", "<cmd>lua require('close_buffers').delete({type = 'hidden', force = true})<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>bn", "<cmd>lua require('close_buffers').delete({type = 'nameless'})<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>q",  "<cmd>lua require('close_buffers').delete({type = 'this'})<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>d", ":bd<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<Leader>w", ":wa<CR>", {noremap = true})

vim.api.nvim_set_keymap("n", "<Leader><Space>", ":b#<CR>", { noremap = true })

vim.api.nvim_set_keymap("n", "<Leader>t", ":Telescope<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<Leader>tp", "<cmd>lua require('myplugins.telescope').search_dotfiles()<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<Leader>tx", "<cmd>lua require('myplugins.telescope').search_with_extension()<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<Leader>te", ":Telescope file_browser<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<Leader>tf", "<cmd>lua require('telescope.builtin').find_files()<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<Leader>tg", "<cmd>lua require('telescope.builtin').live_grep()<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<Leader>b", "<cmd>lua require('telescope.builtin').buffers()<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<Leader>u", "<cmd>lua require('telescope.builtin').buffers()<CR>", {noremap = true})
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

vim.api.nvim_set_keymap("n", "<Leader>ff", ":lua require'myplugins.nvimbqf'.toggle_quickfix()<cr>", {noremap = true})
vim.api.nvim_set_keymap("n", "<Leader>f?", ":lua require'myplugins.nvimbqf'.print_bqf_config()<cr>", {noremap = true})
vim.api.nvim_set_keymap("n", "<Leader>fc", ":cexpr []<CR>", {noremap = true})

vim.api.nvim_set_keymap("n", "<Leader>gg", ":Neogit<CR>", {noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>G", ":DiffviewClose<CR>", {noremap = true })
-- vim.api.nvim_set_keymap("n", "<Leader>gs", ":Gitsigns toggle_signs<CR>", {noremap = true})
-- vim.api.nvim_set_keymap("n", "<Leader>gn", ":Gitsigns toggle_numhl<CR>", {noremap = true})
-- vim.api.nvim_set_keymap("n", "<Leader>gl", ":Gitsigns toggle_linehl<CR>", {noremap = true})
-- vim.api.nvim_set_keymap("n", "<Leader>gb", ":Gitsigns toggle_current_line_blame<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<Leader>gb", ":GitBlameToggle<CR>", {noremap = true})

vim.api.nvim_set_keymap('x', 'K', ':move \'<-2<CR>gv-gv', {noremap = true})
vim.api.nvim_set_keymap('x', 'J', ':move \'>+1<CR>gv-gv', {noremap = true})

vim.api.nvim_set_keymap("n", "<Leader>o", ":AerialToggle<cr>", { noremap = true })

-- vim.api.nvim_set_keymap("n", "<Leader>S", ":lua require('spectre').open()<CR>", {    qnoremap = true })
-- vim.api.nvim_set_keymap("n", "<Leader>s", ":lua require('spectre').open()<cr><cmd>vert resize 60<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>S", ":lua require('spectre').open()<cr>", { noremap = true })
-- write your custom open function
vim.api.nvim_set_keymap("n", "<Leader>s", ":lua require('spectre').open({ path='*py *xml' })<cr>", { noremap = true })
-- "search current word
-- vim.api.nvim_set_keymap("n", "<Leader>sw", "viw:lua require('spectre').open_visual()<CR>", { noremap = true })
-- vim.api.nvim_set_keymap("v", "<Leader>s", ":lua require('spectre').open_visual()<CR>", { noremap = true })
-- vim.api.nvim_set_keymap("n", "<Leader>sw", "viw:lua require('spectre').open_visual()<cr><cmd>vert resize 60<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>sw", "viw:lua require('spectre').open_visual()<cr>", { noremap = true })
-- vim.api.nvim_set_keymap("v", "<Leader>s", ":lua require('spectre').open_visual()<cr><cmd>vert resize 60<cr>", { noremap = true })
vim.api.nvim_set_keymap("v", "<Leader>s", ":lua require('spectre').open_visual()<cr>", { noremap = true })
-- vim.api.nvim_set_keymap("n", "<Leader>sp", "viw:lua require('spectre').open_file_search()<CR>", { noremap = true })
-- vim.api.nvim_set_keymap("n", "<Leader>sp", "viw:lua require('spectre').open_file_search()<cr><cmd>vert resize 60<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>sp", "viw:lua require('spectre').open_file_search()<cr>", { noremap = true })

vim.api.nvim_set_keymap("n", "<F36>", ":PackerSync<cr>", {})
vim.api.nvim_set_keymap("n", "<C-F12>", ":PackerSync<cr>", {})
vim.api.nvim_set_keymap("n", "<F12>", "<Plug>RestNvim", {})
-- vim.api.nvim_set_keymap("n", "<F10>", ":RooterToggle<cr>", {})
vim.api.nvim_set_keymap("n", "<F9>", ":lua require'colorscheme'.toggle_theme()<cr>", {})
vim.api.nvim_set_keymap("n", "<F8>", ":IndentBlanklineToggle<cr>", {})
vim.api.nvim_set_keymap("n", "<F5>", ":checktime<cr>", {})

vim.api.nvim_set_keymap("n", "<leader>xx", "<cmd>Trouble<cr>", {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>xw", "<cmd>Trouble lsp_workspace_diagnostics<cr>", {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>xd", "<cmd>Trouble lsp_document_diagnostics<cr>", {noremap = true})
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

vim.api.nvim_set_keymap("n", "<leader>C", "<cmd>TSContextToggle<cr>", {noremap = true})

-- vim.api.nvim_set_keymap("n", "<leader>nt", "<cmd>Telescope gkeep<cr>", {noremap = true})
-- vim.api.nvim_set_keymap("n", "<leader>nn", "<cmd>GkeepToggle<cr>", {noremap = true})
-- vim.api.nvim_set_keymap("n", "<leader>ns", "<cmd>GkeepSync<cr>", {noremap = true})

vim.api.nvim_exec([[
nnoremap <silent> <leader>ct :lua require('crates').toggle()<cr>
nnoremap <silent> <leader>cr :lua require('crates').reload()<cr>
nnoremap <silent> <leader>cu :lua require('crates').update_crate()<cr>
vnoremap <silent> <leader>cu :lua require('crates').update_crates()<cr>
nnoremap <silent> <leader>ca :lua require('crates').update_all_crates()<cr>
nnoremap <silent> <leader>cU :lua require('crates').upgrade_crate()<cr>
vnoremap <silent> <leader>cU :lua require('crates').upgrade_crates()<cr>
nnoremap <silent> <leader>cA :lua require('crates').upgrade_all_crates()<cr>
]], false)
