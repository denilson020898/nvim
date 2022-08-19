local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup
local yank_group = augroup('HighlightYank', {})

autocmd('TextYankPost', {
  group = yank_group,
  pattern = "*",
  callback = function ()
    vim.highlight.on_yank({
      higroup = 'IncSearch',
      timeout = 350,
    })
  end,
})

vim.api.nvim_create_autocmd({"BufReadPost"},{ callback = require('persistent-breakpoints.api').load_breakpoints })
