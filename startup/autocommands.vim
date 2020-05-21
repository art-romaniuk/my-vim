" Auto reload ~/.vimrc file
if has('autocmd')
    autocmd bufwritepost $HOUME/.vimrc source $MYVIMRC
endif

autocmd Filetype html setlocal ts=4 sw=4 expandtab
autocmd Filetype scss setlocal ts=2 sw=2 expandtab
autocmd Filetype javascript setlocal ts=4 sw=4 sts=0 noexpandtab

" Disable auto-comments
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
