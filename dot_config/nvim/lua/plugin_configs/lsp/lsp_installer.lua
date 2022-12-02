-- lsp_installer
require("mason").setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗"
    }
  }
})

require("mason-lspconfig").setup()


-- Set up lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities()
-- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
--
require('lspconfig').pyright.setup {
  capabilities = capabilities
}

require('lspconfig').terraformls.setup {
  capabilities = capabilities
}

require('lspconfig').tflint.setup {
  capabilities = capabilities
}

require'lspconfig'.sumneko_lua.setup {
  capabilities = capabilities
}
