T = {}
vim.g.gruvbox_baby_background_colora="dark"
vim.g.gruvbox_baby_use_original_palette=false

T.applied_theme = "gruvbox-baby"
vim.cmd("colorscheme " .. T.applied_theme)

-- T.toggle_theme = function()
--   if T.applied_theme == "gruvbox-baby" then
--     T.applied_theme = "jellybeans-nvim"
--   else
--     T.applied_theme = "gruvbox-baby"
--   end
--   vim.cmd("colorscheme " .. T.applied_theme)
-- end

return T
