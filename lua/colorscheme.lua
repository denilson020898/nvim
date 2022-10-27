T = {}

vim.g.sonokai_style = 'default'

vim.g.gruvbox_flat_style = "hard"
vim.g.gruvbox_dark_sidebar = true
vim.g.gruvbox_dark_float = true
T.applied_theme = "gruvbox-flat"
vim.cmd("colorscheme " .. T.applied_theme)

T.toggle_theme = function()
  if T.applied_theme == "gruvbox-flat" then
    T.applied_theme = "jellybeans-nvim"
  else
    T.applied_theme = "gruvbox-flat"
  end
  vim.cmd("colorscheme " .. T.applied_theme)
end

return T
