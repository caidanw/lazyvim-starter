-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap.set

-- Keep cursor in vertical center when jumping around
keymap("n", "<c-d>", "<c-d>zz")
keymap("n", "<C-u>", "<C-u>zz")

-- Delete selection into void register, then paste
keymap("x", "<leader>p", [["_dP]])

-- Disable repeating last recorded register n times
keymap("n", "Q", "<NOP>")
