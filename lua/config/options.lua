-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.number = true -- Show line numbers by default
vim.opt.relativenumber = true -- Enable relative line numbers, for help with jumping.
vim.opt.cursorline = true -- Show which line your cursor is on
vim.opt.scrolloff = 7 -- Minimal number of screen lines to keep above and below the cursor.

-- Sets how neovim will display certain whitespace in the editor.
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- LSP Server to use for Python.
vim.g.lazyvim_python_lsp = "pyright"
