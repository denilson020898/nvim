require('spectre').setup({
    is_insert_mode = true,
    mapping = {
        ['send_to_qf'] = {
            map = "<C-q>",
            cmd = "<cmd>lua require('spectre.actions').send_to_qf()<CR>",
            desc = "send all item to quickfix"
        },
    }
})
