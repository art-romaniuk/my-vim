-- keep cursor column when JK motion
vim.g.EasyMotion_startofline = 0
-- EasyMotion work similarly to Vim's smartcase
vim.g.EasyMotion_smartcase = 1


vim.cmd([[
  map  <Leader>f <Plug>(easymotion-bd-f)
  nmap <Leader>f <Plug>(easymotion-overwin-f)
  map  <Leader>l <Plug>(easymotion-bd-jk)
  nmap <Leader>l <Plug>(easymotion-overwin-line)
  map  <Leader>; <Plug>(easymotion-bd-w)
  nmap <Leader>; <Plug>(easymotion-overwin-w)
]])

vim.cmd([[
  hi link EasyMotionTarget ErrorMsg
  hi link EasyMotionShade  Comment

  hi link EasyMotionTarget2First MatchParen
  hi link EasyMotionTarget2Second MatchParen

  hi link EasyMotionMoveHL Search
  hi link EasyMotionIncSearch Search
]])

-- Disable lsp systax error highlighting when using the motions
vim.cmd([[
  autocmd User EasyMotionPromptBegin silent! CocDisable
  autocmd User EasyMotionPromptEnd silent! CocEnable
]])
