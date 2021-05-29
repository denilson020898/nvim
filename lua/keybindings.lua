vim.api.nvim_set_keymap("n", "<Space>", "<NOP>", { noremap = true, silent = true })
vim.g.mapleader = " "

vim.api.nvim_set_keymap("n", "<Leader>/", ":set hlsearch!<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<Leader>e", ":NvimTreeFindFile<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-e>", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<Leader>a", "ggVG", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<A-h>", "<C-w>h", { silent = true })
vim.api.nvim_set_keymap("n", "<A-j>", "<C-w>j", { silent = true })
vim.api.nvim_set_keymap("n", "<A-k>", "<C-w>k", { silent = true })
vim.api.nvim_set_keymap("n", "<A-l>", "<C-w>l", { silent = true })

vim.api.nvim_set_keymap("v", "<", "<gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", ">", ">gv", { noremap = true, silent = true })

vim.api.nvim_set_keymap("i", "jj", "<Esc>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "jk", "<Esc>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "kj", "<Esc>", { noremap = true, silent = true })

-- vim.api.nvim_set_keymap("n", "<Tab>", ":BufferLineCycleNext<CR>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<Leader>be", ":BufferLineSortByExtension<CR>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<Leader>bd", ":BufferLineSortByDirectory<CR>", { noremap = true, silent = true })
--
vim.api.nvim_set_keymap("n", "<Tab>", ":BufferNext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-Tab>", ":BufferPrevious<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<Leader>1", ":BufferGoto 1<CR>", { noremap = true })
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
vim.api.nvim_set_keymap("n", "<Leader>tp", "<cmd>lua require('nvim-plugins.telescope').search_dotfiles()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<Leader>tx", "<cmd>lua require('nvim-plugins.telescope').search_with_extension()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<Leader>tf", "<cmd>lua require('telescope.builtin').find_files()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<Leader>tg", "<cmd>lua require('telescope.builtin').live_grep()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<Leader>tb", "<cmd>lua require('telescope.builtin').buffers()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<Leader>th", "<cmd>lua require('telescope.builtin').help_tags()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<Leader>ts", ":SearchSession<CR>", {noremap = true, silent = true})

vim.api.nvim_set_keymap("n", "<A-q>", ":copen<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<A-w>", ":cclose<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<A-c>", ":cexpr []<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<A-n>", ":cnext<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<A-p>", ":cprev<CR>", {noremap = true, silent = true})

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

vim.api.nvim_set_keymap("n", "<Leader>S", ":SymbolsOutline<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>sh", ":split<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>sv", ":vsplit<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<Leader>T", ":vs<bar>:b#<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<Leader>w", ":wa<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<Leader>q", ":bd<CR>", {noremap = true, silent = true})

-- vim.api.nvim_set_keymap('n', '<Leader>\\', '<CMD>lua require("FTerm").toggle()<CR>', {noremap = true, silent = true})
-- vim.api.nvim_set_keymap('t', '<Leader>\\', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>', {noremap = true, silent = true})

