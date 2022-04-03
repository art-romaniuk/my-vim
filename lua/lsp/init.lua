local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}

local ok, _ = pcall(require, "lspconfig")
if not ok then
    return
end

map('', '<silent>', 'gd',  '<cmd>lua vim.lsp.buf.definition()<CR>', default_opts)
map('', '<silent>', '<C-]> <cmd>lua vim.lsp.buf.definition()<CR>', default_opts)
map('', '<silent>', 'gD    <cmd>lua vim.lsp.buf.declaration()<CR>', default_opts)
map('', '<silent>', 'gr    <cmd>lua vim.lsp.buf.references()<CR>', default_opts)
map('', '<silent>', 'gi    <cmd>lua vim.lsp.buf.implementation()<CR>', default_opts)
map('', '<silent>', 'K     <cmd>Lspsaga hover_doc<CR>', default_opts)
map('', '<silent>', '<C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>', default_opts)
map('', '<silent>', '<C-p> <cmd>Lspsaga diagnostic_jump_prev<CR>', default_opts)
map('', '<silent>', '<C-n> <cmd>Lspsaga diagnostic_jump_next<CR>', default_opts)
map('', '<silent>', 'gf    <cmd>lua vim.lsp.buf.formatting()<CR>', default_opts)
map('', '<silent>', 'gn    <cmd>lua vim.lsp.buf.rename()<CR>', default_opts)
map('', '<silent>', 'ga    <cmd>Lspsaga code_action<CR>', default_opts)
map('', '<silent>', 'ga    <cmd>Lspsaga range_code_action<CR>', default_opts)
map('', '<silent>', 'gs    <cmd>Lspsaga signature_help<CR>', default_opts)

require "lsp.lsp-installer"
require "lsp.cmp"
