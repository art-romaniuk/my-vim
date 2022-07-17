-- Enable spelunker.vim. (default: 1)
-- 1: enable
-- 0: disable
vim.g.enable_spelunker_vim = 1

-- Create own custom autogroup to enable spelunker.vim for specific filetypes.
-- Setting for g:spelunker_check_type = 1:
-- " Setting for g:spelunker_check_type = 2:
vim.cmd([[
  augroup spelunker
    autocmd!
    autocmd BufWinEnter,BufWritePost *.vim,*.js,*.jsx,*.json,*.md,*.vue call spelunker#check()

    autocmd CursorHold *.vim,*.js,*.jsx,*.json,*.md,*.vue call spelunker#check_displayed_words()
  augroup END
]])

-- Override highlight group name of incorrectly spelled words. (default: 'SpelunkerSpellBad')
vim.g.spelunker_spell_bad_group = 'SpelunkerSpellBad'

-- Override highlight group name of complex or compound words. (default: 'SpelunkerComplexOrCompoundWord')
vim.g.spelunker_complex_or_compound_word_group = 'SpelunkerComplexOrCompoundWord'

-- Override highlight setting.
vim.cmd([[
  highlight SpelunkerSpellBad cterm=underline ctermfg=247 gui=underline guifg=#9e9e9e
  highlight SpelunkerComplexOrCompoundWord cterm=underline ctermfg=NONE gui=underline
]])

vim.opt.spell = false
