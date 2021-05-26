-- local opts = {
--   log_level = 'info',
--   auto_session_enable_last_session = true,
--   auto_session_root_dir = vim.fn.stdpath('data').."/sessions/",
--   auto_session_enabled = true,
--   auto_save_enabled = nil,
--   auto_restore_enabled = nil,
--   auto_session_suppress_dirs = nil
-- }
-- require('auto-session').setup(opts)

require('session-lens').setup {
  shorten_path = false,
  -- theme_conf = { border = false },
  previewer = true
}
