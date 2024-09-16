return {
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = {
      style = "moon",
    },
  },
  {
    "catppuccin/nvim",
    lazy = true,
    name = "catppuccin",
    opts = {
      flavour = "auto",
      background = {
        dark = "frappe",
        light = "latte",
      },
      transparent_background = false,
    },
  },
  {
    "rebelot/kanagawa.nvim",
    lazy = true,
  },
  {
    "AlexvZyl/nordic.nvim",
    lazy = true,
    priority = 1000,
    opts = function()
      local C = require("nordic.colors")
      local U = require("nordic.utils")

      return {
        override = {
          PmenuSel = { bg = U.blend(C.gray2, C.black0, 0.8) },
        },
        bold_keywords = false,
        transparent_background = false,
        bright_border = false,
        cursorline = {
          theme = "light",
          blend = 1.5,
        },
        telescope = {
          style = "classic",
        },
      }
    end,
  },
  {
    "srcery-colors/srcery-vim",
    name = "srcery",
    lazy = true,
  },
  {
    "EdenEast/nightfox.nvim",
    lazy = true,
  },
  -- Configure LazyVim to load the selected theme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "nordic",
    },
  },
}
