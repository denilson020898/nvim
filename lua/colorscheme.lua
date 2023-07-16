T = {}

-- require("catppuccin").setup {
--     flavour = "mocha",
--     -- color_overrides = {
--     --     mocha = {
--     --         base = "#000000",
--     --     },
--     -- },
--     integrations = {
--         nvimtree = true,
--     },
--     -- highlight_overrides = {
--     --     mocha = function(mocha)
--     --         return {
--     --             NvimTreeNormal = { bg = mocha.none },
--     --         }
--     --     end,
--     -- },
-- }
-- require('github-theme').setup({ })
-- vim.cmd('colorscheme github_dark_high_contrast')

-- vim.g.gruvbox_baby_background_color="dark"
-- vim.g.gruvbox_baby_highlights = {Normal = {fg = "#123123", bg = "NONE", style="underline"}}
-- vim.g.gruvbox_baby_telescope_theme = 1
-- vim.g.gruvbox_baby_transparent_mode = 1

-- vim.g.sonokai_style = "espresso"
-- vim.g.sonokai_style = "maia"
-- vim.g.sonokai_style = "shusia"
--
-- :help gruvbox-material.txt
-- " Set contrast.
-- " This configuration option should be placed before `colorscheme gruvbox-material`.
-- " Available values: 'hard', 'medium'(default), 'soft'
-- let g:gruvbox_material_background = 'soft'
--
-- vim.g.gruvbox_material_background = 'hard'
-- vim.g.gruvbox_material_foreground = "material"
-- vim.g.gruvbox_material_better_performance = 1
-- vim.g.gruvbox_material_enable_bold = 1
-- vim.g.gruvbox_material_transparent_background = 2
-- vim.g.gruvbox_material_dim_inactive_windows  = 0

-- colorscheme catppuccin " catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
-- T.applied_theme = "zenburn"
-- T.applied_theme = "sonokai"
-- T.applied_theme = "gruvbox-baby"
T.applied_theme = "gruvbox-material"
-- T.applied_theme = "mellow"
-- T.applied_theme = "catppuccin"
-- T.applied_theme = "zenbones"
vim.cmd("colorscheme " .. T.applied_theme)

T.toggle_theme = function()
  if T.applied_theme == "catppuccin-mocha" then
    T.applied_theme = "gruvbox-baby"
  else
    T.applied_theme = "gruvbox-baby"
    -- T.applied_theme = "catppuccin-mocha"
  end
  vim.cmd("colorscheme " .. T.applied_theme)
end

-- require('colorbuddy').colorscheme('gruvbuddy')

return T
