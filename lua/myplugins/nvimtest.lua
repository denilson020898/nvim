require('nvim-test').setup({
  termOpts = {
    direction = "horizontal", -- terminal's direction (horizontal|vertical|float)
    width = 96,             -- terminal's width (for vertical|float)
    height = 24,            -- terminal's height (for horizontal|float)
    go_back = false,        -- return focus to original window after executing
    stopinsert = false,     -- exit from insert mode
    keep_one = true,        -- only for term 'terminal', use only one buffer for testing
  },
})
require('nvim-test.runners.pytest'):setup {command='pytest --odoo-database=absale --odoo-log-level=error --odoo-config=/Users/son/d/odoo.conf -s -v'}


