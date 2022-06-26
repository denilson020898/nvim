T = {}

vim.g.sonokai_style = 'default'

vim.g.gruvbox_flat_style = "hard"
-- vim.g.gruvbox_sidebars = { "qf", "vista_kind", "terminal", "packer" }
-- vim.g.gruvbox_italic_functions = true
vim.g.gruvbox_dark_sidebar = true
vim.g.gruvbox_dark_float = true
vim.g.gruvbox_transparent = true


T.applied_theme = "gruvbox-flat"
-- T.applied_theme = "sonokai"
-- T.applied_theme = "jellybeans-nvim"
vim.cmd("colorscheme " .. T.applied_theme)

T.toggle_theme = function()
  if T.applied_theme == "gruvbox-flat" then
    T.applied_theme = "jellybeans-nvim"
  else
    T.applied_theme = "gruvbox-flat"
  end
  vim.cmd("colorscheme " .. T.applied_theme)
end

-- require('colorbuddy').colorscheme('gruvbuddy')
-- vim.cmd("colorscheme jellybeans-nvim")
-- require("zenburn").setup()

return T
