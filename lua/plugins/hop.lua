require('hop').setup()

local opts = { noremap = true, silent = true }

vim.keymap.set("n", "<Leader>f", function()
	vim.cmd([[:HopChar1]])
end, opts)

vim.keymap.set("n", "<Leader>l", function()
	vim.cmd([[:HopLineStart]])
end, opts)

vim.keymap.set("n", "<Leader>;", function()
	vim.cmd([[:HopWord]])
end, opts)
