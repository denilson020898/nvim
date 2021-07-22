require('bqf').setup({
    func_map = {
        stoggleup = '',
        stoggledown = '',
        stogglevm = '',
        stogglebuf = '',
        split = '1',
        vsplit = '2'
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

return T
