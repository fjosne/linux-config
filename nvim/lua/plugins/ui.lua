local function set_theme()
    vim.cmd([[colo gruvbox]])
end

local function themes()
    return {
        {
            'Mofiqul/dracula.nvim',
            config = set_theme
        },
        {
            'ellisonleao/gruvbox.nvim',
            config = set_theme
        },
    }
end

return {
    themes(),
    {
        'lewis6991/gitsigns.nvim',
        dependencies = {
            'nvim-lua/plenary.nvim'
        },
        config = function ()
            require('gitsigns').setup({
                current_line_blame = true,
                current_line_blame_opts = {
                    virt_text_pos = 'eol',
                    delay = 0
                },
            })
        end
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        config = function ()
            require("indent_blankline").setup {
                char = "",
                context_char = "│",
                show_current_context = true,
                show_current_context_start = true,
            }
        end
    },
    {
        'glepnir/dashboard-nvim',
        event = 'VimEnter',
        config = function()
            require('dashboard').setup {
                -- config
            }
        end,
        dependencies = { {'nvim-tree/nvim-web-devicons'}}
    }
}
