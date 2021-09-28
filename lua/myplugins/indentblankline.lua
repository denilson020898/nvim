vim.g.indent_blankline_enabled = false

vim.opt.termguicolors = true
vim.cmd [[highlight IndentBlanklineContextChar guifg=#990000 gui=nocombine]]

vim.opt.list = true
vim.opt.listchars = {
    -- space = "⋅",
    eol = "↴",
}

require("indent_blankline").setup {
    space_char_blankline = " ",
    show_current_context = true,
}

