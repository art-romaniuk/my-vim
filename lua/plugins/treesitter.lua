local configs = require'nvim-treesitter.configs'

configs.setup {
  -- One of "all", "maintained" (parsers with maintainers), or a list of languages
  ensure_installed = "maintained",

  -- Install languages synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- List of parsers to ignore installing
  ignore_install = {},

  highlight = {
    -- `false` will disable the whole extension
    enable = true,
  },
  indent = {
      enable = true,
  }
}

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
