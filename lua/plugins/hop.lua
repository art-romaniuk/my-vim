require('hop').setup()

local opts = { noremap = true, silent = true }

vim.keymap.set("n", "f", function()
	vim.cmd([[:HopChar1]])
end, opts)

vim.keymap.set("n", "l", function()
	vim.cmd([[:HopLineStart]])
end, opts)

vim.keymap.set("n", ";", function()
	vim.cmd([[:HopWord]])
end, opts)
