local ruff = "ruff"

-- LSP Server to use for Python.
vim.g.lazyvim_python_lsp = "pyright"
vim.g.lazyvim_python_ruff = ruff

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = {
          enabled = true,
        },
        [ruff] = {
          enabled = true,
        },
      },
    },
  },
  {
    "linux-cultist/venv-selector.nvim",
    cmd = "VenvSelect",
    ft = "python",
    opts = function(_, opts)
      if LazyVim.has("nvim-dap-python") then
        opts.dap_enabled = true
      end
      return vim.tbl_deep_extend("force", opts, {
        name = {
          "venv",
          ".venv",
          "env",
          ".env",
          ".direnv",
        },
      })
    end,
    keys = function()
      return {
        { "<leader>cv", "<cmd>:VenvSelect<cr>", desc = "Select VirtualEnv", ft = "python" },
      }
    end,
  },
}
