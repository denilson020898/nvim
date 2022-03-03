require("myplugins.telescope")
require('myplugins.autosession')
require('myplugins.sessionlense')
require("myplugins.colorizer")
require("myplugins.cmp")
require("myplugins.treesitter")
require("myplugins.autopairs")
require("myplugins.neogit")
require("myplugins.spectre")
require("myplugins.lualine")
require('myplugins.nvimtree')
require('myplugins.nvimbqf')
require('myplugins.lsprooter')
require('myplugins.closebuffers')
require('myplugins.bufferline')
require('myplugins.indentblankline')
require('myplugins.marks')
require('myplugins.nvimtest')

-- unix specific here
if vim.loop.os_uname().sysname ~= 'Windows_NT' then
    require('myplugins.trouble')
else -- does not work on windows
end

