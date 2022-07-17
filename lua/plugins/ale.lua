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

vim.g.ale_pattern_options = {
  ['.php'] = { ale_enabled = false },
}

vim.g["ale_fixers"] = {
    ["javascript"] = { "prettier", "eslint" },
    ["typescript"] = { "prettier", "tslint", "eslint" },
    ["typescriptreact"] = { "prettier", "tslint", "eslint" },
    ["html"] = { "eslint" },
    ["json"] = { "prettier", "fixjson", "jq" },
    ["scss"] = { "prettier", "stylelint" },
    ["css"] = { "prettier", "stylelint" },
    ["less"] = { "prettier", "stylelint" },
    ["stylus"] = { "stylelint" },
    ["c"] = { "clang-format" },
    ["cpp"] = { "clang-format" },
    ["rust"] = { "rustfmt" },
    ["python"] = { "autoimport", "isort", "black" },
    ["zsh"] = { "shfmt" },
    ["sh"] = { "shfmt" },
    ["go"] = { "gofmt", "goimports" },
    ["markdown"] = { "prettier" },
    ["vue"] = { "prettier" },
    ["yaml"] = { "prettier" },
    ["ansible"] = { "prettier" },
    ["puppet"] = { "puppetlint" },
    ["java"] = { "google_java_format" },
    ["lua"] = { "lua-format", "stylua" },
}
vim.g["ale_fix_on_save"] = 1
