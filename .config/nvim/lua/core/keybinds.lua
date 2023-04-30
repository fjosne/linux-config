vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)
vim.keymap.set('n', 'Y', 'yg$') -- Better yanking behavior
vim.keymap.set('n', 'q:', ':q')
vim.keymap.set('t', '<esc>', '<C-\\><C-n>') -- Normal mode in terminal

-- nice pane switching
vim.keymap.set('n', 'Q', '<nop>') -- No ex mode
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')

-- Copy/Paste stuff
vim.keymap.set('x', '<leader>p', '"_dP') -- pasting in visual/select mode will not put overwritten text into yank buffer
vim.keymap.set('n', '<leader>y', '"*y')

vim.keymap.set('n', 'q:', ':q')

-- move lines up/down in visual mode
vim.keymap.set('v', 'J', ":m '>+1<cr>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<cr>gv=gv")

-- Dont loose selection when indenting
vim.keymap.set('v', '>', ">gv")
vim.keymap.set('v', '<', "<gv")

-- navigate and close qflist
vim.keymap.set('n', '<C-n>', ':cn<cr>')
vim.keymap.set('n', '<C-p>', ':cp<cr>')
vim.keymap.set('n', '<leader>cq', ':cclose<cr>')
