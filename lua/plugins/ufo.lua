vim.wo.foldlevel = 99 -- feel free to decrease the value
vim.wo.foldenable = true

-- tell the sever the capability of foldingRange
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.foldingRange = {
    dynamicRegistration = false,
    lineFoldingOnly = true
}

require('ufo').setup()
