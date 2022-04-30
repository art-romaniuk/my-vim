local let = vim.g

vim.cmd([[
    let g:ale_sign_error = '✗'
    let g:ale_sign_warning = '⚠'
    let g:ale_sign_style_error = '✗'
    let g:ale_sign_style_warning = '⚠'
    let g:ale_sign_info = 'ℹ'
    let g:ale_floating_window_border = ['│', '─', '╭', '╮', '╯', '╰']

    highlight link ALEWarning       Normal
    highlight link ALEWarningSign      Search
]])
