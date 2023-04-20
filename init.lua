if vim.g.vscode then
  -- VSCode extension
  require("vscode_nvim")
else
  -- normal nvim
  require("plugins")
  require("global")
  require("keybindings")
  require("settings")
  require("colorscheme")
  require("variables")
  require("lsp")
  require("dbg")
  require("aucommands")
  require("masoninstaller")
  require("myplugins")
  if vim.g.neovide then
    -- Put anything you want to happen only in Neovide here
    -- vim.opt.linespace = 0
    -- vim.g.neovide_scale_factor = 1.0
    -- vim.g.neovide_padding_top = 0
    -- vim.g.neovide_padding_bottom = 0
    -- vim.g.neovide_padding_right = 0
    -- vim.g.neovide_padding_left = 0
    -- vim.g.neovide_cursor_animation_length = 0.13
    -- vim.g.neovide_cursor_trail_size = 0.8
    vim.g.neovide_cursor_vfx_mode = "railgun"
    --
    -- Allow clipboard copy paste in neovim
    vim.g.neovide_input_use_logo = 1
    vim.api.nvim_set_keymap('', '<D-v>', '+p<CR>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('!', '<D-v>', '<C-R>+', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('t', '<D-v>', '<C-R>+', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('v', '<D-v>', '<C-R>+', { noremap = true, silent = true })

    local map = vim.keymap.set
    local function neovideScale(amount)
      local temp = vim.g.neovide_scale_factor + amount
      if temp < 0.5 then
        return
      end
      vim.g.neovide_scale_factor = temp
    end
    map("n", "<C-=>", function()
      neovideScale(0.1)
    end)

    map("n", "<C-->", function()
      neovideScale(-0.1)
    end)


  end
end
