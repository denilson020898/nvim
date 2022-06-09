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

vim.g.memento_history = 20
vim.g.memento_shorten_path = false
vim.g.memento_window_width = 150
vim.g.memento_window_height = 40
