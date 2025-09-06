-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {

  {
    'NeogitOrg/neogit',
    dependencies = {
      'nvim-lua/plenary.nvim', -- required
      'sindrets/diffview.nvim', -- optional - Diff integration

      -- Only one of these is needed.
      'nvim-telescope/telescope.nvim', -- optional
      'ibhagwan/fzf-lua', -- optional
      'echasnovski/mini.pick', -- optional
      'folke/snacks.nvim', -- optional
    },
  },

  -- 'justinmk/vim-dirvish',
  -- replaced vim-dirvish with oil
  {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {},
    -- Optional dependencies
    dependencies = { { 'echasnovski/mini.icons', opts = {} } },
    -- dependencies = { 'nvim-tree/nvim-web-devicons' }, -- use if you prefer nvim-web-devicons
    -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
    lazy = false,
  },

  'tpope/vim-unimpaired',
  'tpope/vim-surround',
  'tpope/vim-speeddating',

  -- niet zeker of dit handig/nodig is
  -- zonder deze plugin was syntax al highlighted, maar
  -- folding werkte niet. Check of folding ook met ingebouwde setting kan werken
  -- 'plasticboy/vim-markdown',

  'chrisbra/csv.vim',
  'sleggt/IEC.vim',
  -- 'ionide/Ionide-vim',

  -- 'sheerun/vim-polyglot',

  {
    'nvim-orgmode/orgmode',
    config = function()
      require('orgmode').setup {}
    end,
  },

  {
    'fei6409/log-highlight.nvim',
    opts = {
      ---@type string|string[]: File extensions. Default: 'log'
      extension = 'log',

      ---@type string|string[]: File names or full file paths. Default: {}
      filename = {
        'syslog',
      },

      ---@type string|string[]: File name/path glob patterns. Default: {}
      pattern = {
        -- Use `%` to escape special characters and match them literally.
        '%/var%/log%/.*',
        'console%-ramoops.*',
        'log.*%.txt',
        'logcat.*',
      },

      ---@type table<string, string|string[]>: Custom keywords to highlight.
      ---This allows you to define custom keywords to be highlighted based on
      ---the group.
      ---
      ---The following highlight groups are supported:
      ---    'error', 'warning', 'info', 'debug' and 'pass'.
      ---
      ---The value for each group can be a string or a list of strings.
      ---All groups are empty by default. Keywords are case-sensitive.
      keyword = {
        error = 'ERROR_MSG',
        warning = { 'WARN_X', 'WARN_Y' },
        info = { 'INFORMATION' },
        debug = {},
        pass = {},
      },
    },
  },
}
-- vim: ts=2 sts=2 sw=2 et
