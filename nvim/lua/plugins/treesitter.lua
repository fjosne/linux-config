local function treesitter_config()
    require'nvim-treesitter.configs'.setup {
        ensure_installed = {
            "lua",
            "comment",
            "bash",
            "html",
            "java",
            "json",
            "typescript",
            "javascript",
            "regex",
            "vim",
        }, -- one of "all", "maintained" (parsers with maintainers), or a list of languages
        -- Install parsers synchronously (only applied to `ensure_installed`)
        sync_install = false,

        -- Automatically install missing parsers when entering buffer
        -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
        auto_install = false,

        modules = {},
        ignore_install = {},

        highlight = {
            enable = true,
            -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
            -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
            -- Using this option may slow down your editor, and you may see some duplicate highlights.
            -- Instead of true it can also be a list of languages
            additional_vim_regex_highlighting = false,
        },
        indent = {
            enable = true,            -- Enable language specific indentation
            disable = {"python", "typescript"}
        },
        incremental_selection = {
            enable = true,
            keymaps = {
                init_selection = "<CR>",
                node_incremental = "<CR>",
                scope_incremental = "<C-s>",
                node_decremental = "<BS>",
            },
        },
    }
end

return {
    'nvim-treesitter/nvim-treesitter',
    build = function()
        local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
        ts_update()
    end,
    config = treesitter_config
}
