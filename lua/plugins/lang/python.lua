if true then
  return {
    {
      "linux-cultist/venv-selector.nvim",
      cmd = "VenvSelect",
      branch = "regexp",
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
      keys = {
        { "<leader>cv", "<cmd>VenvSelect<cr>", desc = "Select VirtualEnv", ft = "python" },
      },
    },
  }
end

local lsp = "pyright"
local ruff = "ruff"

return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, { "ninja", "python", "rst", "toml" })
      end
    end,
  },
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      servers = {
        [lsp] = {
          enabled = true,
        },
        ---@type lspconfig.options.pyright
        pyright = {
          settings = {
            ---@diagnostic disable-next-line: missing-fields
            python = {
              ---@diagnostic disable-next-line: missing-fields
              analysis = {
                autoImportCompletions = true,
                autoSearchPaths = true,
                diagnosticMode = "openFilesOnly",
                typeCheckingMode = "basic",
                useLibraryCodeForTypes = true,
              },
            },
            pyright = {
              disableLanguageServices = false,
              disableOrganizeImports = true, -- Using Ruff
              disableTaggedHints = false,
            },
          },
        },
        [ruff] = {
          enabled = true,
          cmd_env = { RUFF_TRACE = "messages" },
          init_options = {
            settings = {
              logLevel = "error",
            },
          },
          keys = {
            {
              "<leader>co",
              function()
                vim.lsp.buf.code_action({
                  apply = true,
                  context = {
                    only = { "source.organizeImports" },
                    diagnostics = {},
                  },
                })
              end,
              desc = "Organize Imports",
            },
          },
        },
      },
      setup = {
        [ruff] = function()
          --- @param client vim.lsp.Client
          LazyVim.lsp.on_attach(function(client, _)
            if client.name == ruff then
              -- Disable hover in favor of Pyright
              client.server_capabilities.hoverProvider = false
            end
          end)
        end,
      },
    },
  },
  {
    "nvim-neotest/neotest",
    optional = true,
    dependencies = {
      "nvim-neotest/neotest-python",
    },
    opts = {
      adapters = {
        ["neotest-python"] = {
          -- Here you can specify the settings for the adapter, i.e.
          -- runner = "pytest",
          -- python = ".venv/bin/python",
        },
      },
    },
  },
  {
    "mfussenegger/nvim-dap",
    optional = true,
    dependencies = {
      "mfussenegger/nvim-dap-python",
      keys = {
        {
          "<leader>dPt",
          function()
            require("dap-python").test_method()
          end,
          desc = "Debug Method",
          ft = "python",
        },
        {
          "<leader>dPc",
          function()
            require("dap-python").test_class()
          end,
          desc = "Debug Class",
          ft = "python",
        },
      },
      config = function()
        local path = require("mason-registry").get_package("debugpy"):get_install_path()
        require("dap-python").setup(path .. "/venv/bin/python")
      end,
    },
  },
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      opts.auto_brackets = opts.auto_brackets or {}
      table.insert(opts.auto_brackets, "python")
    end,
  },
}
