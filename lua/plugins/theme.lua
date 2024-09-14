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
