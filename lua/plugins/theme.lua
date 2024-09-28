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
    priority = 1000,
    opts = {
      bold_keywords = false,
      bright_border = false,
      cursorline = {
        theme = "light",
        -- blend = 1.5,
      },
      telescope = {
        style = "classic",
      },
      after_palette = function(palette)
        -- Fix the border colors from being too dark
        palette.border_fg = palette.grey5
        palette.fg_float_border = palette.grey5
        palette.fg_popup_border = palette.grey5
      end,
    },
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
