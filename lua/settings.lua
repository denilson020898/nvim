-- TERMINAL = vim.fn.expand('$TERMINAL')
-- vim.cmd('let &titleold="'..TERMINAL..'"')
-- vim.o.laststatus = 0
-- vim.wo.colorcolumn = "99"
-- vim.wo.foldmethod = "manual"
vim.cmd("filetype on");
vim.cmd("filetype plugin on");
vim.cmd("filetype indent on");

vim.bo.expandtab = true
vim.o.expandtab = true
vim.o.smarttab = true
vim.bo.smartindent = true
vim.o.smartindent = true
vim.o.tabstop = 4
vim.bo.tabstop = 4
vim.bo.shiftwidth = 4
vim.o.shiftwidth = 4
-- vim.o.softtabstop = 2

vim.o.background = "dark"
vim.o.backup = false
vim.o.clipboard = "unnamedplus"
vim.o.cmdheight = 2
vim.o.conceallevel = 0
vim.o.fileencoding = "utf-8"
vim.o.guifont ="LiterationMono Nerd Font:h12"
vim.o.hidden = true
vim.o.hlsearch = false
vim.o.ignorecase = true
vim.o.inccommand = "split"
vim.o.incsearch = true
vim.o.iskeyword = vim.o.iskeyword .. ",-" .. ",_"
vim.o.mouse = "a"
vim.o.pumheight = 10
vim.o.shortmess = vim.o.shortmess .. "c"
vim.o.showmode = false
vim.o.showtabline = 2
vim.o.smartcase = true
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.swapfile = false
vim.o.t_Co = "256"
vim.o.termguicolors = true
vim.o.timeoutlen = 1000
vim.o.title = true
vim.o.titlestring="%<%F%=%l/%L - nvim"
vim.o.updatetime = 100
vim.o.writebackup = false
vim.wo.cursorline = true
vim.wo.number = true
-- vim.wo.relativenumber = true
vim.wo.scrolloff = 15
vim.wo.signcolumn = "yes"
vim.wo.wrap = false
