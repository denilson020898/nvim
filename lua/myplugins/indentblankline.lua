vim.cmd [[highlight IndentBlanklineContextChar guifg=#FF0000 gui=nocombine]]
vim.cmd [[highlight WinSeparator guibg=None]]
vim.opt.list = true

require("indent_blankline").setup {
  space_char_blankline = " ",
  show_current_context = true,
}
