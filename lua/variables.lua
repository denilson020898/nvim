vim.g.NERDSpaceDelims = 1

vim.g.nvim_tree_git_hl = 1
vim.g.nvim_tree_width = 35
vim.g.nvim_tree_width_allow_resize = 1

-- vim.g.neovide_fullscreen = true
-- vim.g.neovide_transparency=1.0

vim.g.auto_session_post_restore_cmds = {
    "bd *spectre*",
    "resize 100"
}
vim.g.auto_session_pre_save_cmds = {
    "NvimTreeClose",
    "cclose",
    "AerialClose",
}

vim.g.gitblame_enabled = 0

-- Available options: <author>, <committer>, <date>, <committer-date>, <summary>, <sha>
vim.g.gitblame_message_template = '<summary> • <author> • <date> • <sha>'

