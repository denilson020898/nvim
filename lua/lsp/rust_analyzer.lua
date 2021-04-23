local nvim_lsp = require('lspconfig')
local on_attach = require("lsp.global").on_attach
nvim_lsp.rust_analyzer.setup({ on_attach=on_attach })
