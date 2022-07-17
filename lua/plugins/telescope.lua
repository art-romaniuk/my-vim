local telescope = require 'telescope'
local actions = require 'telescope.actions'
local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true } 


telescope.setup {
  defaults = {
    path_display = { truncate = 1 },
    prompt_prefix = '   ',
    selection_caret = '  ',
    layout_config = {
      prompt_position = 'top',
      preview_cutoff = 1,
    },
    sorting_strategy = 'ascending',
    mappings = {
      i = {
        ['<esc>'] = actions.close,
        ['<C-k>'] = actions.cycle_history_next,
        ['<C-j'] = actions.cycle_history_prev,
      },
    },
    file_ignore_patterns = { '.git/' },
  },
  pickers = {
    find_files = {
      hidden = true,
    },
    buffers = {
      previewer = false,
      layout_config = {
        width = 80,
      },
    },
    oldfiles = {
      prompt_title = 'History',
    },
    lsp_references = {
      previewer = false,
    },
  },
  extensions = {
    fzf = {
      fuzzy = true, -- false will only do exact matching
      override_generic_sorter = true, -- override the generic sorter
      override_file_sorter = true, -- override the file sorter
      case_mode = 'smart_case', -- or "ignore_case" or "respect_case"
      -- the default case_mode is "smart_case"
    },
  },
}

require('telescope').load_extension 'fzf'

map('n', '<leader>t', [[<cmd>lua require('telescope.builtin').find_files()<CR>]], default_opts)
map('n', '<leader>T', [[<cmd>lua require('telescope.builtin').find_files({ no_ignore = true, prompt_title = 'All Files' })<CR>]], default_opts) -- luacheck: no max line length
-- keymap('n', '<leader>r', [[<cmd>lua require('telescope.builtin').live_grep()<CR>]])
map('n', '<leader>.', [[<cmd>lua require('telescope.builtin').buffers()<CR>]], default_opts)
map('n', '<leader>/', [[<cmd>lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>]], default_opts)
map('n', '<leader>H', [[<cmd>lua require('telescope.builtin').oldfiles()<CR>]], default_opts)
