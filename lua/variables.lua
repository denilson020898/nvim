vim.g.auto_session_post_restore_cmds = {
  "silent! bd *NeogitStatus*",
  "silent! bd *spectre*",
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

-- vim.opt.guifont = { "VictorMono Nerd Font", ":h11" }
-- vim.g.neovide_fullscreen=true
-- vim.g.neovide_transparency=0.8
-- " g:neovide_transparency should be 0 if you want to unify transparency of content and title bar.
-- let g:neovide_transparency=0.0
-- let g:transparency = 0.8
-- let g:neovide_background_color = '#0f1117'.printf('%x', float2nr(255 * g:transparency))
vim.neovide_confirm_quit=true
-- let g:neovide_confirm_quit=0
vim.neovide_remember_window_size=true
vim.neovide_profiler=false
-- let g:neovide_input_use_logo=v:false  " v:true on macOS
-- let g:neovide_input_macos_alt_is_meta=v:false
-- let g:neovide_cursor_animation_length=0.13
-- let g:neovide_cursor_antialiasing=v:true
-- let g:neovide_cursor_vfx_mode = ""
-- let g:neovide_cursor_vfx_mode = "railgun"
-- let g:neovide_cursor_vfx_mode = "torpedo"
-- vim.neovide_cursor_vfx_mode="torpedo"
-- let g:neovide_cursor_vfx_mode = "pixiedust"
-- let g:neovide_cursor_vfx_mode = "sonicboom"
-- let g:neovide_cursor_vfx_mode = "ripple"
-- let g:neovide_cursor_vfx_mode = "wireframe"
-- let g:neovide_cursor_vfx_opacity=200.0
-- let g:neovide_cursor_vfx_particle_lifetime=1.2
-- let g:neovide_cursor_vfx_particle_density=7.0
-- let g:neovide_cursor_vfx_particle_speed=10.0
-- let g:neovide_cursor_vfx_particle_phase=1.5
-- let g:neovide_cursor_vfx_particle_curl=1.0
-- let g:neovide_input_macos_alt_is_meta=v:false
vim.g.neovide_input_macos_alt_is_meta=true

vim.g.gui_font_default_size = 12
vim.g.gui_font_size = vim.g.gui_font_default_size
-- vim.g.gui_font_face = "Hack Nerd Font"
vim.g.gui_font_face = "Iosevka Nerd Font"
-- vim.g.gui_font_face = "FiraCode Nerd Font"

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
