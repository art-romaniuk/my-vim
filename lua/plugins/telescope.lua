local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}
local g = vim.g

map('n', '<Leader>.', ':Buffers<CR>\'', default_opts)
require('telescope').setup({
    defaults = {
        layout_config = {
            vertical = { width = 0.8 }
            -- other layout configuration here
        },
        -- other defaults configuration here
    },
    -- pickers = {
    --   find_files = {
    --     theme = "dropdown",
    --   }
    -- }
})

map('n', '<Leader>.', ':Telescope buffers<CR>', default_opts)
map('n', '<Leader>t', ':Telescope find_files<CR>', default_opts)
map('n', '<Leader>T', ':Telescope git_files<CR>', default_opts)
map('n', '<Leader>H', ':Telescope help_tags<CR>', default_opts)
map('n', '<Leader>/', ':Telescope live_grep<CR>', default_opts)
