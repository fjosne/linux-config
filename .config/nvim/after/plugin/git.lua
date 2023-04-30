require('gitsigns').setup({
    current_line_blame = true,
    current_line_blame_opts = {
        virt_text_pos = 'eol',
        delay = 0
    },
})

-- Git blame 
require('git').setup({
     keymaps = {
        -- Open blame window
        blame = "<Leader>gb",
        -- Close blame window
        quit_blame = "<Leader>gb",
    }
})

local lazygit = require'FTerm':new({
    cmd = 'lazygit',
    dimensions  = {
        height = 0.9,
        width = 0.9,
    },
})


--vim.keymap.set('n', '<leader>gg', ':FloatermNew lazygit<CR>', { silent = true })
vim.keymap.set('n', '<leader>gg', function() lazygit:toggle() end)
