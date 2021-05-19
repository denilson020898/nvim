local nvim_lsp = require('lspconfig')
local on_attach = require("lsp.global").on_attach
local capabilities = require("lsp.global").capabilities
nvim_lsp.pyright.setup({
    -- not ready yet in windows
    -- cmd = {vim.fn.stdpath("data") .. "/lspinstall/python/node_modules/.bin/pyright-langserver", "--stdio"},
    on_attach=on_attach,
    capabilities=capabilities
})
