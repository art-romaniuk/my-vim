local fn = vim.fn
local install_path = fn.stdpath("data").."/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({"git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path})
end
vim.cmd("packadd packer.nvim")

return require("packer").startup(function()
    -- ALE (Asynchronous Lint Engine)
    use "dense-analysis/ale"

    -- Color scheme
    use "rainglow/vim"

    -- Coc vim autocompition
    -- use {"neoclide/coc.nvim", branch = "release"}
    -- Color scheme
    -- use "joshdick/onedark.vim"
    use "ii14/onedark.nvim"
    use 'mhartington/oceanic-next'

    -- EasyMotion
    use "easymotion/vim-easymotion"

    -- For refactoring
    -- use "phpactor/phpactor", {"for": "php", "branch": "master", "do": "composer install --no-dev -o"}

    -- Terminal inside vim
    use "voldikss/vim-floaterm"

    -- File explorer
    use "preservim/nerdtree"

    -- Marks changed files
    use "Xuyuanp/nerdtree-git-plugin"

    -- Fzf fuzzy finder
    use { "junegunn/fzf", run = "./install --bin", }
    use "junegunn/fzf.vim"
    -- Preview for coc actions
    use "antoinemadec/coc-fzf"

    -- EasyAline
    use "junegunn/vim-easy-align"

    -- -- Lualine status bar
    use {
        "nvim-lualine/lualine.nvim",
        requires = { "kyazdani42/nvim-web-devicons", opt = true }
    }

    -- Autopairs
    use "jiangmiao/auto-pairs"

    -- Vim surround
    use "tpope/vim-surround"

    -- Commentary
    use "tomtom/tcomment_vim"

    -- Fugitive (GIT)
    use "tpope/vim-fugitive"
    use "airblade/vim-gitgutter"

    -- Vim repeate
    use "tpope/vim-repeat"

    -- Change history preview plugin
    use "mbbill/undotree"

    -- Code inspection plugin
    use "pechorin/any-jump.vim"

    -- Directory plugin
    use "justinmk/vim-dirvish"

    -- Twig plugin
    use "lumiliet/vim-twig"

    -- Yank highlight
    use "machakann/vim-highlightedyank"

    -- Go
    use { "fatih/vim-go",  run = ":GoUpdateBinaries" }

    -- Track the engine.
    -- use "SirVer/ultisnips"
    -- Snippets are separated from the engine. Add this if you want them:
    use "honza/vim-snippets"

    -- Extended text object
    use "wellle/targets.vim"

    -- Vim notes
    use "vimwiki/vimwiki"

    -- PlantUML
    use "aklt/plantuml-syntax"
    use "tyru/open-browser.vim"
    use "weirongxu/plantuml-previewer.vim"

    -- Language highlights
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        requires = {
            { 'nvim-treesitter/nvim-treesitter-textobjects' }
        }
    }

    -- Spell check plugin
    use "kamykn/spelunker.vim"

    -- Markdown preview
    use { "iamcco/markdown-preview.nvim", run = "cd app && yarn install"  }

    use {'neoclide/coc.nvim', branch = 'release'}

    -- Find and replace
    use "dyng/ctrlsf.vim"

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use "Yggdroot/indentLine"

    -- Debugin plugin
    use "puremourning/vimspector"

    -- Plugin for helm
    use 'towolf/vim-helm'

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        require("packer").sync()
    end
end)
