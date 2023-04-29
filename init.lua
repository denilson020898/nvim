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
    vim.g.neovide_input_macos_alt_is_meta = true
    -- vim.opt.linespace = 0
    -- vim.g.neovide_scale_factor = 1.0
    -- vim.g.neovide_padding_top = 0
    -- vim.g.neovide_padding_bottom = 0
    -- vim.g.neovide_padding_right = 0
    -- vim.g.neovide_padding_left = 0
    -- vim.g.neovide_cursor_animation_length = 0.13
    -- vim.g.neovide_cursor_trail_size = 0.8
    vim.g.neovide_cursor_vfx_mode = "sonicboom"
    -- vim.g.neovide_cursor_vfx_mode = "ripple"
    -- vim.g.neovide_cursor_vfx_mode = "railgun"
    -- vim.g.neovide_cursor_vfx_particle_phase = 10.5
    -- vim.g.neovide_cursor_vfx_mode = "torpedo"
    --
    vim.g.neovide_scroll_animation_length = 0.25
    vim.g.neovide_underline_automatic_scaling = true
    -- vim.g.neovide_floating_blur_amount_x = 2.0
    -- vim.g.neovide_floating_blur_amount_y = 2.0

    -- Allow clipboard copy paste in neovim
    vim.g.neovide_input_use_logo = 1
    vim.api.nvim_set_keymap('', '<D-v>', '+p<CR>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('!', '<D-v>', '<C-R>+', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('t', '<D-v>', '<C-R>+', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('v', '<D-v>', '<C-R>+', { noremap = true, silent = true })

    vim.g.neovide_scale_factor = 1.0
    local change_scale_factor = function(delta)
      vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
    end
    vim.keymap.set("n", "<C-=>", function()
      change_scale_factor(1.25)
    end)
    vim.keymap.set("n", "<C-->", function()
      change_scale_factor(1 / 1.25)
    end)

    -- Helper function for transparency formatting
    local alpha = function()
      return string.format("%x", math.floor(255 * vim.g.neovide_transparency_point or 0.8))
    end
    -- Set transparency and background color (title bar color)
    vim.g.neovide_transparency = 0.0
    -- vim.g.neovide_transparency_point = 0.925
    vim.g.neovide_transparency_point = 1.0
    vim.g.neovide_background_color = "#0f1117" .. alpha()
    -- Add keybinds to change transparency
    local change_transparency = function(delta)
      vim.g.neovide_transparency_point = vim.g.neovide_transparency_point + delta
      vim.g.neovide_background_color = "#0f1117" .. alpha()
    end
    vim.keymap.set({ "n", "v", "o" }, "<D-]>", function()
      change_transparency(0.05)
    end)
    vim.keymap.set({ "n", "v", "o" }, "<D-[>", function()
      change_transparency(-0.05)
    end)

  end
end
