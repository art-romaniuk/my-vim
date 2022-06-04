vim.cmd([[
  autocmd Filetype html setlocal autoindent
  autocmd Filetype scss setlocal autoindent
  autocmd Filetype javascript setlocal autoindent
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
