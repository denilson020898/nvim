local T = {}

vim.cmd("syntax enable");
vim.cmd("filetype on");
vim.cmd("filetype indent on");
vim.cmd("filetype plugin on");

vim.cmd("set autoread | au CursorHold * checktime")

vim.o.expandtab = true
vim.o.shiftwidth = 4
vim.o.softtabstop = 4
vim.o.tabstop = 4

vim.o.smartindent = true
vim.o.hidden = true
vim.o.confirm = true
vim.o.background = "dark"
vim.o.backup = false
vim.o.clipboard = "unnamedplus"
vim.o.conceallevel = 0
vim.o.fileencoding = "utf-8"
vim.o.guifont = "JetBrainsMono Nerd Font:h12"
vim.o.ignorecase = true
vim.o.inccommand = "split"
vim.o.incsearch = true
vim.o.iskeyword = vim.o.iskeyword .. ",-" .. ",_"
vim.o.mouse = "a"
vim.o.pumheight = 30
vim.o.shortmess = vim.o.shortmess .. "c"
vim.opt.completeopt = { "menuone", "noselect", "noinsert" }
vim.o.showmode = false
vim.o.smartcase = true
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.swapfile = false
vim.o.termguicolors = true
vim.o.title = true
vim.wo.colorcolumn = "100"
vim.o.timeoutlen = 1000
vim.o.updatetime = 100
vim.o.writebackup = false
vim.wo.cursorline = true
vim.wo.number = true
vim.wo.scrolloff = 10
vim.wo.signcolumn = "yes"
vim.wo.wrap = false
vim.wo.relativenumber = true

function custom_fold_text()
  local line = vim.fn.getline(vim.v.foldstart)
  local line_count = vim.v.foldend - vim.v.foldstart + 1
  return line .. "    ⏫ " .. line_count .. " lines"
end

vim.opt.foldtext = 'v:lua.custom_fold_text()'
vim.opt.fillchars = { eob = "-", fold = " " }
vim.opt.viewoptions:remove("options")

vim.wo.foldmethod = "expr"
vim.wo.foldexpr = "nvim_treesitter#foldexpr()"
-- disable fold on startup
vim.wo.foldenable = false

vim.opt.list = true

-- vim.g.gitblame_enabled = 0
-- Available options: <author>, <committer>, <date>, <committer-date>, <summary>, <sha>
vim.g.gitblame_message_template = '<summary> • <author> • <date> • <sha>'

vim.cmd("colorscheme " .. "gruvbox-material")

return T
