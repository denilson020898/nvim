vim.g.material_style = "darker"
vim.g.material_italic_comments = 1
vim.g.material_italic_keywords = 1
vim.g.material_italic_functions = 1
require('colorbuddy').colorscheme('material')
vim.api.nvim_set_keymap('n', '<C-m>', [[<Cmd>lua require('material').toggle_style()<CR>]], { noremap = true, silent = true })
