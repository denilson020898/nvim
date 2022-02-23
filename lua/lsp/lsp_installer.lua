local lsp_installer = require("nvim-lsp-installer")

local on_attach = require("lsp.global").on_attach
local capabilities = require("lsp.global").capabilities

-- Update this path
local extension_path = '/Users/son/.vscode/extensions/vadimcn.vscode-lldb-1.6.10'
local codelldb_path = extension_path .. 'adapter/codelldb'
local liblldb_path = extension_path .. 'lldb/lib/liblldb.so'

lsp_installer.on_server_ready(function(server)
    local opts = {
        on_attach=on_attach,
        capabilities=capabilities,
        dap = {
            adapter = require('rust-tools.dap').get_codelldb_adapter(
                codelldb_path, liblldb_path)
        }
    }

    if server.name == "rust_analyzer" then
        -- Initialize the LSP via rust-tools instead
        require("rust-tools").setup {
            -- The "server" property provided in rust-tools setup function are the
            -- settings rust-tools will provide to lspconfig during init.            -- 
            -- We merge the necessary settings from nvim-lsp-installer (server:get_default_options())
            -- with the user's own settings (opts).
            server = vim.tbl_deep_extend("force", server:get_default_options(), opts),
        }
        server:attach_buffers()
        -- Only if standalone support is needed
        require("rust-tools").start_standalone_if_required()
    else
        -- (optional) Customize the options passed to the server
        -- if server.name == "tsserver" then
        --     opts.root_dir = function() ... end
        -- end
        if server.name == "jsonls" then
            opts.commands = {
                Format = {
                    function()
                        vim.lsp.buf.range_formatting({},{0,0},{vim.fn.line("$"),0})
                    end
                }
            }
        end

        if server.name == "pylsp" then
            opts.settings = {
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
            }
            opts.flags = {
                debounce_text_changes = 200,
            }
        end
        server:setup(opts)
    end
end)
