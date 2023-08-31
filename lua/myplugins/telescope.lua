local actions = require('telescope.actions')
local lga_actions = require("telescope-live-grep-args.actions")
require('telescope').setup {
  defaults = {
    mappings = {
      i = {
        ["<C-a>"] = actions.send_to_qflist,
        ["<C-q>"] = actions.send_to_qflist,
        ["<A-v>"] = actions.select_vertical,
        ["<A-s>"] = actions.select_horizontal,
        ["<C-o>"] = actions.select_tab,
        ["<CR>"] = actions.select_default + actions.center
      },
      n = {
        ["<C-a>"] = actions.send_to_qflist + actions.open_qflist,
        ["<C-q>"] = actions.send_to_qflist,
        ["<A-v>"] = actions.select_vertical,
        ["<A-s>"] = actions.select_horizontal,
        ["<C-o>"] = actions.select_tab,
        ["<CR>"] = actions.select_default + actions.center
      },
    },
    sorting_strategy = "ascending",
    layout_strategy = "vertical",
    layout_config = {
      prompt_position = 'top',
      horizontal = {
        width = 0.975,
        height = 0.975,
      },
      vertical = {
        width = 0.975,
        height = 0.975,
      },
    },
  },
  pickers = {
    buffers = {
      theme = "ivy",
    },
    quickfix = {
      theme = "ivy",
    },
    quickfixhistory = {
      theme = "ivy",
    }
  },
}
