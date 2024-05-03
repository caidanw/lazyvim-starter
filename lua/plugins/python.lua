return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = {
          enabled = true,
        },
        ruff = {
          enabled = true,
        },
      },
    },
  },
}
