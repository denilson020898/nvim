local nvim_lsp = require('lspconfig')
local on_attach = require("lsp.global").on_attach
local capabilities = require("lsp.global").capabilities
nvim_lsp.tsserver.setup {
    -- cmd = {DATA_PATH .. "/lspinstall/typescript/node_modules/.bin/typescript-language-server", "--stdio"},
    filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
    on_attach = on_attach,
    capabilities=capabilities
    -- This makes sure tsserver is not used for formatting (I prefer prettier)
    -- on_attach = require'lsp'.common_on_attach,
    -- root_dir = require('lspconfig/util').root_pattern("package.json", "tsconfig.json", "jsconfig.json", ".git"),
    -- settings = {documentFormatting = false},
    -- handlers = {
    --     ["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
    --         virtual_text = O.tsserver.diagnostics.virtual_text,
    --         signs = O.tsserver.diagnostics.signs,
    --         underline = O.tsserver.diagnostics.underline,
    --         update_in_insert = true

    --     })
    -- }
}