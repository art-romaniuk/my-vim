vim.cmd([[
    function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
        exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
        exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
    endfunction
]])

vim.cmd([[
    call NERDTreeHighlightFile('jade', 'green', 'none', 'green', 'NONE')
]])
vim.cmd([[
    call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', 'NONE')
    call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', 'NONE')
    call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', 'NONE')
    call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', 'NONE')
    call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', 'NONE')
    call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', 'NONE')
    call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', 'NONE')
    call NERDTreeHighlightFile('style', 'cyan', 'none', 'cyan', 'NONE')
    call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', 'NONE')
    call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', 'NONE')
    call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', 'NONE')
    call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', 'NONE')
]])

