local nvim_lsp = require('lspconfig')
local on_attach = require("lsp.global").on_attach
local capabilities = require("lsp.global").capabilities
nvim_lsp.flow.setup({
    on_attach=on_attach,
    capabilities=capabilities
})

