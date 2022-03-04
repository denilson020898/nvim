require('nvim-autopairs').setup({
    disable_filetype = { "TelescopePrompt" , "vim" },
    enable_check_bracket_line = false,
    ignorjd_next_char = "[%w%.%@]", -- will ignore alphanumeric and `.` symbol
    fast_wrap = {
          map = '<C-e>',
          chars = { '{', '[', '(', '"', "'" },
          pattern = string.gsub([[ [%'%"%)%>%]%)%}%,] ]], '%s+', ''),
          offset = -1, -- Offset from pattern match
          end_key = '$',
          keys = 'qwertyuiopzxcvbnmasdfghjkl',
          check_comma = true,
          highlight = 'Search',
          highlight_grey='Comment'
        },
})

-- If you want insert `(` after select function or method item
local cmp_autopairs = require('nvim-autopairs.completion.cmp')
local cmp = require('cmp')
cmp.event:on( 'confirm_done', cmp_autopairs.on_confirm_done())
