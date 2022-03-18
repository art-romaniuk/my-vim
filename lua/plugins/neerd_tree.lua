local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}

-- Open file location in NERDTree 
map('n', '<Leader><Leader>o', ':NERDTreeFind<CR>', default_opts)
map('n', '<Leader>o', ':NERDTreeFocus<CR>', default_opts)
map('', '<Leader>n', ':NERDTreeToggle<CR>', default_opts)

vim.g['NERDTreeShowHidden'] = true

