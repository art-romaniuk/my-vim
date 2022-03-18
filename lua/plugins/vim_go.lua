vim.g.go_def_mode = 'gopls'
vim.g.go_info_mode = 'gopls'

-- Go syntax highlighting
vim.g.go_highlight_fields = 1
vim.g.go_highlight_functions = 1
vim.g.go_highlight_function_calls = 1
vim.g.go_highlight_extra_types = 1
vim.g.go_highlight_operators = 1

-- Run goimports along gofmt on each save     
vim.g.go_fmt_command = "goimports"
-- Automatically get signature/type info for object under cursor     
vim.g.go_auto_type_info = 1
