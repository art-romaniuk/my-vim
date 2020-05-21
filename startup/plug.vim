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

Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }

" Coc vim autocompition
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Nginx
Plug 'chr4/nginx.vim'

" JavaScript highlight
Plug 'pangloss/vim-javascript'

" Color scheme
Plug 'morhetz/gruvbox'

call plug#end()
