local ok, _ = pcall(require, "lspconfig")
if not ok then
    return
end

vim.cmd([[
  nnoremap <silent> gd    <cmd>lua vim.lsp.buf.definition()<CR>
  nnoremap <silent> gD    <cmd>lua vim.lsp.buf.declaration()<CR>
  nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
  nnoremap <silent> gi    <cmd>lua vim.lsp.buf.implementation()<CR>
  nnoremap <silent> K     <cmd>Lspsaga hover_doc<CR>
  nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
  nnoremap <silent> <C-p> <cmd>Lspsaga diagnostic_jump_prev<CR>
  nnoremap <silent> <C-n> <cmd>Lspsaga diagnostic_jump_next<CR>
  nnoremap <silent> gf    <cmd>lua vim.lsp.buf.formatting()<CR>
  nnoremap <silent> gR    <cmd>lua vim.lsp.buf.rename()<CR>
  nnoremap <silent> ga    <cmd>Lspsaga code_action<CR>
  xnoremap <silent> ga    <cmd>Lspsaga range_code_action<CR>
  nnoremap <silent> gs    <cmd>Lspsaga signature_help<CR>
]])

-- Based on: https://github.com/neovim/nvim-lspconfig/wiki/UI-customization#change-diagnostic-symbols-in-the-sign-column-gutter
vim.fn.sign_define('DiagnosticSignError', { text = '✗', texthl = 'DiagnosticSignError', numhl = 'DiagnosticSignError' })
vim.fn.sign_define('DiagnosticSignHint', { text = '➔', texthl = 'DiagnosticSignHint', numhl = 'DiagnosticSignHint' })
vim.fn.sign_define('DiagnosticSignInfo', { text =  'ℹ', texthl = 'DiagnosticSignInfo', numhl = 'DiagnosticSignInfo' })
vim.fn.sign_define('DiagnosticSignWarn', { text =  '⚠', texthl = 'DiagnosticSignWarn', numhl = 'DiagnosticSignWarn' })

require "lsp.lsp-installer"
require "lsp.cmp"
