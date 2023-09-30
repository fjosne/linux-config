return {
    {
        'steelsojka/pears.nvim',
        config = function ()
            require('pears').setup(
                function(conf)
                    conf.expand_on_enter(true)
                end
            )
        end
    },
    'tpope/vim-surround',
    {
        'terrortylor/nvim-comment',
        config = function ()
            require('nvim_comment').setup()
        end
    },
    {
        'ggandor/leap.nvim',
        dependencies = { 'tpope/vim-repeat' },
        config = function()
            require('leap').add_default_mappings()
        end,
    },
}
