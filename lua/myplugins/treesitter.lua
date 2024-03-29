vim.filetype.add({ extension = { wgsl = "wgsl" } })

require 'nvim-treesitter.configs'.setup {
  ensure_installed = { 'wgsl' },
  context_commentstring = {
    enable = true,
  },
  highlight = {
    enable = true
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },
  autotag = {
    enable = true,
    enable_rename = true,
    enable_close = true,
    enable_close_on_slash = true,
    -- filetypes = { "html" , "xml" },
  },
  textsubjects = {
    enable = true,
    prev_selection = '\'', -- (Optional) keymap to select the previous selection
    keymaps = {
      [';'] = 'textsubjects-smart',
      ['a;'] = 'textsubjects-container-outer',
      ['i;'] = 'textsubjects-container-inner',
    },
  },
  textobjects = {
    select = {
      enable = true,

      -- Automatically jump forward to textobj, similar to targets.vim
      lookahead = true,

      keymaps = {
        -- You can use the capture groups defined in textobjects.scm
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ac"] = "@class.outer",
        ["ic"] = "@class.inner",
        ["ib"] = "@block.inner",
        ["ab"] = "@block.outer",
        ["ia"] = "@call.inner",
        ["aa"] = "@call.outer",
        -- @class.inner",
        -- @class.outer",
        ["ak"] = "@comment.outer",
        ["ii"] = "@conditional.inner",
        ["ai"] = "@conditional.outer",
        -- ["ir"] = "@frame.inner",
        -- ["ar"] = "@frame.outer",
        -- @function.inner
        -- @function.outer
        ["il"] = "@loop.inner",
        ["al"] = "@loop.outer",
        ["im"] = "@parameter.inner",
        ["am"] = "@parameter.outer",
        -- ["ae"] = "@scopename.inner",
        -- ["ae"] = "@statement.outer"
      },
    },
    swap = {
      enable = true,
      swap_next = {
        ["<space>m"] = "@parameter.inner",
      },
      swap_previous = {
        ["<space>M"] = "@parameter.inner",
      },
    },
    move = {
      enable = true,
      set_jumps = true, -- whether to set jumps in the jumplist
      goto_next_start = {
        ["]m"] = "@function.outer",
        ["]]"] = "@class.outer",
      },
      goto_next_end = {
        ["]M"] = "@function.outer",
        ["]["] = "@class.outer",
      },
      goto_previous_start = {
        ["[m"] = "@function.outer",
        ["[["] = "@class.outer",
      },
      goto_previous_end = {
        ["[M"] = "@function.outer",
        ["[]"] = "@class.outer",
      },
    },
  }
}

require 'nvim-treesitter.install'.compilers = { "gcc", "clang", "cl" }


require 'treesitter-context'.setup {
  enable = true,            -- Enable this plugin (Can be enabled/disabled later via commands)
  max_lines = 0,            -- How many lines the window should span. Values <= 0 mean no limit.
  min_window_height = 0,    -- Minimum editor window height to enable context. Values <= 0 mean no limit.
  line_numbers = true,
  multiline_threshold = 20, -- Maximum number of lines to collapse for a single context line
  trim_scope = 'outer',     -- Which context lines to discard if `max_lines` is exceeded. Choices: 'inner', 'outer'
  mode = 'cursor',          -- Line used to calculate context. Choices: 'cursor', 'topline'
  -- Separator between context and content. Should be a single character string, like '-'.
  -- When separator is set, the context will only show up when there are at least 2 lines above cursorline.
  separator = nil,
  zindex = 20, -- The Z-index of the context window
}

require('Comment').setup {
  pre_hook = require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook(),
}
