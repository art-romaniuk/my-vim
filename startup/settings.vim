if v:progname == 'vi'
  set noloadplugins
endif

" Stark highlighting is enough to see the current match; don't need the
" centering, which can be annoying.
let g:LoupeCenterResults=0

" Colorscheme
set cursorline

" Default shell for built in terminal
set shell=/usr/local/bin/zsh

" Colorscheme
" autocmd vimenter * colorscheme gruvbox
" autocmd vimenter * colorscheme palenight
" autocmd vimenter * colorscheme onehalfdark
colorscheme onedark
" set background=dark
" autocmd vimenter * colorscheme dracula

" Display line numbers
set number
" Auto load file if it was changed
set autoread
set tabstop=4 
set shiftwidth=4
set expandtab

" Make copy to clipboard
set clipboard=unnamedplus
set confirm

" Enable mouse in normal and visual modes
set mouse=nv

" Highlight search word
"set hlsearch
set relativenumber

" Be iMproved, required
set nocompatible
set timeoutlen=3000
set updatetime=100

" Change the direction of new splits
set splitbelow
set splitright

" Turn off .swp file creation
set noswapfile

" Use soft tab stop spaces instead of tab characters for indentation
set expandtab

" Indent by 4 spaces when using >>, <<, == etc.
set shiftwidth=4

" Indent by 4 spaces when pressing <TAB>
set softtabstop=4

" Persist undo between sessions
set undofile
" TODO settings line bellow does not work anymore (should find out why)
" set undodir=~/.dotfiles/.vim/undodir/

" Width of wrapped texts
set tw=120

" Display a separate line at the end of columns
set termguicolors
set colorcolumn=+1

" Keep indentation from previous line
set autoindent

" Automatically inserts indentation in some cases
set smartindent

" Seach by using lower and upper case
set ignorecase
set smartcase

" Like smart indent, but stricter and more customisable
set cindent

" Search down into sub folders Provides tab-completion
set path+=**

" Display all matching files when we tab complete
set wildmenu

" Spell checking
set spelllang=en
set spellfile=$HOME/.dotfiles/.vim/spell/en.utf-8.add

" Required
filetype off

" Disable automatic comment insertion
set formatoptions-=cro  

" The Fix for Slow Scrolling in VIM
" set re=1
" set lazyredraw
" set ttyfast
set regexpengine=1
" set synmaxcol=200
" syntax sync minlines=256

" Break symbol
set showbreak=⤥\ 

" Automatic, language-dependent indentation, syntax coloring and other
" functionality.
filetype indent plugin on
syntax on

" Change cursor color
" use an orange cursor in insert mode
let &t_SI .= "\<Esc>]12;white\x7"
" use a red cursor otherwise
let &t_EI .= "\<Esc>]12;white\x7"
" Use a blinking upright bar cursor in Insert mode, a blinking block in normal
let &t_SI .= "\<Esc>[5 q"
let &t_EI .= "\<Esc>[1 q"

" Search colors
"set hlsearch

" Folding
if has('folding')
    if has('windows')
        let &fillchars='vert: '         " less cluttered vertical window separators
    endif
    set foldmethod=indent               " not as cool as syntax, but faster
    set foldlevelstart=99               " start unfolded
endif

if v:version > 703 || v:version == 703 && has('patch541')
    set formatoptions+=j                " remove comment leader when joining comment lines
endif

" Open .vimrc in new tab
noremap <leader>v :tabedit $MYVIMRC<CR>

" Auto save when lost a focus
au FocusLost * :wa

" Autorefresh file
au FocusGained * :checktime

" Set cursor always white
highlight Cursor guifg=white guibg=white
highlight iCursor guifg=white guibg=steelblue
set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor
set guicursor+=n-v-c:blinkon0
set guicursor+=i:blinkwait10

" Add fzf to runtime path for execution
set rtp+=/Users/coffeeman/homebrew/opt/fzf

" Redecalre style for hlsearch
autocmd VimEnter * hi Search        guifg=#Cd3f45 guibg=NONE gui=underline,bold

" JavaScript
let g:javascript_plugin_flow = 1
