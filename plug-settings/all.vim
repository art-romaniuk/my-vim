
""""""""""""""""""""""""""""""""""""""""""""
"               Vim fzf                    "
""""""""""""""""""""""""""""""""""""""""""""
let g:fzf_layout = { 'down': '~80%' }
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }


" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
let g:fzf_history_dir = '~/.local/share/fzf-history'
let g:fzf_file_options = '--preview "[[ \$(file --mime {2..-1}) =~ binary ]] && echo {2..-1} is a binary file || (highlight -O ansi -l {2..-1} || coderay {2..-1} || rougify {2..-1} || cat {2..-1}) 2> /dev/null | head -'.&lines.'"'

" File preview for fzf (used bat)
command! -bang -nargs=* Ag
  \ call fzf#vim#ag(<q-args>,
  \                 <bang>0 ? fzf#vim#with_preview('up:60%')
  \                         : fzf#vim#with_preview('right:50%:hidden', '?'),
  \                 <bang>0)

" Similarly, we can apply it to fzf#vim#grep. To use ripgrep instead of ag:
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

" ripgrep
if executable('rg')
  let $FZF_DEFAULT_COMMAND = 'rg --files --no-ignore-vcs --hidden --follow --glob "!.git/*"'
  set grepprg=rg\ --vimgrep
  command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>).'| tr -d "\017"', 1, <bang>0)
endif

""""""""""""""""""""""""""""""""""""""""""""
"               Vim slime                   "
""""""""""""""""""""""""""""""""""""""""""""
let g:slime_default_config={'socket_name': 'default', 'target_pane': '{right-of}'}
let g:slime_paste_file=tempname()
let g:slime_target='tmux'

""""""""""""""""""""""""""""""""""""""""""""
"               Vim php-namespace          "
""""""""""""""""""""""""""""""""""""""""""""
" Then, hitting `\u` in normal or insert mode will import the class or function under the cursor.
function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php noremap <Leader>u :call PhpInsertUse()<CR>

autocmd FileType php noremap <Leader><Leader>s :call PhpSortUse()<CR>
noremap <Leader>u :call PhpInsertUse()<CR>


" Then, hitting `\e` in normal or insert mode will expand the name to a fully qualified name.
function! IPhpExpandClass()
    call PhpExpandClass()
    call feedkeys('a', 'n')
endfunction
autocmd FileType php noremap <Leader><Leader>e :call PhpExpandClass()<CR>

let g:php_namespace_sort = "'{,'}-1!awk '{print length, $0}' | sort -n -s | cut -d' ' -f2-"
let g:php_namespace_sort_after_insert = 1
set tags+=tags,tags.vendors

""""""""""""""""""""""""""""""""""""""""""""
"               Vim neomake                "
""""""""""""""""""""""""""""""""""""""""""""
" Check on write to buffer
autocmd BufWritePost * Neomake

""""""""""""""""""""""""""""""""""""""""""""
"               Vim coc (autocomplete)     "
""""""""""""""""""""""""""""""""""""""""""""
" Use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

let g:coc_global_extentions = [
            \ 'coc-json',
            \ 'coc-emmet',
            \ 'coc-php',
            \ 'coc-snippets',
            \ 'coc-docker',
            \ 'coc-prettier' ]
let g:deoplete#enable_at_startup = 1

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>rf  <Plug>(coc-format-selected)
nmap <leader>rf  <Plug>(coc-format-selected)

" Create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

""""""""""""""""""""""""""""""""""""""""""""
"               Vim coc (autocomplete)     "
""""""""""""""""""""""""""""""""""""""""""""
let g:deoplete#enable_at_startup = 1
let g:indentLine_char = '▏'

" YouCompleteMe and UltiSnips compatibility.
let g:UltiSnipsExpandTrigger = '<Tab>'
let g:UltiSnipsJumpForwardTrigger = '<Tab>'
let g:UltiSnipsJumpBackwardTrigger = '<S-Tab>'


" Prevent UltiSnips from removing our carefully-crafted mappings.
"let g:UltiSnipsMappingsToIgnore = ['autocomplete']

"if has('autocmd')
  "augroup WincentAutocomplete
    "autocmd!
    "autocmd! User UltiSnipsEnterFirstSnippet
    "autocmd User UltiSnipsEnterFirstSnippet call autocomplete#setup_mappings()
    "autocmd! User UltiSnipsExitLastSnippet
    "autocmd User UltiSnipsExitLastSnippet call autocomplete#teardown_mappings()
  "augroup END
"endif

let g:ycm_key_list_select_completion = ['<C-j>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<Up>']
let g:ycm_key_list_accept_completion = ['<C-y>']

" Additional YouCompleteMe config.
let g:ycm_complete_in_comments = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_seed_identifiers_with_syntax = 1


" Disable unhelpful semantic completions.
let g:ycm_filetype_specific_completion_to_disable = {
      \   'c': 1,
      \   'gitcommit': 1,
      \   'haskell': 1,
      \   'javascript': 1,
      \   'ruby': 1
      \ }

let g:ycm_semantic_triggers = {
      \   'haskell': [
      \     '.',
      \     '(',
      \     ',',
      \     ', '
      \   ]
      \ }

" Same as default, but with "markdown" and "text" removed.
let g:ycm_filetype_blacklist = {
      \   'notes': 1,
      \   'unite': 1,
      \   'tagbar': 1,
      \   'pandoc': 1,
      \   'qf': 1,
      \   'vimwiki': 1,
      \   'infolog': 1,
      \   'mail': 1
      \ }

" LeaderF fuzzy search plugin
" don't show the help in normal mode
let g:Lf_HideHelp = 1
let g:Lf_UseCache = 0
let g:Lf_UseVersionControlTool = 0
let g:Lf_IgnoreCurrentBufferName = 1
let g:Lf_DefaultMode= 'NameOnly'
" popup mode
let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1
let g:Lf_StlSeparator = { 'left': "\ue0b0", 'right': "\ue0b2", 'font': "DejaVu Sans Mono for Powerline" }
let g:Lf_PreviewResult = {'Function': 0, 'BufTag': 0 }

let g:Lf_ShortcutF = "<leader>/"
" should use `Leaderf gtags --update` first
let g:Lf_GtagsAutoGenerate = 0
let g:Lf_Gtagslabel = 'native-pygments'

" Configuration for phpcs (ale-php-phan)
let g:ale_php_phpcs_standard = "~/.config/phpcs/phpcs.xml.dist"

