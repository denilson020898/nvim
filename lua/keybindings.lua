-- set space to nop first, then set it to leader
vim.api.nvim_set_keymap("n", "<Space>", "<NOP>", { noremap = true, silent = true })
vim.g.mapleader = " "

-- no hl
vim.api.nvim_set_keymap("n", "<Leader>h", ":set hlsearch!<CR>", { noremap = true, silent = true })

-- explorer
vim.api.nvim_set_keymap("n", "<Leader>l", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

-- windows movement
vim.api.nvim_set_keymap("n", "<A-h>", "<C-w>h", { silent = true })
vim.api.nvim_set_keymap("n", "<A-j>", "<C-w>j", { silent = true })
vim.api.nvim_set_keymap("n", "<A-k>", "<C-w>k", { silent = true })
vim.api.nvim_set_keymap("n", "<A-l>", "<C-w>l", { silent = true })

-- indent
vim.api.nvim_set_keymap("v", "<", "<gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", ">", ">gv", { noremap = true, silent = true })

-- escape
vim.api.nvim_set_keymap("i", "jj", "<Esc>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "jk", "<Esc>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "kj", "<Esc>", { noremap = true, silent = true })

-- tab switch buffer
-- vim.api.nvim_set_keymap("n", "<Tab>", ":bnext<CR>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<S-Tab>", ":bprevious<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Tab>", ":BufferLineCycleNext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<Leader>be", ":BufferLineSortByExtension<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>bd", ":BufferLineSortByDirectory<CR>", { noremap = true, silent = true })

-- nnoremap <silent><mymap> :lua require'bufferline'.sort_buffers_by(function (buf_a, buf_b) return buf_a.id < buf_b.id end)<CR>

vim.api.nvim_set_keymap("n", "<Leader><Space>", ":b#<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>1", ":b#<CR>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<Leader>b", ":buffers<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<C-/>", ':call NERDComment(0, "toggle")<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap("v", "<C-/>", ':call NERDComment(0, "toggle")<CR>gv', {noremap = true, silent = true})
-- windows terminal <C-/> is 
vim.api.nvim_set_keymap("n", "", ':call NERDComment(0, "toggle")<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap("v", "", ':call NERDComment(0, "toggle")<CR>gv', {noremap = true, silent = true})

vim.api.nvim_set_keymap("n", "<Leader>t", ":Telescope<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<Leader>f", "<cmd>lua require('telescope.builtin').find_files()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<Leader>g", "<cmd>lua require('telescope.builtin').live_grep()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<Leader>b", "<cmd>lua require('telescope.builtin').buffers()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<Leader>h", "<cmd>lua require('telescope.builtin').help_tags()<CR>", {noremap = true, silent = true})

vim.api.nvim_set_keymap("n", "<Leader>p", "<cmd>lua require('nvim-plugins.telescope').search_dotfiles()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<Leader>=", ":Neoformat<CR>", {noremap = true, silent = true})

vim.api.nvim_set_keymap("n", "<Leader>qq", ":copen<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<Leader>qw", ":cclose<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<Leader>qn", ":cnext<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<Leader>qp", ":cprev<CR>", {noremap = true, silent = true})

-- move line in visual mode
vim.api.nvim_set_keymap("x", "K", ":move \"<-2<CR>gv-gv\"", { noremap = true, silent = true })
vim.api.nvim_set_keymap("x", "J", ":move \">+1<CR>gv-gv\"", { noremap = true, silent = true })



