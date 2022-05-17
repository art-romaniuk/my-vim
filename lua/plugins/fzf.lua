local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}
local g = vim.g

map('n', '<Leader>.', ':Buffers<CR>\'', default_opts)
map('n', '<Leader>t', ':Files<CR>\'', default_opts)
map('n', '<Leader>T', ':GitFiles?<CR>\'', default_opts)
-- map('n', '<Leader>r', ':Tags<CR>', default_opts)
-- Help finder
map('n', '<Leader>H', ':Helptags!<CR>', default_opts)
-- Fazzy search commands
map('n', '<Leader>C', ':Commands<CR>', default_opts)
-- Fazzy search history
map('n', '<Leader>:', ':History:<CR>\'', default_opts)
-- Fazzy search key mappings
map('n', '<Leader>M', ':Maps<CR>', default_opts)
-- Fazzy search filetype syntaxes
map('n', '<Leader>s', ':Filetypes<CR>', default_opts)

-- File path completion in Insert mode using fzf
map('i', '<c-x><c-k>', '<plug>(fzf-complete-word)', {})
map('i', '<c-x><c-f>', '<plug>(fzf-complete-path)', {})
map('i', '<c-x><c-l>', '<plug>(fzf-complete-buffer-line)', {})

-- Save search history
g.fzf_history_dir = '~/.local/share/fzf-history'

g.fzf_layout = { window = { width = 0.9, height = 0.9 } }

-- Allow passing an optional flags to the Rg command
-- Example: :Rg search_text -g '*.md'
vim.cmd([[
  command! -bang -nargs=* Rg
    \ call fzf#vim#grep(
    \   'rg --follow --column --line-number --no-heading --color=always --smart-case -- '.shellescape(<q-args>), 1,
    \   fzf#vim#with_preview(), <bang>0)

  command! -bang -nargs=? -complete=dir Buffers
      \ call fzf#vim#buffers(<q-args>, {'options': ['--layout=reverse', '--info=inline', '--no-preview']}, <bang>0)
]])
