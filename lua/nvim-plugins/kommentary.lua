require('kommentary.config').use_extended_mappings()

require('kommentary.config').configure_language("wast", {
    single_line_comment_string = ";;",
    multi_line_comment_strings = {"(;", ";)"},
})

require('kommentary.config').configure_language("default", {
    prefer_single_line_comments = true,
})
