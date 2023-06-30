-- vim.cmd [[highlight IndentBlanklineContextChar guifg=#FF0000 gui=nocombine]]
-- vim.cmd [[highlight WinSeparator guibg=None]]
-- vim.cmd [[hi Search guibg=peru guifg=wheat]]
vim.opt.list = true
-- vim.opt.listchars:append "eol:↴"
-- vim.opt.listchars:append "eol:↵"
-- vim.opt.listchars:append "space:⋅"

require("indent_blankline").setup {
  space_char_blankline = " ",
  show_current_context = true,
  -- show_end_of_line = true,
}
