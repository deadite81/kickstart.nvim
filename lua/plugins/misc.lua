-- Plugins that require little to no configuration go here.
return {
  {
    -- Autoclose parentheses, brackets, quotes, etc.
    -- https://github.com/windwp/nvim-autopairs
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    config = true,
    opts = {},
  },
  {
    -- Detect tabstop and shiftwidth automatically
    -- https://github.com/nmac427/guess-indent.nvim
    'NMAC427/guess-indent.nvim',
  },
  { -- Add indentation guides even on blank lines
    -- https://github.com/indent-blankline.nvim
    'lukas-reineke/indent-blankline.nvim',
    -- See `:help ibl`
    main = 'ibl',
    opts = {},
  },
  {
    -- Highlight todo, notes, etc in comments
    -- https://github.com/folke/todo-comments.nvim
    'folke/todo-comments.nvim',
    event = 'VimEnter',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = { signs = false },
  },
  {
    -- High-performance color highlighter
    -- https://github.com/nvim-colorizer.lua
    'norcalli/nvim-colorizer.lua',
    config = function()
      require('colorizer').setup()
    end,
  },
}
