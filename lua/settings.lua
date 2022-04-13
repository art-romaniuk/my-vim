local cmd = vim.cmd
local opt = vim.opt -- like :set
local g = vim.g

-- Stark highlighting is enough to see the current match; don"t need the
-- centering, which can be annoying.
g.LoupeCenterResults = false

g.highlightedyank_highlight_duration = 200

-- Colorscheme
opt.cursorline = true

opt.encoding = "UTF-8"

-- Default shell for built in terminal
opt.shell = "/usr/local/bin/fish"

-- Colorscheme
-- autocmd vimenter * colorscheme gruvbox
-- autocmd vimenter * colorscheme palenight
-- autocmd vimenter * colorscheme onehalfdark
-- autocmd vimenter * colorscheme dracula
cmd("colorscheme onedark")
-- opt.background = dark

-- Display line numbers
opt.number = true

-- Auto load file if it was changed
opt.autoread = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

g.indentLine_char = '▏'

-- Make copy to clipboard
opt.clipboard = "unnamedplus"
opt.confirm = true

-- Enable mouse in normal and visual modes
opt.mouse = "nv"

opt.relativenumber = true

-- Be iMproved, required
opt.compatible = false
opt.timeoutlen=3000
opt.updatetime=100

-- Change the direction of new splits
opt.splitbelow = true
opt.splitright = true

-- Turn off .swp file creation
opt.swapfile = false

-- Use soft tab stop spaces instead of tab characters for indentation
opt.expandtab = true

-- Indent by 4 spaces when using >>, <<, == etc.
-- opt.shiftwidth = 4
-- Indent by 4 spaces when pressing <TAB>
-- opt.softtabstop = 4
-- Keep indentation from previous line
vim.o.autoindent = true
-- Automatically inserts indentation in some cases
vim.o.smartindent = true
-- Like smart indent, but stricter and more customisable
vim.o.cindent = true

-- Persist undo between sessions
opt.undofile = true

-- Width of wrapped texts
opt.tw = 120

-- Display a separate line at the end of columns
opt.termguicolors = true
opt.colorcolumn = ""

-- Search by using lower and upper case
opt.ignorecase = true
opt.smartcase = true


-- Search down into sub folders Provides tab-completion
opt.path = opt.path + ".,**"

-- Display all matching files when we tab complete
opt.wildmenu = true

-- Spell checking
opt.spelllang = "en"
opt.spellfile = os.getenv("HOME") .. "/.dotfiles/.vim/spell/en.utf-8.add"

-- Required
cmd("filetype off")

-- Disable automatic comment insertion
opt.formatoptions = { t = true, c = false, r = true, o = true }

-- The Fix for Slow Scrolling in VIM
-- opt.re=1
-- opt.lazyredraw
-- opt.ttyfast
opt.regexpengine = 1
-- opt.synmaxcol=200
-- syntax sync minlines=256

-- Break symbol
opt.showbreak = "⤥" 

-- Automatic, language-dependent indentation, syntax coloring and other
-- functionality.
-- cmd("filetype indent plugin on")
cmd("syntax on")


-- todo Not compoeted

-- Change cursor color
-- use an orange cursor in insert mode
-- let &t_SI .= "\<Esc>]12;white\x7"
-- -- use a red cursor otherwise
-- let &t_EI .= "\<Esc>]12;white\x7"
-- -- Use a blinking upright bar cursor in Insert mode, a blinking block in normal
-- let &t_SI .= "\<Esc>[5 q"
-- let &t_EI .= "\<Esc>[1 q"

-- -- Folding
-- if has("folding")
--     if has("windows")
--         let &fillchars="vert: "         -- less cluttered vertical window separators
--     endif
--     opt.foldmethod=indent               -- not as cool as syntax, but faster
--     opt.foldlevelstart=99               -- start unfolded
-- endif

-- if v:version > 703 || v:version == 703 && has("patch541")
--     opt.formatoptions+=j                -- remove comment leader when joining comment lines
-- endif

-- Auto save when lost a focus
vim.cmd([[
    au FocusLost * :wa
]])

-- Autorefresh file
vim.cmd([[
    au FocusGained * :checktime
]])

-- opt.cursor always white
vim.cmd([[
    highlight Cursor guifg=white guibg=white
    highlight iCursor guifg=white guibg=steelblue
    set guicursor=n-v-c:block-Cursor
    set guicursor+=i:ver100-iCursor
    set guicursor+=n-v-c:blinkon0
    set guicursor+=i:blinkwait10
]])

-- Add fzf to runtime path for execution
-- opt.rtp+=/Users/coffeeman/homebrew/opt/fzf

-- Redecalre style for hlsearch (it"s an old values)
-- autocmd VimEnter * hi Search guifg=#Cd3f45 guibg=green gui=underline,bold
vim.cmd([[
  autocmd VimEnter * hi Search gui=underline,bold guibg=peru
]])

-- -- JavaScript
g.javascript_plugin_flow = true

-- vim.cmd([[
  -- hi! VertSplit guifg=black guibg=black ctermfg=black ctermbg=black
-- ]])
