return {
    {'nvim-telescope/telescope.nvim',
        config = function ()
            local builtin = require('telescope.builtin')
            vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
            vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
            vim.keymap.set('n', '<leader>rg', function()
                builtin.grep_string({ search = vim.fn.input('grep > ') })
            end)
        end
    },
    'nvim-telescope/telescope-file-browser.nvim',

}
