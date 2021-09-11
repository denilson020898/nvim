vim.api.nvim_set_keymap("n", "<Space>", "<NOP>", { noremap = true, silent = true })
vim.g.mapleader = " "

vim.api.nvim_set_keymap("n", "<Leader>/", ":set hlsearch!<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<Leader>e", ":NvimTreeFindFile<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-e>", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "Y", "y$", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "n", "nzzzv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "N", "Nzzzv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "J", "mzJ`z", { noremap = true, silent = true })

vim.cmd("noremap <expr> k (v:count > 5 ? \"m'\" . v:count : \"\") . 'k'")
vim.cmd("noremap <expr> j (v:count > 5 ? \"m'\" . v:count : \"\") . 'j'")

vim.api.nvim_set_keymap("i", ".", ".<c-g>u", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", ",", ",<c-g>u", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "(", "(<c-g>u", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "{", "{<c-g>u", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "\"", "\"<c-g>u", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "'", "'<c-g>u", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", ":", ":<c-g>u", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<", "<<c-g>u", { noremap = true, silent = true })

vim.api.nvim_set_keymap("i", "<A-h>", "<C-o>h", { silent = true })
vim.api.nvim_set_keymap("i", "<A-j>", "<C-o>j", { silent = true })
vim.api.nvim_set_keymap("i", "<A-k>", "<C-o>k", { silent = true })
vim.api.nvim_set_keymap("i", "<A-l>", "<C-o>l", { silent = true })
vim.api.nvim_set_keymap("i", "<A-a>", "<C-o>a", { silent = true })
vim.api.nvim_set_keymap("i", "<A-$>", "<C-o>$", { silent = true })

vim.api.nvim_set_keymap("n", "<A-h>", "<C-w>h", { silent = true })
vim.api.nvim_set_keymap("n", "<A-j>", "<C-w>j", { silent = true })
vim.api.nvim_set_keymap("n", "<A-k>", "<C-w>k", { silent = true })
vim.api.nvim_set_keymap("n", "<A-l>", "<C-w>l", { silent = true })

vim.api.nvim_set_keymap("n", "<A-H>", "<C-w>H", { silent = true })
vim.api.nvim_set_keymap("n", "<A-J>", "<C-w>J", { silent = true })
vim.api.nvim_set_keymap("n", "<A-K>", "<C-w>K", { silent = true })
vim.api.nvim_set_keymap("n", "<A-L>", "<C-w>L", { silent = true })

vim.api.nvim_set_keymap("n", "<A-w>", "<C-w>w", { silent = true })
vim.api.nvim_set_keymap("n", "<A-q>", "<C-w>q", { silent = true })
vim.api.nvim_set_keymap("n", "<A-v>", "<C-w>v", { silent = true })
vim.api.nvim_set_keymap("n", "<A-c>", "<C-w>c", { silent = true })
vim.api.nvim_set_keymap("n", "<A-r>", "<C-w>r", { silent = true })
vim.api.nvim_set_keymap("n", "<A-R>", "<C-w>R", { silent = true })
vim.api.nvim_set_keymap("n", "<A-s>", "<C-w>s", { silent = true })
vim.api.nvim_set_keymap("n", "<A-T>", "<C-w>T", { silent = true })
vim.api.nvim_set_keymap("n", "<A-o>", "<C-w>o", { silent = true })
vim.api.nvim_set_keymap("n", "<A-n>", "<C-w>n", { silent = true })
-- vim.api.nvim_set_keymap("n", "<A-_>", "<C-w>_", { silent = true })
vim.api.nvim_set_keymap("n", "<A-->", "<C-w>_", { silent = true })
vim.api.nvim_set_keymap("n", "<A-=>", "<C-w>=", { silent = true })
vim.api.nvim_set_keymap("n", "<A-|>", "<C-w>|", { silent = true })
vim.api.nvim_set_keymap("n", "<A->>", "<C-w>>", { silent = true })
vim.api.nvim_set_keymap("n", "<A-<>", "<C-w><", { silent = true })
vim.api.nvim_set_keymap("n", "<A-^>", "<C-w>^", { silent = true })
vim.api.nvim_set_keymap("n", "<A-p>", "<C-w>p", { silent = true })
vim.api.nvim_set_keymap("n", "<A-t>", "<C-w>t", { silent = true })
vim.api.nvim_set_keymap("n", "<A-b>", "<C-w>b", { silent = true })
vim.api.nvim_set_keymap("n", "<A-x>", "<C-w>x", { silent = true })

vim.api.nvim_set_keymap("n", "<A-S>", "<C-w>^<C-w>k<C-w>J", { silent = true })
vim.api.nvim_set_keymap("n", "<A-V>", "<C-w>^<C-w>k<C-w>L", { silent = true })


vim.api.nvim_set_keymap("v", "<", "<gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", ">", ">gv", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<Leader>a", "ggVG", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<Tab>", ":BufferLineCycleNext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>bw", "<cmd>lua require('close_buffers').wipe({type = 'all', force = true})<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>bo", "<cmd>lua require('close_buffers').wipe({type = 'other'})<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>bh", "<cmd>lua require('close_buffers').delete({type = 'hidden', force = true})<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>bn", "<cmd>lua require('close_buffers').delete({type = 'nameless'})<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>q",  "<cmd>lua require('close_buffers').delete({type = 'this'})<cr>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<Leader>q", ":bd<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<Leader>w", ":wa<CR>", {noremap = true, silent = true})

vim.api.nvim_set_keymap("n", "<Leader><Space>", ":b#<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<Leader>t", ":Telescope<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<Leader>tp", "<cmd>lua require('myplugins.telescope').search_dotfiles()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<Leader>tx", "<cmd>lua require('myplugins.telescope').search_with_extension()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<Leader>te", ":Telescope file_browser<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<Leader>tf", "<cmd>lua require('telescope.builtin').find_files()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<Leader>tg", "<cmd>lua require('telescope.builtin').live_grep()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<Leader>b", "<cmd>lua require('telescope.builtin').buffers()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<Leader>th", "<cmd>lua require('telescope.builtin').help_tags()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<Leader>ts", ":SearchSession<CR>", {noremap = true, silent = true})

vim.api.nvim_set_keymap("n", "<Leader>rr", ":RustRunnables<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<Leader>rc", ":RustOpenCargo<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<Leader>rp", ":RustParentModule<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<Leader>rt", ":RustToggleInlayHints<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<Leader>rg", ":CargoReload<CR>", {noremap = true, silent = true})

vim.api.nvim_set_keymap("n", "<Leader>ff", ":lua require'myplugins.nvimbqf'.toggle_quickfix()<cr>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<Leader>f?", ":lua require'myplugins.nvimbqf'.print_bqf_config()<cr>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<Leader>fc", ":cexpr []<CR>", {noremap = true, silent = true})

vim.api.nvim_set_keymap("n", "<Leader>gg", ":Neogit<CR>", {noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<Leader>gs", ":Gitsigns toggle_signs<CR>", {noremap = true, silent = true})
-- vim.api.nvim_set_keymap("n", "<Leader>gn", ":Gitsigns toggle_numhl<CR>", {noremap = true, silent = true})
-- vim.api.nvim_set_keymap("n", "<Leader>gl", ":Gitsigns toggle_linehl<CR>", {noremap = true, silent = true})
-- vim.api.nvim_set_keymap("n", "<Leader>gb", ":Gitsigns toggle_current_line_blame<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<Leader>gb", ":GitBlameToggle<CR>", {noremap = true, silent = true})

vim.api.nvim_set_keymap('x', 'K', ':move \'<-2<CR>gv-gv', {noremap = true, silent = true})
vim.api.nvim_set_keymap('x', 'J', ':move \'>+1<CR>gv-gv', {noremap = true, silent = true})

-- windows terminal <C-/> is 
vim.api.nvim_set_keymap("n", "<C-/>", "<Plug>kommentary_line_default", {})
vim.api.nvim_set_keymap("n", "", "<Plug>kommentary_line_default", {})
vim.api.nvim_set_keymap("v", "<C-/>", "<Plug>kommentary_visual_default", {})
vim.api.nvim_set_keymap("v", "", "<Plug>kommentary_visual_default", {})

vim.api.nvim_set_keymap("n", "<Leader>o", ":AerialToggle<cr>", { noremap = true, silent = true })

-- vim.api.nvim_set_keymap("n", "<Leader>S", ":lua require('spectre').open()<CR>", {    qnoremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<Leader>s", ":lua require('spectre').open()<cr><cmd>vert resize 60<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>s", ":lua require('spectre').open()<cr>", { noremap = true, silent = true })
-- "search current word
-- vim.api.nvim_set_keymap("n", "<Leader>sw", "viw:lua require('spectre').open_visual()<CR>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("v", "<Leader>s", ":lua require('spectre').open_visual()<CR>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<Leader>sw", "viw:lua require('spectre').open_visual()<cr><cmd>vert resize 60<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>sw", "viw:lua require('spectre').open_visual()<cr>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("v", "<Leader>s", ":lua require('spectre').open_visual()<cr><cmd>vert resize 60<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<Leader>s", ":lua require('spectre').open_visual()<cr>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<Leader>sp", "viw:lua require('spectre').open_file_search()<CR>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<Leader>sp", "viw:lua require('spectre').open_file_search()<cr><cmd>vert resize 60<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>sp", "viw:lua require('spectre').open_file_search()<cr>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<F36>", ":PackerSync<cr>", {})
vim.api.nvim_set_keymap("n", "<C-F12>", ":PackerSync<cr>", {})
vim.api.nvim_set_keymap("n", "<F12>", "<Plug>RestNvim", {})
-- vim.api.nvim_set_keymap("n", "<F10>", ":RooterToggle<cr>", {})
vim.api.nvim_set_keymap("n", "<F9>", ":lua require'colorscheme'.toggle_theme()<cr>", {})
vim.api.nvim_set_keymap("n", "<F8>", ":IndentBlanklineToggle<cr>", {})
vim.api.nvim_set_keymap("n", "<F5>", ":checktime<cr>", {})

vim.api.nvim_set_keymap( "v", "\\0", ":<c-u>HSHighlight 0<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap( "v", "\\1", ":<c-u>HSHighlight 1<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap( "v", "\\2", ":<c-u>HSHighlight 2<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap( "v", "\\3", ":<c-u>HSHighlight 3<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap( "v", "\\4", ":<c-u>HSHighlight 4<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap( "v", "\\5", ":<c-u>HSHighlight 5<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap( "v", "\\6", ":<c-u>HSHighlight 6<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap( "v", "\\7", ":<c-u>HSHighlight 7<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap( "v", "\\8", ":<c-u>HSHighlight 8<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap( "v", "\\9", ":<c-u>HSHighlight 9<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap( "v", "\\\\", ":<c-u>HSRmHighlight<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap( "n", "\\|", ":HSRmHighlight rm_all<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<leader>xx", "<cmd>Trouble<cr>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "<leader>xw", "<cmd>Trouble lsp_workspace_diagnostics<cr>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "<leader>xd", "<cmd>Trouble lsp_document_diagnostics<cr>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "<leader>xl", "<cmd>Trouble loclist<cr>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "<leader>xq", "<cmd>Trouble quickfix<cr>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "gR", "<cmd>Trouble lsp_references<cr>", {silent = true, noremap = true})

vim.api.nvim_set_keymap("n", "<leader>hw", "<cmd>HopWord<cr>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "<leader>hs", "<cmd>HopLineStart<cr>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "<leader>hl", "<cmd>HopLine<cr>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "<leader>hp", "<cmd>HopPattern<cr>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "<leader>hc", "<cmd>HopChar2<cr>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "<leader>hC", "<cmd>HopChar1<cr>", {silent = true, noremap = true})

vim.api.nvim_exec([[
nnoremap <silent> <leader>vt :lua require('crates').toggle()<cr>
nnoremap <silent> <leader>vr :lua require('crates').reload()<cr>
nnoremap <silent> <leader>vu :lua require('crates').update_crate()<cr>
vnoremap <silent> <leader>vu :lua require('crates').update_crates()<cr>
nnoremap <silent> <leader>va :lua require('crates').update_all_crates()<cr>
nnoremap <silent> <leader>vU :lua require('crates').upgrade_crate()<cr>
vnoremap <silent> <leader>vU :lua require('crates').upgrade_crates()<cr>
nnoremap <silent> <leader>vA :lua require('crates').upgrade_all_crates()<cr>
]], false)
