require('bqf').setup({
    func_map = {
        split = '<A-s>',
        vsplit = '<A-v>',
    }
})

T = {}

T.is_qf_opened = false

T.toggle_quickfix = function() 
    if T.is_qf_opened == false then
        T.is_qf_opened = true
        vim.cmd("copen")
    else
        T.is_qf_opened = false
        vim.cmd("cclose")
    end
end

T.print_bqf_config = function()
    vim.cmd("lua print(vim.inspect(require('bqf.config')))")
end

return T

