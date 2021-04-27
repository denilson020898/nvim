local nvim_lsp = require('lspconfig')
local on_attach = require("lsp.global").on_attach
nvim_lsp.pyright.setup({
    cmd = {vim.fn.stdpath("data") .. "/lspinstall/python/node_modules/.bin/pyright-langserver", "--stdio"},
    on_attach=on_attach
})
