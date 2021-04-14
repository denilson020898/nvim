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
vim.api.nvim_set_keymap("n", "<Tab>", ":bnext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-Tab>", ":bprevious<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<Leader><Space>", ":b#<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>b", ":buffers<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<C-/>", ':call NERDComment(0, "toggle")<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap("v", "<C-/>", ':call NERDComment(0, "toggle")<CR>gv', {noremap = true, silent = true})
-- windows terminal <C-/> is 
vim.api.nvim_set_keymap("n", "", ':call NERDComment(0, "toggle")<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap("v", "", ':call NERDComment(0, "toggle")<CR>gv', {noremap = true, silent = true})

-- move line in visual mode
-- vim.api.nvim_set_keymap("x", "K", ":move \"<-2<CR>gv-gv\"", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("x", "J", ":move \">+1<CR>gv-gv\"", { noremap = true, silent = true })

-- tab completion
-- vim.api.nvim_set_keymap("i", "<expr><Tab>", "pubvisible() ? \"\\<C-n>\" : \"\\<TAB>\"", { noremap = true, silent = true })


