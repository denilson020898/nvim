vim.cmd("syntax enable");
vim.cmd("filetype on");
vim.cmd("filetype indent on");
vim.cmd("filetype plugin on");

vim.cmd("autocmd Filetype cpp setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2")
vim.cmd("autocmd Filetype c setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2")
vim.cmd("autocmd Filetype wast setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2")
vim.cmd("autocmd Filetype wat setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2")
vim.cmd("autocmd Filetype lua setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4")
vim.o.expandtab = true
vim.o.shiftwidth = 4
vim.o.softtabstop = 4
vim.o.tabstop = 4

vim.o.smartindent = true
vim.o.showtabline = 2
vim.o.hidden = true
vim.o.confirm = true
vim.o.background = "dark"
vim.o.backup = false
vim.o.clipboard = "unnamedplus"
-- vim.o.cmdheight = 2
vim.o.conceallevel = 0
vim.o.fileencoding = "utf-8"
vim.o.guifont ="JetBrains Mono:h12"
-- vim.o.hlsearch = false
vim.o.ignorecase = true
vim.o.inccommand = "split"
vim.o.incsearch = true
vim.o.iskeyword = vim.o.iskeyword .. ",-" .. ",_"
vim.o.mouse = "a"
vim.o.pumheight = 30 
vim.o.shortmess = vim.o.shortmess .. "c"
-- " Set completeopt to have a better completion experience
-- " :help completeopt
-- " menuone: popup even when there's only one match
-- " noinsert: Do not insert text until a selection is made
-- " noselect: Do not select, force user to select one from the menu
-- set completeopt=menuone,noinsert,noselect
vim.o.completeopt = "menuone,noselect,noinsert"
vim.o.showmode = false
vim.o.smartcase = true
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.swapfile = false
-- vim.o.t_Co = "256"
-- vim.o.termguicolors = true
vim.o.title = true
vim.wo.colorcolumn = "100"
-- vim.o.titlestring="%<%F%=%l/%L - nvim"
vim.o.timeoutlen = 500
vim.o.updatetime = 100
vim.o.writebackup = false
vim.wo.cursorline = true
vim.wo.number = true
vim.wo.scrolloff = 10 
vim.wo.signcolumn = "yes"
vim.wo.wrap = false

vim.wo.foldmethod = "indent"
vim.wo.foldenable = false
vim.wo.foldlevel = 99

