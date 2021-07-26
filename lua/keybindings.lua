vim.api.nvim_set_keymap("n", "<Space>", "<NOP>", { noremap = true, silent = true })
vim.g.mapleader = " "

vim.api.nvim_set_keymap("n", "<Leader>/", ":set hlsearch!<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<Leader>e", ":NvimTreeFindFile<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-e>", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

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

vim.api.nvim_set_keymap("n", "<Tab>", ":BufferNext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-Tab>", ":BufferPrevious<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<Leader>1", ":BufferGoto 1<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>2", ":BufferGoto 2<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>3", ":BufferGoto 3<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>4", ":BufferGoto 4<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>5", ":BufferGoto 5<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>6", ":BufferGoto 6<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>7", ":BufferGoto 7<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>8", ":BufferGoto 8<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>9", ":BufferGoto 9<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<Leader>bd", ":BufferOrderByDirectory<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>bl", ":BufferOrderByLanguage<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<Leader>bW", ":BufferWipeout<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>bA", ":BufferCloseAllButCurrent<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>bH", ":BufferCloseBuffersLeft<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>bL", ":BufferCloseBuffersRight<CR>", { noremap = true, silent = true })

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

vim.api.nvim_set_keymap("n", "<Leader>O", ":SymbolsOutline<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<Leader>w", ":wa<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<Leader>q", ":bd<CR>", {noremap = true, silent = true})


-- vim.api.nvim_set_keymap("n", "<Leader>S", ":lua require('spectre').open()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>S", ":lua require('spectre').open()<cr><cmd>vert resize 80<cr>", { noremap = true, silent = true })
-- "search current word
-- vim.api.nvim_set_keymap("n", "<Leader>sw", "viw:lua require('spectre').open_visual()<CR>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("v", "<Leader>s", ":lua require('spectre').open_visual()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>sw", "viw:lua require('spectre').open_visual()<cr><cmd>vert resize 80<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<Leader>s", ":lua require('spectre').open_visual()<cr><cmd>vert resize 80<cr>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<Leader>sp", "viw:lua require('spectre').open_file_search()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>sp", "viw:lua require('spectre').open_file_search()<cr><cmd>vert resize 80<cr>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<F36>", ":PackerSync<cr>", {})
vim.api.nvim_set_keymap("n", "<F12>", "<Plug>RestNvim", {})
vim.api.nvim_set_keymap("n", "<F10>", ":RooterToggle<cr>", {})
vim.api.nvim_set_keymap("n", "<F9>", ":lua require'colorscheme'.toggle_theme()<cr>", {})
vim.api.nvim_set_keymap("n", "<F8>", ":IndentBlanklineToggle<cr>", {})
vim.api.nvim_set_keymap("n", "<F5>", ":checktime<cr>", {})

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


