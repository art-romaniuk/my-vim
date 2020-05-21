set runtimepath^=~/.dotfiles/.vim runtimepath+=~/.dotfiles/.vim/after
let &packpath=&runtimepath
source ~/.vimrc

" Use deoplete.
let g:deoplete#enable_at_startup = 1
