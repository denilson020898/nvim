local neogit = require("neogit")
local diffview = require("diffview")

neogit.setup {
  -- disable_signs = false,
  -- disable_context_highlighting = false,
  -- signs = {
  --   section = { ">", "v" },
  --   item = { ">", "v" },
  --   hunk = { "-", "|" },
  -- },
  integrations = {
    diffview = true
  },
}

-- diffview.setup {
--   view = {
--     ["<C-n>"] = function()
--       diffview.next_conflict()
--     end,
--   }
-- }
