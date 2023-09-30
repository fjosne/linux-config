return {
    {'nvim-telescope/telescope.nvim',
        config = function ()
            local builtin = require('telescope.builtin')
            vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
            vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
            vim.keymap.set('n', '<leader>rg', builtin.live_grep, {})
            vim.keymap.set('n', '#', builtin.grep_string, {})
        end
    },
    {
        'nvim-telescope/telescope-file-browser.nvim',
        config = function ()
            local telescope = require('telescope')
            telescope.setup {
                hijack_netrw = true,
            }
            telescope.load_extension "file_browser"

            vim.api.nvim_set_keymap(
                "n",
                "<space>fb",
                ":Telescope file_browser<CR>",
                { noremap = true }
            )
        end
    },

}
