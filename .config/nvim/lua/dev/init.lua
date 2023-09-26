require('pears').setup(
    function(conf)
        conf.expand_on_enter(true)
    end
)

require("indent_blankline").setup {
    char = "",
    context_char = "│",
    show_current_context = true,
    show_current_context_start = true,
}

require('nvim_comment').setup()

require('dev.lsp')
