local map = vim.keymap.set

local check_back_space = function()
  local col = vim.fn.col('.') - 1
  return not col or vim.fn.getline('.')[col] ~= '\\s'
end

-- coc code completion with TAB key
map('n', 'gd', '<Plug>(coc-definition)')
map('n', 'gy', '<Plug>(coc-type-definition)')
map('n', 'gi', '<Plug>(coc-implementation)')
map('n', 'gr', '<Plug>(coc-references)')
map('n', 'gu', '<Plug>(coc-references-used)')
map('n', 'ga', '<Plug>(coc-codeaction-line)')
map('x', 'ga', '<Plug>(coc-codeaction-line)')
map('n', '<space><space>r', '<Plug>(coc-rename)')
-- map('n', '<C-;>', '<Plug>(coc-codeaction)')
map('n', '<space><space>a', '<Plug>(coc-codeaction)')

vim.cmd([[
  function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
  endfunction
    inoremap <silent><expr> <TAB>
        \ coc#pum#visible() ? coc#_select_confirm():
        \ <SID>check_back_space() ? "\<Tab>" :
        \ coc#refresh()
  nnoremap <silent> K :call <SID>show_documentation()<CR>
  function! s:show_documentation()
    if CocAction('hasProvider', 'hover')
      call CocActionAsync('doHover')
    else
      call feedkeys('K', 'in')
    endif
  endfunction
]])
