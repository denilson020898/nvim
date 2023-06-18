T = {}

require("catppuccin").setup {
    flavour = "mocha",
    -- color_overrides = {
    --     mocha = {
    --         base = "#000000",
    --     },
    -- },
    integrations = {
        nvimtree = true,
    },
    -- highlight_overrides = {
    --     mocha = function(mocha)
    --         return {
    --             NvimTreeNormal = { bg = mocha.none },
    --         }
    --     end,
    -- },
}

vim.g.gruvbox_baby_background_colora="dark"
vim.g.gruvbox_baby_telescope_theme = 1
vim.g.gruvbox_baby_transparent_mode = 1
vim.g.sonokai_style = "espresso"
-- vim.g.sonokai_style = "maia"
-- vim.g.sonokai_style = "shusia"


-- colorscheme catppuccin " catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
-- T.applied_theme = "zenburn"
-- T.applied_theme = "sonokai"
T.applied_theme = "gruvbox-baby"
-- T.applied_theme = "mellow"
-- T.applied_theme = "catppuccin-macchiato"
vim.cmd("colorscheme " .. T.applied_theme)

T.toggle_theme = function()
  if T.applied_theme == "catppuccin-mocha" then
    T.applied_theme = "gruvbox-baby"
  else
    T.applied_theme = "catppuccin-mocha"
  end
  vim.cmd("colorscheme " .. T.applied_theme)
end

-- require('colorbuddy').colorscheme('gruvbuddy')

return T
