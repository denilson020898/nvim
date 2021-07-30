local on_attach = require("lsp.global").on_attach
local capabilities = require("lsp.global").capabilities
require'lspconfig'.html.setup {
  capabilities = capabilities,
}
