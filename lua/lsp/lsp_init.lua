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


lspconfig.sqlls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

lspconfig.tsserver.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

lspconfig.wgsl_analyzer.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

lspconfig.jsonls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  root_dir = require 'lspconfig'.util.root_pattern(".zshrc"),
})

-- lspconfig.pylyzer.setup({
--   on_attach = on_attach,
--   capabilities = capabilities,
-- })


lspconfig.pyright.setup { on_attach = on_attach, settings = {
  pyright = { autoImportCompletion = true, },
  python = {
    analysis = {
      autoSearchPaths = true,
      diagnosticMode = 'openFilesOnly',
      useLibraryCodeForTypes = true,
      typeCheckingMode = 'off'
    }
  }
}
}


-- lspconfig.pylsp.setup({
--   on_attach = on_attach,
--   capabilities = capabilities,
-- })

-- lspconfig.pylsp.setup({
--   on_attach = on_attach,
--   capabilities = capabilities,
--   settings = {
--     pylsp = {
--       plugins = {
-- 				ruff = {
-- 					enabled = true,
-- 					extendSelect = { "I" },
-- 				},
--
--         -- pylint = { enabled = true, executable = "pylint" },
--         -- autopep8 = { enabled = true },
--         -- rope = { enabled = true },
--         -- pycodestyle = { enabled = true, ignore = {'W391', 'E501', 'E231'}, maxLineLength = 100 },
--         pycodestyle = { enabled = true, maxLineLength = 180 },
--         -- pylsp_mypy = { enabled = true },
--       }
--     }
--   },
--   -- flags = {
--   --   debounce_text_changes = 200,
--   -- }
-- })

-- lspconfig.ruff_lsp.setup {
--   on_attach = on_attach,
--   capabilities = capabilities,
--   init_options = {
--     settings = {
--       -- Any extra CLI arguments for `ruff` go here.
--       args = {},
--     }
--   }
-- }

-- Update this path
local extension_path = vim.env.HOME .. '/.vscode/extensions/vadimcn.vscode-lldb-1.9.0/'
local codelldb_path = extension_path .. 'adapter/codelldb'
local liblldb_path = extension_path .. 'lldb/lib/liblldb'
local this_os = vim.loop.os_uname().sysname;

-- The path in windows is different
if this_os:find "Windows" then
  codelldb_path = package_path .. "adapter\\codelldb.exe"
  liblldb_path = package_path .. "lldb\\bin\\liblldb.dll"
else
  -- The liblldb extension is .so for linux and .dylib for macOS
  liblldb_path = liblldb_path .. (this_os == "Linux" and ".so" or ".dylib")
end


local opts = {
  server = {
    on_attach = on_attach,
    capabilities = capabilities,
  },
  dap = {
    adapter = require('rust-tools.dap').get_codelldb_adapter(
      codelldb_path, liblldb_path)
  },
  tools = {
    executor = require("rust-tools.executors").termopen,
    hover_actions = {

      -- the border that is used for the hover window
      -- see vim.api.nvim_open_win()
      -- border = {
      --   { "╭", "FloatBorder" },
      --   { "─", "FloatBorder" },
      --   { "╮", "FloatBorder" },
      --   { "│", "FloatBorder" },
      --   { "╯", "FloatBorder" },
      --   { "─", "FloatBorder" },
      --   { "╰", "FloatBorder" },
      --   { "│", "FloatBorder" },
      -- },

      -- Maximal width of the hover window. Nil means no max.
      max_width = nil,

      -- Maximal height of the hover window. Nil means no max.
      max_height = nil,

      -- whether the hover action window gets automatically focused
      -- default: false
      auto_focus = true,
    },
  }

}
-- Normal setup
require('rust-tools').setup(opts)

-- lspconfig.rust_analyzer.setup({
--   on_attach = on_attach,
--   capabilities = capabilities,
--   root_dir = require 'lspconfig'.util.root_pattern(".zshrc"),
-- })
