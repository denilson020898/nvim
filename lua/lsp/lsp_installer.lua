local lsp_installer = require("nvim-lsp-installer")

local on_attach = require("lsp.global").on_attach
local capabilities = require("lsp.global").capabilities

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

    -- This setup() function is exactly the same as lspconfig's setup function (:help lspconfig-quickstart)
    server:setup(opts)
    vim.cmd [[ do User LspAttachBuffers ]]
end)

