local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}

map('n', '<Leader>u', ':MundoToggle<CR>', default_opts)

