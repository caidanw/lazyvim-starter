return {
  {
    "folke/tokyonight.nvim",
    priority = 1000,
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
    config = function()
      require("nordic").load()
    end,
  },
  -- Configure LazyVim to load the selected theme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
}
