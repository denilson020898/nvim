vim.g.gitblame_enabled = 0

-- Available options: <author>, <committer>, <date>, <committer-date>, <summary>, <sha>
vim.g.gitblame_message_template = '<summary> • <author> • <date> • <sha>'

vim.neovide_confirm_quit=true
vim.neovide_remember_window_size=true
vim.neovide_profiler=false
vim.g.neovide_input_macos_alt_is_meta=true
vim.g.gui_font_default_size = 12
vim.g.gui_font_size = vim.g.gui_font_default_size
vim.g.gui_font_face = "Iosevka Nerd Font"

RefreshGuiFont = function()
  vim.opt.guifont = string.format("%s:h%s",vim.g.gui_font_face, vim.g.gui_font_size)
end

ResizeGuiFont = function(delta)
  vim.g.gui_font_size = vim.g.gui_font_size + delta
  RefreshGuiFont()
end

ResetGuiFont = function ()
  vim.g.gui_font_size = vim.g.gui_font_default_size
  RefreshGuiFont()
end

-- Call function on startup to set default value
ResetGuiFont()

-- Keymaps
-- <D--><D-=>
vim.keymap.set({'n', 'i'}, "<D-=>", function() ResizeGuiFont(1)  end, { noremap = true })
vim.keymap.set({'n', 'i'}, "<D-->", function() ResizeGuiFont(-1) end, { noremap = true })
vim.keymap.set({'n', 'i'}, "<D-BS>", function() ResetGuiFont() end, { noremap = true })
