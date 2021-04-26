
local nvim_lsp = require('lspconfig')
local on_attach = require("lsp.global").on_attach
nvim_lsp.flow.setup({ on_attach=on_attach })

