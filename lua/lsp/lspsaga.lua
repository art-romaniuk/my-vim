local saga = require 'lspsaga'
local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}

saga.init_lsp_saga {
  error_sign = '▶︁',
  warn_sign = '▶︁',
  hint_sign = '▶︁',
  infor_sign = '▶︁',
  border_style = "round",
}

map('n', '<C-j>', ':Lspsaga diagnostic_jump_next<CR>', default_opts)
map('n', 'gh', ':Lspsaga lsp_finder<CR>', default_opts)
map('n', 'gp', ':Lspsaga preview_definition<CR>', default_opts)
