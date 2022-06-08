local O = {}


-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
O.on_attach = function(client, bufnr)
    -- Enable completion triggered by <c-x><c-o>
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    local opts = { noremap = true, silent = true }
    vim.keymap.set('n', '-e', vim.diagnostic.open_float, opts)
    vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
    vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
    vim.keymap.set('n', '-q', vim.diagnostic.setloclist, opts)

    -- Mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local bufopts = { noremap = true, silent = true, buffer = bufnr }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
    vim.keymap.set('n', '-wa', vim.lsp.buf.add_workspace_folder, bufopts)
    vim.keymap.set('n', '-wr', vim.lsp.buf.remove_workspace_folder, bufopts)
    vim.keymap.set('n', '-wl', function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, bufopts)
    vim.keymap.set('n', '-D', vim.lsp.buf.type_definition, bufopts)
    vim.keymap.set('n', '-rn', vim.lsp.buf.rename, bufopts)
    vim.keymap.set('n', '-ca', vim.lsp.buf.code_action, bufopts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
    vim.keymap.set('n', '-f', vim.lsp.buf.formatting, bufopts)
    vim.keymap.set('n', '-.', vim.lsp.buf.code_action, bufopts)
end

-- O.on_attach = function(client, bufnr)
--     local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
--     local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
--
--     require "lsp_signature".on_attach()
--     require("aerial").on_attach(client, bufnr)
--
--     buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')
--
--     -- Mappings.
--     local opts = { noremap=true }
--     buf_set_keymap('n', 'gc', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
--     buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
--     buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
--     buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
--     buf_set_keymap('n', '-k', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
--     buf_set_keymap('n', '-wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
--     buf_set_keymap('n', '-wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
--     buf_set_keymap('n', '-wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
--     buf_set_keymap('n', '-d', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
--     buf_set_keymap('n', '-r', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
--     buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
--     buf_set_keymap('n', '-y', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
--     buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
--     buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
--     buf_set_keymap('n', '-L', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
--
--     buf_set_keymap('n', '-.', ':lua vim.lsp.buf.code_action()<CR>', opts)
--
--     -- Set some keybinds conditional on server capabilities
--     if client.resolved_capabilities.document_formatting then
--         buf_set_keymap("n", "-0", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
--     end
--     if client.resolved_capabilities.document_range_formatting then
--         buf_set_keymap("v", "-0", "<cmd>lua vim.lsp.buf.range_formatting()<CR>", opts)
--     end
--
--     local filetype = vim.api.nvim_buf_get_option(0, 'filetype')
--
--     -- Set autocommands conditional on server_capabilities
--     if client.resolved_capabilities.document_highlight then
--         vim.api.nvim_exec([[
--         hi LspReferenceRead cterm=bold ctermbg=red guibg=#464646
--         hi LspReferenceText cterm=bold ctermbg=red guibg=#464646
--         hi LspReferenceWrite cterm=bold ctermbg=red guibg=#464646
--
--         augroup lsp_document_highlight
--         autocmd! * <buffer>
--         autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
--         autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
--         augroup END
--         ]], false)
--     end
-- end


local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.resolveSupport = {
    properties = {
        'documentation',
        'detail',
        'additionalTextEdits',
    }
}
O.capabilities = capabilities

return O
