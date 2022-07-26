local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}

--  Set leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = "\\"

-- Jump to definition
map('n', '<Leader>]', '<C-]>', default_opts)

--  Unhighlight search
map('n', '<Leader>S' ,':nohlsearch<CR>', default_opts)
-- nnoremap <Leader>S :nohlsearch<Bar>:echo<CR>

-- Folding
-- todo make correct mapping
map('n', '<Leader><Leader>f', 'zM<CR>', default_opts)
map('n', '<Leader><Leader>r', 'zR<CR>', default_opts)

--  Rg search
-- map('n', '<Leader>/', ':Rg<CR>\'', default_opts)
map('n', '<Leader><Leader>/', ':Ag<CR>\'', default_opts)

--  Splits movements
map('n', '<C-J>', '<C-W><C-J>', default_opts)
map('n', '<C-K>', '<C-W><C-K>', default_opts)
map('n', '<C-L>', '<C-W><C-L>', default_opts)
map('n', '<C-H>', '<C-W><C-H>', default_opts)

-- Keep cursor on the middle of the screen when go to the next search item
map('n', 'n', 'nzzzv', default_opts)
map('n', 'N', 'Nzzzv', default_opts)
map('n', 'J', 'mzJ`z', default_opts)

-- Keep cursor on the middle of the screen when go to the specific line
map('n', 'gg', 'ggzz', default_opts)

-- Yank to the end
map('n', 'Y', 'y$', default_opts)

-- Resize the split window
map('n', '<C-S-Left>', ':vertical resize +10<CR>', default_opts)
map('n', '<C-S-Right>', ':vertical resize -10<CR>', default_opts)
map('n', '<C-S-Up>', ':resize +10<CR>', default_opts)
map('n', '<C-S-Down>', ':resize -10<CR>', default_opts)

--  Copy paste form PRIMARY and CLIPBOARD
map('n', '<Leader>y', '"*y', default_opts)
map('n', '<Leader>p', '"*p', default_opts)
map('n', '<Leader>Y', '"+y', default_opts)
map('n', '<Leader>P', '"+p', default_opts)

map('n', 'cp', ':let @+ = expand("%")<CR>', default_opts)

--  Change preview size
-- nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
-- nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>

--  Open .vimrc in new tab
map('n', '<Leader>v', ':tabedit $MYVIMRC<CR>', default_opts)

--  Line editing (add empty line above and bellow)
map('n', 'zk', 'O<ESC>j', default_opts)
map('n', 'zj', 'o<ESC>k', default_opts)

map('n', '<Leader>q', ':q<CR>', default_opts)
map('n', '<Leader><Leader>q', ':qall!<CR>', default_opts)
map('n',' <Leader><Leader>w', ':wa<CR>', default_opts)

-- todo Find out this map responsibility
-- map('n', 'j', 'j:redraw<CR>', default_opts)
-- map('n', 'k', 'k:redraw<CR>', default_opts)

-- Save sesson to file
map('n', '<Leader><C-s>', ':mks! ~/.dotfiles/.vim/session/sess.vim<CR>', default_opts)
-- Restore sesion from file
map('n', '<Leader><C-r>', ':so ~/.dotfiles/.vim/session/sess.vim<CR>', default_opts)

-- """""""""""""""""""""""""""""""""""""""""""
--                Vim php-namespace          "
-- """""""""""""""""""""""""""""""""""""""""""
--  Then, hitting `\u` in normal or insert mode will import the class or function under the cursor.
-- function! IPhpInsertUse()
--     call PhpInsertUse()
--     call feedkeys('a',  'n')
-- endfunction
-- autocmd FileType php "noremap" <Leader>i :call PhpInsertUse()<CR>

-- autocmd FileType php noremap <Leader><Leader>s :call PhpSortUse()<CR>
-- noremap <Leader>i :call PhpInsertUse()<CR>

--  Search word under cursor
map('n', '<Leader>d', ':call fzf#vim#tags(expand(\'<cword>\'), {\'options\': \'--exact --select-1 --exit-0\'})<CR>', default_opts)
-- nnoremap <leader>d :call fzf#vim#tags(expand('<cword>'), {'options': '--exact --select-1 --exit-0'})<CR>

-- Surround by quotes - frequently use cases of vim-surround
map('', '<Leader>"', 'ysiw"<CR>', default_opts)
map('', '<Leader>\'', 'ysiw\'<CR>', default_opts)

-- Emulate commands combinations ci' and di' using cq and dq.
-- onoremap q i'
-- onoremap Q i"

--  Re-save file sith sudo
map('c', 'w!!', 'execute \'silent! write !sudo tee % >/dev/null\' <bar> edit!', default_opts)

--  Open terminal
map('n', '<Leader><Leader>t', ':vsplit term://fish<CR>', default_opts)
