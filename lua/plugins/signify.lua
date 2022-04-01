local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}

map('n', '<leader>gd', ':SignifyDiff<cr>', default_opts)
map('n', '<leader>gp', ':SignifyHunkDiff<cr>', default_opts)

map('n', '<leader>gu', ':SignifyHunkUndo<cr>', default_opts)

-- Hunk jumping
map('n', '<leader>gj', '<plug>(signify-next-hunk)', default_opts)
map('n', '<leader>gk', '<plug>(signify-prev-hunk)', default_opts)

-- Hunk text object
map('o', 'ic', '<plug>(signify-motion-inner-pending)', default_opts)
map('x', 'ic', '<plug>(signify-motion-inner-visual)', default_opts)
map('o', 'ac', '<plug>(signify-motion-outer-pending)', default_opts)
map('x', 'ac', '<plug>(signify-motion-outer-visual)', default_opts)

