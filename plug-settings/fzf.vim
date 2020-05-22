""""""""""""""""""""""""""""""""""""""""""""
"               Vim fzf                    "
""""""""""""""""""""""""""""""""""""""""""""

" Map for fzf
"nmap <Leader>. :Buffers<CR>
nmap <Leader>t :Files<CR>
nmap <Leader>r :Tags<CR>
" Help finder
nmap <Leader>H :Helptags!<CR>
" Fazzy search commands
nmap <Leader>C :Commands<CR>
" Fazzy search history
nmap <Leader>: :History:<CR>
" Fazzy search key mappings
nmap <Leader>M :Maps<CR>
" Fazzy search filetype syntaxes
nmap <Leader>s :Filetypes<CR>


" File path completion in Insert mode using fzf
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-l> <plug>(fzf-complete-buffer-line)

