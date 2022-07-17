local packer = require 'lib.packer-init'

return require('packer').startup(function(use)
  use {
    'glepnir/dashboard-nvim',
    config = function()
      require('plugins.dashboard')
    end
  }

  use { 
    'dense-analysis/ale',
    config = function()
      require('plugins.ale')
    end
  }

  -- Coc vim autocompition
  use {'neoclide/coc.nvim', branch = 'release'}
  use { 'antoinemadec/coc-fzf' }

  use { 'pechorin/any-jump.vim' }

  use { 'mhartington/oceanic-next' }

  -- EasyMotion better analog
  use {
    'phaazon/hop.nvim',
    branch = 'v2', -- optional but strongly recommended
    config = function()
      require('plugins.hop')
    end
  }

  -- Terminal inside vim
  use { 'voldikss/vim-floaterm' }


  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons',
    },
    config = function() 
      require('plugins.lua-tree')
    end
  }

  -- Fzf fuzzy finder
  use {
    'junegunn/fzf',
    run = './install --bin', 
    config = function()
      require('plugins.fzf')
    end
  }
  use { 'junegunn/fzf.vim' }

  -- -- Lualine status bar
  use {
    'nvim-lualine/lualine.nvim',
    requires = {
      'kyazdani42/nvim-web-devicons',
      opt = true,
    },
    config = function()
      require('plugins.lualine')
    end
  }

  -- Personal vim configuration of Jess Archer <jess@jessarcher.com>
  use { 'tpope/vim-commentary' }
  use { 'tpope/vim-surround' }
  use { 'tpope/vim-repeat' }
  use { 'tpope/vim-eunuch' } -- Adds :Rename, :SudoWrite
  use { 'tpope/vim-unimpaired' } -- Adds [b and other handy mappings
  use { 'tpope/vim-sleuth' } -- Indent autodetection with editorconfig support
  use { 'jessarcher/vim-heritage' } -- Automatically create parent dirs when saving

  use {
    'tommcdo/vim-lion',
    config = function()
      require('plugins.lion')
    end
  }

  use {
    'lukas-reineke/indent-blankline.nvim',
    config = function()
      require('plugins.indent-blankline')
    end
  }

  use {
    'AndrewRadev/splitjoin.vim',
    config = function()
      require('plugins.splitjoin')
    end
  }

  use {
    'windwp/nvim-autopairs',
    config = function()
      require('nvim-autopairs').setup()
    end
  }

  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      { 'nvim-lua/plenary.nvim' },
      { 'kyazdani42/nvim-web-devicons' },
      { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' },
      { 'nvim-telescope/telescope-live-grep-args.nvim' },
      { 'fannheyward/telescope-coc.nvim' }
    },
    config = function()
      require('plugins.telescope')
    end
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    requires = {
      'nvim-treesitter/nvim-treesitter-textobjects',
      'lewis6991/spellsitter.nvim',
      'JoosepAlviste/nvim-ts-context-commentstring',
    },
    config = function()
      require('plugins.treesitter')
      require('spellsitter').setup()
    end
  }

  use {
    'lewis6991/gitsigns.nvim',
    requires = 'nvim-lua/plenary.nvim',
    config = function()
      require('gitsigns').setup { sign_priority = 20 }
    end,
  }
  -- Personal vim configuration of Jess Archer <jess@jessarcher.com>

  -- Fugitive (GIT)
  use { 'tpope/vim-fugitive' }
  -- use { 'airblade/vim-gitgutter' }

  -- Viff diff
  use {
    'sindrets/diffview.nvim',
    requires = 'nvim-lua/plenary.nvim'
  }

  -- Change history preview plugin
  use {
    'mbbill/undotree',
    config = function()
      require('plugins.undotree')
    end
  }

  -- Yank highlight
  use { 'machakann/vim-highlightedyank' }

  -- Go
  use {
    'fatih/vim-go',
    run = ':GoUpdateBinaries',
    config = function()
    require('plugins.vim-go')
    end
  }

  -- Track the engine.
  -- use { 'SirVer/ultisnips' }
  -- Snippets are separated from the engine. Add this if you want them:
  use { 'honza/vim-snippets' }

  -- Extended text object
  use { 'wellle/targets.vim' }

  -- PlantUML
  use { 'aklt/plantuml-syntax' }
  use { 'tyru/open-browser.vim' }
  use { 'weirongxu/plantuml-previewer.vim' }


  -- Spell check plugin
  use {
    'kamykn/spelunker.vim',
    config = function()
      require('plugins.spelunker')
    end
  }

  -- Markdown preview
  use { 'iamcco/markdown-preview.nvim', run = 'cd app && yarn install'  }

  -- Find and replace
  use { 'dyng/ctrlsf.vim' }

  -- Debugging plugin
  use { 'puremourning/vimspector' }
  use { 'mfussenegger/nvim-dap' }
  use { 'rcarriga/nvim-dap-ui' }
  use { 'theHamsta/nvim-dap-virtual-text' }

  -- Plugin for helm
  use { 'towolf/vim-helm' }

  -- Display css color
  use { 'norcalli/nvim-colorizer.lua' }

  -- Folding plugin
  use {
    'kevinhwang91/nvim-ufo',
    requires = 'kevinhwang91/promise-async',
    config = function()
      require('plugins.ufo')
    end
  }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
  require('packer').sync()
  end
end)
