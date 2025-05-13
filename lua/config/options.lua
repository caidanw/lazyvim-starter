-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.number = true -- Show line numbers by default
vim.opt.relativenumber = true -- Enable relative line numbers, for help with jumping.
vim.opt.cursorline = true -- Show which line your cursor is on
vim.opt.scrolloff = 7 -- Minimal number of screen lines to keep above and below the cursor.
vim.opt.wrap = true -- Disable line wrap

vim.opt.expandtab = false -- Use tabs instead of spaces
vim.opt.shiftwidth = 4 -- Size of an indent
vim.opt.tabstop = 4 -- Number of spaces tabs count for
vim.opt.smarttab = true -- Use shiftwidths at left margin, tabstops everywhere else
vim.opt.shiftround = true -- Round indent to multiple of shiftwidth

vim.opt.conceallevel = 0 -- Set conceal level to 0

-- Sets how neovim will display certain whitespace in the editor.
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

vim.opt.pumblend = 0 -- Disable popup menu transparency
