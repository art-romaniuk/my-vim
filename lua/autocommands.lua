vim.cmd([[
  autocmd FileType python set omnifunc=pythoncomplete#Complete
  autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
  autocmd FileType css set omnifunc=csscomplete#CompleteCSS
  autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
  autocmd FileType php set omnifunc=phpcomplete#CompletePHP
  autocmd FileType c set omnifunc=ccomplete#Complete
  autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
  autocmd FileType ruby,perl,tex set shiftwidth=2
   
  autocmd FileType c,cpp,java,javascript,python,xml,xhtml,html,vue,yaml,yml,lua set shiftwidth=2 tabstop=2
  autocmd FileType php,go,make set shiftwidth=4 tabstop=4
]])
-- Disable auto-comments
vim.cmd([[
  autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
]])

-- Check if buffer has been changed outside vim
vim.cmd([[
  au CursorHold * checktime  
]])

-- True colors config
vim.cmd([[
  if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
  endif
]])

-- Set type for typescript files
vim.cmd([[
  au Filetype *.php set smartindent
]])

vim.cmd([[
  autocmd InsertEnter *.json setlocal concealcursor=
  autocmd InsertLeave *.json setlocal concealcursor=inc
]])
