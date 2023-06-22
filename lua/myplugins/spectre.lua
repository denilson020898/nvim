local M = {}
-- require('spectre').setup({
--   color_devicons = true,
--   is_insert_mode = false,
--   live_update = true,
--   mapping = {
--     ['send_to_qf'] = {
--       map = "<leader>q",
--       cmd = "<cmd>lua require('spectre.actions').send_to_qf()<CR>",
--       desc = "send all item to quickfix"
--     },
--   },
-- })

require('spectre').setup({})

-- {
--   spectre_state = {
--     options = {
--       hidden = false,
--       ["ignore-case"] = true
--     },
--     query = {
--       is_file = "",
--       path = "",
--       replace_query = "",
--       search_quey = ""
--     }
--   }
-- }

M.spectre_state = require('spectre.actions').get_state()
M.is_file = M.spectre_state.query.is_file
M.path = M.spectre_state.query.path
M.replace_query = M.spectre_state.query.replace_query
M.search_quey = M.spectre_state.query.search_quey

M.search_resume = function()
  M.spectre_state = require('spectre.actions').get_state()
  M.is_file = M.spectre_state.query.is_file
  M.path = M.spectre_state.query.path
  M.replace_query = M.spectre_state.query.replace_query
  M.search_query = M.spectre_state.query.search_query
  require('spectre').open({
    search_text = M.search_query,
    replace_text = M.replace_query,
    path = M.path,
  })
end

return M
