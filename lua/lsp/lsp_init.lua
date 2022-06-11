require("nvim-lsp-installer").setup {}
local lspconfig = require("lspconfig")

local on_attach = require("lsp.global").on_attach
local capabilities = require("lsp.global").capabilities
local settings = {
  Lua = {
    diagnostics = {
      globals = { 'vim' }
    }
  }
}

lspconfig.sumneko_lua.setup { on_attach = on_attach, capabilities = capabilities, settings = settings }
-- lspconfig.tsserver.setup { opts }

-- Update this path
local extension_path = vim.env.HOME .. '/.vscode/extensions/vadimcn.vscode-lldb-1.7.0/'
local codelldb_path = extension_path .. 'adapter/codelldb'
local liblldb_path = extension_path .. 'lldb/lib/liblldb.so'


local opts = {
  on_attach = on_attach,
  capabilities = capabilities,
  dap = {
    adapter = require('rust-tools.dap').get_codelldb_adapter(
      codelldb_path, liblldb_path)
  }
}

-- Normal setup
require('rust-tools').setup(opts)
