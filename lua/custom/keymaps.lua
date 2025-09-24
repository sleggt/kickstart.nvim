-- [[ Custom keymaps ]]

vim.keymap.set('n', '<leader>sF', function()
  require('telescope.builtin').find_files { hidden = true }
end, { desc = '[S]earch (hidden) [F]iles' })
vim.keymap.set('n', '=', require('telescope.builtin').oldfiles, { desc = 'Search Recent Files' })
vim.keymap.set('n', ';', require('telescope.builtin').buffers, { desc = 'Find existing buffers' })

-- previous and next buffer
vim.keymap.set('n', '<C-H>', ':bp <enter>', { desc = 'Go to previous buffer in buffer list' })
vim.keymap.set('n', '<C-L>', ':bn <enter>', { desc = 'Go to next buffer in buffer list' })

-- Set the Vim working directory to directory of current file
vim.keymap.set('n', '<leader>cd', ':cd %:p:h<CR>', { desc = '[C]hange working [D]irectory to directory of current file' })
-- Set the Vim local directory to directory of current file
vim.keymap.set('n', '<leader>cl', ':lcd %:p:h<CR>', { desc = '[C]hange [L]ocal directory to directory of current file' })

-- insert current date
vim.keymap.set('n', '<F3>', 'a<C-R>=strftime("%Y-%m-%d")<CR> <Esc>')
vim.keymap.set('i', '<F3>', '<C-R>=strftime("%Y-%m-%d")<CR> ')
-- insert current date and time
vim.keymap.set('n', '<F4>', 'a<C-R>=strftime("%H:%M")<CR> <Esc>')
vim.keymap.set('i', '<F4>', '<C-R>=strftime("%H:%M")<CR> ')

-- Set which-key descriptions
local wk = require 'which-key'
wk.add {
  { '<leader>c', group = '[C]hange directory' },
  -- orgmode builtin keymaps
  { '<leader>o', group = '[O]rg mode' },
  { '<leader>oa', desc = '[O]rg mode [A]genda' },
  { '<leader>oc', desc = '[O]rg mode [C]apture' },
}

-- vim: ts=2 sts=2 sw=2 et
