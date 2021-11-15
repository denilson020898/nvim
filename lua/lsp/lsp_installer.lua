local lsp_installer = require("nvim-lsp-installer")
local lsp_installer_servers = require("nvim-lsp-installer/servers")

local on_attach = require("lsp.global").on_attach
local capabilities = require("lsp.global").capabilities

-- local server_available, requested_server = lsp_installer_servers.get_server("rust_analyzer")
-- if server_available then
--     require("rust-tools").setup({
--         server = { cmd = requested_server._default_options.cmd },
--     })
-- end

lsp_installer.on_server_ready(function(server)
    local opts = {
        on_attach=on_attach,
        capabilities=capabilities,
    }

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

    -- if server.name == "rust_analyzer" then
    --     return
    -- end

    -- This setup() function is exactly the same as lspconfig's setup function (:help lspconfig-quickstart)
    server:setup(opts)
end)

