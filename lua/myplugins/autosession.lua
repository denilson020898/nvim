local opts = {
  log_level = 'error',
  auto_session_enable_last_session = false,
  auto_session_root_dir = vim.fn.stdpath('data') .. "/sessions/",
  auto_session_enabled = true,
  auto_save_enabled = nil,
  auto_restore_enabled = nil,
  auto_session_suppress_dirs = nil,
  auto_session_use_git_branch = nil,
  -- the configs below are lua only
  bypass_session_save_file_types = nil,
  pre_save_cmds = {
    "tabdo NvimTreeClose",
    "tabdo cclose",
  },
  post_restore_cmds = {
    "silent! bd *NeogitStatus*",
    "silent! bd *spectre*",
    "resize 100"
  }
}

require('auto-session').setup(opts)

vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal"
