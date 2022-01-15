require('spectre').setup({
    is_insert_mode = false,
    live_update = true,
    mapping = {
        ['send_to_qf'] = {
            map = "<leader>`",
            cmd = "<cmd>lua require('spectre.actions').send_to_qf()<CR>",
            desc = "send all item to quickfix"
        },
    }
})
