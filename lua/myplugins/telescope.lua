local actions = require('telescope.actions')
local lga_actions = require("telescope-live-grep-args.actions")
require('telescope').setup {
  defaults = {
    mappings = {
      i = {
        -- ["<C-w>"] = actions.send_selected_to_qflist,
        -- ["<C-a>"] = actions.send_to_qflist + actions.open_qflist,
        ["<C-a>"] = actions.send_to_qflist,
        ["<C-q>"] = actions.send_to_qflist,
        ["<A-v>"] = actions.select_vertical,
        ["<A-s>"] = actions.select_horizontal,
        ["<C-o>"] = actions.select_tab,
        ["<CR>"] = actions.select_default + actions.center
      },
      n = {
        -- ["<C-w>"] = actions.send_selected_to_qflist,
        ["<C-a>"] = actions.send_to_qflist + actions.open_qflist,
        ["<C-q>"] = actions.send_to_qflist,
        ["<A-v>"] = actions.select_vertical,
        ["<A-s>"] = actions.select_horizontal,
        ["<C-o>"] = actions.select_tab,
        ["<CR>"] = actions.select_default + actions.center
      },
    },
    sorting_strategy = "ascending",
    layout_strategy = "horizontal",
    layout_config = {
      -- mirror=true,
      prompt_position = 'top',
      -- horizontal = {
      --   width = 0.99,
      --   height = 0.99,
      -- },
      -- vertical = {
      --   width = 0.99,
      --   height = 0.99,
      -- },
    },
    file_ignore_patterns = {
      "**/*.po",
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
  extensions = {
    ["ui-select"] = {
      require("telescope.themes").get_cursor {},
    },
    live_grep_args = {
      mappings = { -- extend mappings
        i = {
          ["<C-k>"] = lga_actions.quote_prompt(),
          ["<C-l>"] = lga_actions.quote_prompt({ postfix = " --iglob " }),
          ["<C-j>"] = lga_actions.quote_prompt({ postfix = " -t py xml" }),
          ["<C-x>"] = lga_actions.quote_prompt({ postfix = " -t xml" }),
          ["<C-i>"] = lga_actions.quote_prompt({ postfix = " -t py" }),
        },
      },
    },
  }
}

local M = {}
local config_path = vim.fn.stdpath("config")

M.search_dotfiles = function()
  require("telescope.builtin").find_files({
    prompt_title = "< VimRC >",
    cwd = config_path
  })
end

M.search_with_extension = function()
  require("telescope.builtin").live_grep({
    find_command = {
      "rg",
      "--files",
      "--type",
      vim.fn.input "File Extensions = ",
    },
  })
end

require('telescope').load_extension('dap')
-- require("telescope").load_extension("ui-select")
-- require("telescope").load_extension("live_grep_args")
-- require("telescope").load_extension("file_browser")
-- require("telescope").load_extension("dir")
-- require('telescope').load_extension('media_files')

return M
