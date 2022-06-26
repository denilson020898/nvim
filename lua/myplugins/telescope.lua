local actions = require('telescope.actions')
require('telescope').setup {
  defaults = {
    vimgrep_arguments = {
      'rg',
      -- '--color=never',
      -- '--no-heading',
      '--with-filename',
      '--line-number',
      '--column',
      '--smart-case'
    },
    mappings = {
      i = {
        -- ["<C-w>"] = actions.send_selected_to_qflist,
        ["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
        ["<A-v>"] = actions.select_vertical,
        ["<A-s>"] = actions.select_horizontal,
        ["<C-o>"] = actions.select_tab,
        ["<CR>"] = actions.select_default + actions.center
      },
      n = {
        -- ["<C-w>"] = actions.send_selected_to_qflist,
        ["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
        ["<A-v>"] = actions.select_vertical,
        ["<A-s>"] = actions.select_horizontal,
        ["<C-o>"] = actions.select_tab,
        ["<CR>"] = actions.select_default + actions.center
      },
    },
    prompt_prefix = "> ",
    selection_caret = "> ",
    entry_prefix = "  ",
    initial_mode = "insert",
    selection_strategy = "reset",
    sorting_strategy = "descending",
    -- layout_strategy = "vertical",
    layout_config = {
      horizontal = {
        -- mirror = false,
        width = 0.99,
        height = 0.99,
      },
      vertical = {
        -- mirror = false,
        width = 0.99,
        height = 0.99,
      },
    },
    file_sorter = require 'telescope.sorters'.get_fuzzy_file,
    file_ignore_patterns = {},
    generic_sorter = require 'telescope.sorters'.get_generic_fuzzy_sorter,
    path_display = { 'absolute' },
    winblend = 0,
    border = {},
    borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' },
    color_devicons = true,
    use_less = true,
    set_env = { ['COLORTERM'] = 'truecolor' }, -- default = nil,
    file_previewer = require 'telescope.previewers'.vim_buffer_cat.new,
    grep_previewer = require 'telescope.previewers'.vim_buffer_vimgrep.new,
    qflist_previewer = require 'telescope.previewers'.vim_buffer_qflist.new,

    -- Developer configurations: Not meant for general override
    buffer_previewer_maker = require 'telescope.previewers'.buffer_previewer_maker
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
      vim.fn.input "> Ext > ",
    },
  })
end

require('telescope').load_extension('dap')
require("telescope").load_extension("ui-select")
require("telescope").load_extension("live_grep_args")
require'telescope'.load_extension('zoxide')
require('telescope').load_extension('neoclip')

return M
