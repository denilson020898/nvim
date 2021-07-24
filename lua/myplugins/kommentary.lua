require('kommentary.config').use_extended_mappings()

require('kommentary.config').configure_language("wast", {
    single_line_comment_string = ";;",
    multi_line_comment_strings = {"(;", ";)"},
})

local languages = {"rust", "javascript", "lua", "python3", "html", "wast"}

for i, lang in ipairs(languages) do
    require('kommentary.config').configure_language(lang, {
        prefer_single_line_comments = true,
    })
end

