local on_attach = require("lsp.global").on_attach
local capabilities = require("lsp.global").capabilities
require'lspconfig'.jsonls.setup {
    on_attach=on_attach,
    capabilities=capabilities,
    commands = {
      Format = {
        function()
          vim.lsp.buf.range_formatting({},{0,0},{vim.fn.line("$"),0})
        end
      }
    }
}
