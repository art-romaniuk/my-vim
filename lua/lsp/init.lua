local ok, _ = pcall(require, "lspconfig")
if not ok then
    return
end

require "lsp.lsp-installer"
-- require("lsp.lsp-handlers").setup()
