-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
--
-- this file contains the 'simple' plugins that have little or no configuration
-- the other files in this directory contain the other plugins
return {
  {
    'tpope/vim-fugitive',
    config = function()
      vim.keymap.set('n', '<leader>g', '<CMD>Git<CR>', { desc = 'Open Fu[G]itive' })
    end,
  },
  'tpope/vim-unimpaired',
  'tpope/vim-surround',
  'tpope/vim-speeddating',

  -- niet zeker of dit handig/nodig is
  -- zonder deze plugin was syntax al highlighted, maar
  -- folding werkte niet. Check of folding ook met ingebouwde setting kan werken
  -- folding blijkt te werken met vim.g.markdown_folding = 1 optie van ft-markdown-plugin
  -- 'plasticboy/vim-markdown',

  'chrisbra/csv.vim',
  'sleggt/IEC.vim',
  -- 'ionide/Ionide-vim',

  -- 'sheerun/vim-polyglot',
}

-- vim: ts=2 sts=2 sw=2 et
