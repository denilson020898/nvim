T = {}
vim.g.gruvbox_baby_background_colora="dark"
-- vim.g.gruvbox_baby_use_original_palette=false
-- vim.g.gruvbox_baby_highlights = {Normal = {fg = "#123123", bg = "NONE", style="underline"}}
-- vim.g.gruvbox_baby_telescope_theme = 1
-- vim.g.gruvbox_baby_transparent_mode = 1

-- colorscheme catppuccin " catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
-- T.applied_theme = "gruvbox-baby"
-- T.applied_theme = "mellow"
T.applied_theme = "catppuccin-mocha"
vim.cmd("colorscheme " .. T.applied_theme)

-- T.toggle_theme = function()
--   if T.applied_theme == "gruvbox-baby" then
--     T.applied_theme = "jellybeans-nvim"
--   else
--     T.applied_theme = "gruvbox-baby"
--   end
--   vim.cmd("colorscheme " .. T.applied_theme)
-- end

-- require('colorbuddy').colorscheme('gruvbuddy')

return T
