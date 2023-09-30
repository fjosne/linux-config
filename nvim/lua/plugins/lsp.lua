local function lsp_config()
    local telescope = require('telescope.builtin')
    local open_at_cursor = require('telescope.themes').get_cursor()

    local lsp = require('lsp-zero').preset({})
    lsp.ensure_installed({ 'lua_ls', 'tsserver', 'eslint' })

    local cmp = require('cmp')
    local cmp_select = { behavior = cmp.SelectBehavior.Select }
    local cmp_mappings = lsp.defaults.cmp_mappings({
        ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
        ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
        ['<Tab>'] = cmp.mapping.confirm({ select = true }),
        ['<C-Space>'] = cmp.mapping.complete(),
    })

    lsp.setup_nvim_cmp({
        mapping = cmp_mappings
    })

    lsp.set_sign_icons({
        error = '',
        warn = '',
        hint = '',
        info = ''
    })

    lsp.on_attach(function (client, bufnr)
        local opts = { buffer = bufnr, remap = false }
        vim.keymap.set('n', 'gd', function() telescope.lsp_definitions(open_at_cursor) end, opts)
        vim.keymap.set('n', 'gt', function() telescope.lsp_type_definitions(open_at_cursor) end, opts)
        vim.keymap.set('n', 'K', function() vim.lsp.buf.hover() end, opts)
        vim.keymap.set('n', '<leader>vws', function() telescope.lsp_dynamic_workspace_symbols(open_at_cursor) end, opts)
        vim.keymap.set('n', '<leader>vs', function() telescope.lsp_document_symbols() end, opts)
        vim.keymap.set('n', '<leader>vd', function() telescope.diagnostics(open_at_cursor) end, opts)
        vim.keymap.set('n', 'd[', function() vim.diagnostic.goto_prev() end, opts)
        vim.keymap.set('n', 'd]', function() vim.diagnostic.goto_next() end, opts)
        vim.keymap.set('n', '<leader>ca', function() vim.lsp.buf.code_action() end, opts)
        vim.keymap.set('n', '<leader>vr', function() telescope.lsp_references(open_at_cursor) end, opts)
        vim.keymap.set('n', '<leader>rn', function() vim.lsp.buf.rename() end, opts)
        vim.keymap.set('n', 'H', function() vim.lsp.buf.signature_help() end, opts)
    end)

    require('lspconfig').lua_ls.setup {
        settings = {
            Lua = {
                diagnostics = {
                    globals = { 'vim' }
                }
            }
        }
    }

    lsp.setup()
end

return {
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
                opts = {
                    ensure_installed = {
                        'eslint_d',
                        'prettierd'
                    }
                }
            },
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},     -- Required
            {'hrsh7th/cmp-nvim-lsp'}, -- Required
            {'L3MON4D3/LuaSnip'},     -- Required
        },
        config = lsp_config
    },
}
