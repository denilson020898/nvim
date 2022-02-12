T = {}

vim.g.sonokai_style = 'default'
vim.g.gruvbox_flat_style = "dark"
vim.g.gruvbox_sidebars = { "qf", "vista_kind", "terminal", "packer" }
vim.g.gruvbox_italic_functions = true

T.applied_theme = "gruvbox-flat"
-- T.applied_theme = "sonokai"
vim.cmd("colorscheme "..T.applied_theme)

T.toggle_theme = function()
    if T.applied_theme == "gruvbox-flat" then
        T.applied_theme = "sonokai"
    else
        T.applied_theme = "gruvbox-flat"
    end
    vim.cmd("colorscheme "..T.applied_theme)
end

-- require('colorbuddy').colorscheme('gruvbuddy')
-- vim.cmd("colorscheme jellybeans-nvim")

return T
