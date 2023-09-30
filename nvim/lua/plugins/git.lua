return {
    'voldikss/vim-floaterm',
    {
        'numToStr/FTerm.nvim',
        config = function ()
            local lazygit = require'FTerm':new({
                cmd = 'lazygit',
                dimensions  = {
                    height = 0.9,
                    width = 0.9,
                },
            })
            vim.keymap.set('n', '<leader>gg', function() lazygit:toggle() end)
        end
    },
    {
        'dinhhuy258/git.nvim',
        config = function ()
            -- Git blame 
            require('git').setup({
                keymaps = {
                    -- Open blame window
                    blame = "<Leader>gb",
                    -- Close blame window
                    quit_blame = "<Leader>gb",
                }
            })

        end
    },
}
