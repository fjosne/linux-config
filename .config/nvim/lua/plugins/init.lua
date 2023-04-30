return {
    {
        'ellisonleao/gruvbox.nvim',
        lazy = false, -- make sure we load this during startup if it is your main colorscheme
        priority = 1000, -- make sure to load this before all the other start plugins
        config = function()
            -- load the colorscheme here
            vim.cmd([[colorscheme gruvbox]])
        end,
    },
    'voldikss/vim-floaterm',
    {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
      dependencies = { 'nvim-lua/plenary.nvim' }
    },
    { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },

    {
        'lewis6991/gitsigns.nvim',
        dependencies = {
            'nvim-lua/plenary.nvim'
        }
    },
    'dinhhuy258/git.nvim',
    'numToStr/FTerm.nvim',
    'steelsojka/pears.nvim',
    'tpope/vim-surround',
    'terrortylor/nvim-comment'
}
