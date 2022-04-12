local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}

map('x', 'ga', '<Plug>(EasyAlign)', default_opts)
map('n', 'ga', '<Plug>(EasyAlign)', default_opts)
