vim.g.NERDSpaceDelims = 1

vim.g.nvim_tree_ignore = { '.git', 'node_modules', '.cache' }
vim.g.nvim_tree_git_hl = 1
vim.g.nvim_tree_width = 69
vim.g.nvim_tree_width_allow_resize = 1

vim.g.symbols_outline = {
    highlight_hovered_item = true,
    show_guides = true,
    auto_preview = false, -- experimental
    position = 'right',
    keymaps = {
        close = "<Esc>",
        goto_location = "<Cr>",
        focus_location = "o",
        hover_symbol = "<C-space>",
        rename_symbol = "r",
        code_actions = "a",
    },
    lsp_blacklist = {},
}

vim.g.neovide_fullscreen = true
-- vim.g.neovide_transparency=1.0

vim.g.auto_session_pre_save_cmds = { "NvimTreeClose" }

