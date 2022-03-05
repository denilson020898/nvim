require'nvim-treesitter.configs'.setup {
  autotag = {
    enable = true,
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
            ["<leader>m"] = "@parameter.inner",
          },
          swap_previous = {
            ["<leader>M"] = "@parameter.inner",
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
    -- lsp_interop = {
    --   enable = true,
    --   border = 'none',
    --   peek_definition_code = {
    --     ["<leader>of"] = "@function.outer",
    --     ["<leader>oF"] = "@class.outer",
    --   },
    -- },
}
}

require 'nvim-treesitter.install'.compilers = {  "gcc", "clang", "cl"  }

