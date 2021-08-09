require('close_buffers').setup({
  filetype_ignore = {},  -- Filetype to ignore when running deletions
  preserve_window_layout = { 'this', 'nameless' },  -- Types of deletion that should preserve the window layout
  next_buffer_cmd = nil,  -- Custom function to retrieve the next buffer when preserving window layout
})
