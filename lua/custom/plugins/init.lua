-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {

  'justinmk/vim-dirvish',

  'tpope/vim-unimpaired',
  'tpope/vim-surround',
  'tpope/vim-speeddating',

  -- niet zeker of dit handig/nodig is
  -- zonder deze plugin was syntax al highlighted, maar
  -- folding werkte niet. Check of folding ook met ingebouwde setting kan werken
  'plasticboy/vim-markdown',
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
}
