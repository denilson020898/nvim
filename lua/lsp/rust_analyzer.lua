local nvim_lsp = require('lspconfig')
local on_attach = require("lsp.global").on_attach
local capabilities = require("lsp.global").capabilities
nvim_lsp.rust_analyzer.setup{
    on_attach=on_attach,
    capabilities=capabilities,
    settings = {
        pylsp = {
            plugins = {
                pylint = {enabled = true, executable = "pylint"},
                pyflakes = {enabled = true},
                pycodestyle = {enabled = false},
                jedi_completion = {fuzzy = true},
                pyls_isort = {enabled = true},
                pylsp_mypy = {enabled = true}
            }
        }
    },
    flags = {
        debounce_text_changes = 200,
    }
}
