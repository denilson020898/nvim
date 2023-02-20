-- require("nvim-lsp-installer").setup({})
local lspconfig = require("lspconfig")

local on_attach = require("lsp.global").on_attach
local capabilities = require("lsp.global").capabilities

local lsp_flags = {
  -- This is the default in Nvim 0.7+
  debounce_text_changes = 150,
}

lspconfig.lua_ls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' }
      }
    }
  }
})

lspconfig.cssls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

lspconfig.dockerls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

lspconfig.yamlls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

lspconfig.tsserver.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

lspconfig.lemminx.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

lspconfig.html.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

-- lspconfig.sqls.setup({
--   on_attach = on_attach,
--   capabilities = capabilities,
-- })

lspconfig.sqlls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

lspconfig.tsserver.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

lspconfig.jsonls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  root_dir = require'lspconfig'.util.root_pattern(".zshrc"),
})

-- lspconfig.pyright.setup({
--   on_attach = on_attach,
--   capabilities = capabilities,
-- })

lspconfig.pylsp.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    pylsp = {
      plugins = {
        -- pylint = { enabled = true, executable = "pylint" },
        autopep8 = { enabled = true },
        rope = { enabled = true },
        pycodestyle = { enabled = true, ignore = {'W391'}, maxLineLength = 100 },
        -- pylsp_mypy = { enabled = true },
      }
    }
  },
  flags = {
    debounce_text_changes = 200,
  }
})


-- Update this path
local extension_path = vim.env.HOME .. '/.vscode/extensions/vadimcn.vscode-lldb-1.7.0/'
local codelldb_path = extension_path .. 'adapter/codelldb'
local liblldb_path = extension_path .. 'lldb/lib/liblldb.so'
local opts = {
  server = {
    on_attach = on_attach,
    capabilities = capabilities,
  },
  dap = {
    adapter = require('rust-tools.dap').get_codelldb_adapter(
      codelldb_path, liblldb_path)
  }
}
-- Normal setup
require('rust-tools').setup(opts)
