vim.cmd("syntax enable");
vim.cmd("filetype on");
vim.cmd("filetype indent on");
vim.cmd("filetype plugin on");
vim.o.hidden = true
vim.o.confirm = true
vim.o.background = "dark"
vim.o.backup = false
vim.o.clipboard = "unnamedplus"
vim.o.cmdheight = 2
vim.o.conceallevel = 0
vim.o.expandtab = true
vim.o.fileencoding = "utf-8"
vim.o.guifont ="LiterationMono Nerd Font:h12"
vim.o.hlsearch = false
vim.o.ignorecase = true
vim.o.inccommand = "split"
vim.o.incsearch = true
vim.o.iskeyword = vim.o.iskeyword .. ",-" .. ",_"
vim.o.mouse = "a"
vim.o.pumheight = 10
vim.o.shortmess = vim.o.shortmess .. "c"
-- vim.o.completeopt = "menuone,noselect,noinsert"
vim.o.completeopt = "menuone,noselect"
vim.o.showmode = false
vim.o.smartcase = true
vim.o.smartindent = true
vim.o.smarttab = true
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.swapfile = false
vim.o.t_Co = "256"
vim.o.termguicolors = true
vim.o.title = true
-- vim.o.titlestring="%<%F%=%l/%L - nvim"
vim.o.timeoutlen = 500
vim.o.updatetime = 100
vim.o.writebackup = false
vim.wo.cursorline = true
vim.wo.number = true
vim.wo.scrolloff = 15
vim.wo.signcolumn = "yes"
vim.wo.wrap = false

vim.wo.foldmethod = "indent"
vim.wo.foldenable = false
vim.wo.foldlevel = 99

vim.o.expandtab = true
vim.o.shiftwidth = 4
vim.o.softtabstop = 4
vim.o.tabstop = 4
vim.o.smartindent = true
vim.o.showtabline = 2
vim.cmd("autocmd Filetype cpp setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2")
vim.cmd("autocmd Filetype c setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2")
vim.cmd("autocmd Filetype lua setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4")

