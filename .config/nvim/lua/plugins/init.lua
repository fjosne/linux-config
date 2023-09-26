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
    'terrortylor/nvim-comment',

    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        dependencies = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {                                      -- Optional
                'williamboman/mason.nvim',
                build = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},     -- Required
            {'hrsh7th/cmp-nvim-lsp'}, -- Required
            {'L3MON4D3/LuaSnip'},     -- Required
        }
    },
    { "lukas-reineke/indent-blankline.nvim" },
    {
        'ggandor/leap.nvim', dependencies = { 'tpope/vim-repeat' }, config = function()
            require('leap').add_default_mappings()
        end,
    },
}
