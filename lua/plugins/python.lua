return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = {
          enabled = true,
        },
        ruff_lsp = {
          enabled = true,
        },
      },
    },
  },
}
