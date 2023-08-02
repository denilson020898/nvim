T = {}

T.applied_theme = "gruvbox-material"
vim.cmd("colorscheme " .. T.applied_theme)
T.toggle_theme = function()
  if T.applied_theme == "catppuccin-mocha" then
    T.applied_theme = "gruvbox-baby"
  else
    T.applied_theme = "gruvbox-baby"
  end
  vim.cmd("colorscheme " .. T.applied_theme)
end
return T
