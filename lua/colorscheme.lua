-- vim.g.material_style = "darker"
-- vim.g.material_italic_comments = 1
-- vim.g.material_italic_keywords = 1
-- vim.g.material_italic_functions = 1
-- require('colorbuddy').colorscheme('material')
-- vim.api.nvim_set_keymap('n', '<C-m>', [[<Cmd>lua require('material.functions').toggle_style()<CR>]], { noremap = true, silent = true })

-- vim.o.background = "dark" -- or "light" for light mode
-- vim.cmd([[colorscheme gruvbox]])

-- vim.g.sonokai_style = 'default'
-- vim.cmd([[colorscheme sonokai]])

vim.g.gruvbox_flat_style = "dark"
vim.g.gruvbox_sidebars = { "qf", "vista_kind", "terminal", "packer" }
vim.g.gruvbox_italic_functions = true
vim.cmd[[colorscheme gruvbox-flat]]
