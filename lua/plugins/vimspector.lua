local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}

map('n', '<Leader>dd', ':call vimspector#Launch()<CR>', default_opts)
map('n', '<Leader>dR', ':call vimspector#Reset()<CR>', default_opts)
map('n', '<Leader>dc', ':call vimspector#Continue()<CR>', default_opts)

map('n', '<Leader>bt', ':call vimspector#ToggleBreakpoint()<CR>', default_opts)
map('n', '<Leader>bc', ':call vimspector#ClearBreakpoints()<CR>', default_opts)

map('n', '<Leader>dr', ':call vimspector#Restart()<CR>', default_opts)
map('n', '<Leader>dh', ':call vimspector#Into()<CR>', default_opts)
map('n', '<Leader>dk', ':call vimspector#Out()<CR>', default_opts)
map('n', '<Leader>dj', ':call vimspector#StepOver()<CR>', default_opts)
map('n', '<Leader>dl', ':call vimspector#StepInfo()<CR>', default_opts)
