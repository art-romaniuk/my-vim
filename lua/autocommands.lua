vim.cmd([[
  autocmd Filetype html setlocal ts=4 sw=4 expandtab
  autocmd Filetype scss setlocal ts=2 sw=2 expandtab
  autocmd Filetype javascript setlocal ts=4 sw=4 sts=0 noexpandtab
  autocmd FileType php setlocal autoindent
  autocmd BufReadPost * setlocal autoindent
  autocmd Filetype indent on
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
