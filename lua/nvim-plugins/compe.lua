require'compe'.setup {
  enabled = true;
  autocomplete = true;
  debug = false;
  min_length = 1;
  preselect = 'enable';
  throttle_time = 80;
  source_timeout = 200;
  incomplete_delay = 400;
  max_abbr_width = 100;
  max_kind_width = 100;
  max_menu_width = 100;
  documentation = true;

  source = {
    path = true;
    buffer = true;
    calc = true;
    nvim_lsp = true;
    nvim_lua = true;
    vsnip = true;
    ultisnips = true;
  };
}

local t = function(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local check_back_space = function()
    local col = vim.fn.col('.') - 1
    if col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
        return true
    else
        return false
    end
end

-- Use (s-)tab to:
--- move to prev/next item in completion menuone
--- jump to prev/next snippet's placeholder
_G.tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return t "<C-n>"
  elseif vim.fn.call("vsnip#available", {1}) == 1 then
    return t "<Plug>(vsnip-expand-or-jump)"
  elseif check_back_space() then
    return t "<Tab>"
  else
    return vim.fn['compe#complete']()
  end
end
_G.s_tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return t "<C-p>"
  elseif vim.fn.call("vsnip#jumpable", {-1}) == 1 then
    return t "<Plug>(vsnip-jump-prev)"
  else
    -- If <S-Tab> is not working in your terminal, change it to <C-h>
    return t "<S-Tab>"
  end
end

vim.api.nvim_set_keymap("i", "<Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})

vim.api.nvim_set_keymap("i", "<C-Space>", "compe#complete()", {expr = true, noremap=true, silent=true})
vim.api.nvim_set_keymap("i", ",", "compe#confirm(',')", {expr = true, noremap=true, silent=true})
vim.api.nvim_set_keymap("i", "/", "compe#confirm('/')", {expr = true, noremap=true, silent=true})
vim.api.nvim_set_keymap("i", "<C-e>", "compe#close('<C-e>')", {expr = true, noremap=true, silent=true})
vim.api.nvim_set_keymap("i", "<C-d>", "compe#scroll({ 'delta': +4 })", {expr = true, noremap=true, silent=true})
vim.api.nvim_set_keymap("i", "<C-u>", "compe#scroll({ 'delta': -4 })", {expr = true, noremap=true, silent=true})

-- vim.api.nvim_exec([[
-- inoremap <silent><expr> <C-Space> compe#complete()
-- inoremap <silent><expr> <CR>      compe#confirm('<CR>')
-- inoremap <silent><expr> <C-e>     compe#close('<C-e>')
-- inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': +4 })
-- inoremap <silent><expr> <C-u>     compe#scroll({ 'delta': -4 })
-- ]], false)

-- " Expand
-- vim.cmd("imap <expr> <C-l>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'")
-- vim.cmd("smap <expr> <C-l>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'")
-- " Expand or jump
-- vim.cmd("imap <expr> <C-j>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'")
-- vim.cmd("smap <expr> <C-j>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'")

-- " Jump forward or backward
-- vim.api.nvim_exec([[
-- imap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
-- smap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
-- imap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'
-- smap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'
-- ]], false)

-- " Select or cut text to use as $TM_SELECTED_TEXT in the next snippet.
-- " See https://github.com/hrsh7th/vim-vsnip/pull/50
-- nmap        s   <Plug>(vsnip-select-text)
-- xmap        s   <Plug>(vsnip-select-text)
-- nmap        S   <Plug>(vsnip-cut-text)
-- xmap        S   <Plug>(vsnip-cut-text)
