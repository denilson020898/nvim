require("nvim-gps").setup({
  icons = {
    ["class-name"] = ' ', -- Classes and class-like objects
    ["function-name"] = ' ', -- Functions
    ["method-name"] = ' ' -- Methods (functions inside class-like objects)
  },
  languages = { -- You can disable any language individually here
    ["c"] = true,
    ["cpp"] = true,
    ["go"] = true,
    ["java"] = true,
    ["javascript"] = true,
    ["lua"] = true,
    ["python"] = true,
    ["rust"] = true,
  },
  separator = ' > ',
})

local function getfoldmethod()
  return vim.wo.foldmethod
end

local gps = require("nvim-gps")
require('lualine').setup {
  sections = {
    lualine_c = {
      { gps.get_location, condition = gps.is_available },
    },
    lualine_a = { 'mode', getfoldmethod },
    -- lualine_x = {'encoding', 'fileformat', 'filetype', getfoldmethod},
  },
  options = {
      theme = 'gruvbox-baby'
  },
}
