local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}

vim.cmd [[highlight NvimTreeIndentMarker guifg=#30323E]]

-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
    highlight_opened_files = "all",
    indent_markers = {
      enable = true,
    }
  },
  filters = {
    dotfiles = true,
  },
})

-- Open file location in NERDTree 
map('n', '<Leader><Leader>o', ':NvimTreeFindFile<CR>', default_opts)
map('n', '<Leader>o', ':NvimTreeFocus<CR>', default_opts)
map('', '<Leader>n', ':NvimTreeToggle<CR>', default_opts)
