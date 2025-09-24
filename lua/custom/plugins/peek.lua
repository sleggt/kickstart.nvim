return {
  {
    'toppair/peek.nvim',
    event = { 'VeryLazy' },
    build = 'deno task --quiet build:fast',
    config = function()
      require('peek').setup {
        -- whether to automatically load preview when
        -- entering another markdown buffer
        auto_load = true,
        -- close preview window on buffer delete
        close_on_bdelete = true,
        -- enable syntax highlighting, affects performance
        syntax = true,
        -- 'dark' or 'light'
        theme = 'light',

        update_on_change = true,
        -- 'webview', 'browser', string or a table of strings
        -- explained below
        app = 'browser',
        -- list of filetypes to recognize as markdown
        filetype = { 'markdown' },

        -- relevant if update_on_change is true
        -- start throttling when file exceeds this
        -- amount of bytes in size
        throttle_at = 200000,
        -- minimum amount of time in milliseconds
        -- that has to pass before starting new render
        throttle_time = 'auto',
      }
      vim.api.nvim_create_user_command('PeekOpen', require('peek').open, {})
      vim.api.nvim_create_user_command('PeekClose', require('peek').close, {})

      vim.keymap.set('n', '<leader>po', '<CMD>PeekOpen<CR>', { desc = 'Markdown [P]eek[O]pen' })
      vim.keymap.set('n', '<leader>pc', '<CMD>PeekClose<CR>', { desc = 'Markdown [P]eek[C]lose' })
    end,
  },
}

-- vim: ts=2 sts=2 sw=2 et
