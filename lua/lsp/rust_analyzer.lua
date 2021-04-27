local nvim_lsp = require('lspconfig')
local on_attach = require("lsp.global").on_attach

nvim_lsp.rust_analyzer.setup({ 
    cmd = { vim.fn.stdpath("data").."/lspinstall/rust/rust-analyzer" },
    on_attach=on_attach 
})

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
        virtual_text = true,
        signs = true,
        update_in_insert = true,
    }
)

vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(
    vim.lsp.handlers.signature_help, {
        border = "single"
    }
)

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
    vim.lsp.handlers.hover, {
        border = "single"
    }
)

vim.api.nvim_exec([[
autocmd CursorMoved,InsertLeave,BufEnter,BufWinEnter,TabEnter,BufWritePost * lua require'lsp_extensions'.inlay_hints{ prefix = '', highlight = "Comment", enabled = {"TypeHint", "ChainingHint", "ParameterHint"} }
autocmd CursorHold * lua vim.lsp.diagnostic.show_line_diagnostics()
]], false)
