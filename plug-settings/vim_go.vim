let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

" Go syntax highlighting
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_operators = 1
"
" Run goimports along gofmt on each save     
let g:go_fmt_command = "goimports"
" Automatically get signature/type info for object under cursor     
let g:go_auto_type_info = 1

au filetype go inoremap <buffer> . .<C-x><C-o><C-p><C-x><C-o><C-p>

