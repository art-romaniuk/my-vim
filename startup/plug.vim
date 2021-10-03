" Install vim-plug if not eixsts
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
" Plugins that allow make a text align
Plug 'junegunn/vim-easy-align'

" Autocomplition
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" ALE (Asynchronous Lint Engine)
Plug 'w0rp/ale'

" Color scheme
Plug 'rainglow/vim'

" Coc vim autocompition
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Color scheme
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'joshdick/onedark.vim'

" Color scheme
Plug 'morhetz/gruvbox'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'sonph/onehalf', {'rtp': 'vim/'}

" Syntax highlight
Plug 'sheerun/vim-polyglot'

" EasyMotion
Plug 'easymotion/vim-easymotion'
"
" EasyMotion like
" Plug 'phaazon/hop.nvim'

" Neerd Tree
Plug 'preservim/nerdtree'

" Fzf fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" EasyAline
Plug 'junegunn/vim-easy-align'

" Airline status bar
Plug 'vim-airline/vim-airline'

" Autopairs
Plug 'jiangmiao/auto-pairs'

" Vim surround
Plug 'tpope/vim-surround'

" Commentary
Plug 'tpope/vim-commentary'

" Fugitive (GIT)
Plug 'tpope/vim-fugitive'

" Git diff view
Plug 'sindrets/diffview.nvim'

" Vim repeate
Plug 'tpope/vim-repeat'

" Change history preview plugin
Plug 'mbbill/undotree'

" Code inspection plugin
Plug 'pechorin/any-jump.vim'

" Directory plugin
Plug 'justinmk/vim-dirvish'

" Twig plugin
Plug 'lumiliet/vim-twig'

" Yank highlight
Plug 'machakann/vim-highlightedyank'

" Go
Plug 'fatih/vim-go', {  'tag': 'v1.22', 'do': ':GoUpdateBinaries' }

" Track the engine.
Plug 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'

" Extended text object
Plug 'wellle/targets.vim'

" Vin notes
Plug 'vimwiki/vimwiki'

" PlantUML
Plug 'aklt/plantuml-syntax'
Plug 'tyru/open-browser.vim'
Plug 'weirongxu/plantuml-previewer.vim'

" Search preview plugins
" Plug 'nvim-lua/plenary.nvim'
" Plug 'nvim-telescope/telescope.nvim'

" Analog to gitgutter
if has('nvim') || has('patch-8.0.902')
  Plug 'mhinz/vim-signify'
else
  Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
endif

call plug#end()
