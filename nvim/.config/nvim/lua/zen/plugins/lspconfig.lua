return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    require("mason").setup()
    require("mason-lspconfig").setup()
    require("mason-lspconfig").setup_handlers {
        function(server)
            local capabilities = require('cmp_nvim_lsp').default_capabilities()
            require("lspconfig")[server].setup {
                capabilities = capabilities
            }
        end
    }
  end
}
