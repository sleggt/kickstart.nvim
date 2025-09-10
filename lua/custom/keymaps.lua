-- Location for custom keymaps
-- added following recommendation in https://deepwiki.com/nvim-lua/kickstart.nvim/9-customization-guide

-- See `:help telescope.builtin`
vim.keymap.set('n', '=', require('telescope.builtin').oldfiles)
vim.keymap.set('n', ';', require('telescope.builtin').buffers)

-- previous and next buffer
vim.keymap.set('n', '<C-H>', ':bp <enter>')
vim.keymap.set('n', '<C-L>', ':bn <enter>')

-- Set the Vim working directory to directory of current file
vim.keymap.set('n', '<leader>cd', ':cd %:p:h<CR>')
-- Set the Vim local directory to directory of current file
vim.keymap.set('n', '<leader>cl', ':lcd %:p:h<CR>')

-- insert current date
vim.keymap.set('n', '<F3>', 'a<C-R>=strftime("%Y-%m-%d")<CR> <Esc>')
vim.keymap.set('i', '<F3>', '<C-R>=strftime("%Y-%m-%d")<CR> ')
-- insert current date and time
vim.keymap.set('n', '<F4>', 'a<C-R>=strftime("%H:%M")<CR> <Esc>')
vim.keymap.set('i', '<F4>', '<C-R>=strftime("%H:%M")<CR> ')

-- [[ Own keymaps ]]
vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })

-- vim: ts=2 sts=2 sw=2 et
