require('kommentary.config').use_extended_mappings()

local languages = {"rust", "javascript", "lua", "python3"}

for i, lang in ipairs(languages) do
    require('kommentary.config').configure_language(lang, {
        prefer_single_line_comments = true,
    })
end

