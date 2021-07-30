local nvim_lsp = require('lspconfig')
local on_attach = require("lsp.global").on_attach
local capabilities = require("lsp.global").capabilities
-- nvim_lsp.pylsp.setup({
--     -- not ready yet in windows
--     -- cmd = {vim.fn.stdpath("data") .. "/lspinstall/python/node_modules/.bin/pyright-langserver", "--stdio"},
--     on_attach=on_attach,
--     capabilities=capabilities
-- })

-- nvim_lsp.pylsp.setup{
--     on_attach=on_attach,
--     capabilities=capabilities,
--     settings = {
--         pylsp = {
--             plugins = {
--                 pylint = {enabled = false, executable = "pylint"},
--                 pyflakes = {enabled = false},
--                 pycodestyle = {enabled = false},
--                 jedi_completion = {fuzzy = false},
--                 pyls_isort = {enabled = false},
--                 pylsp_mypy = {enabled = false}
--             }
--         }
--     },
--     flags = {
--         debounce_text_changes = 200,
--     }
-- }

nvim_lsp.pylsp.setup{
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
