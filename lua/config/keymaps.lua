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

-- Disable `q` for macro recording as default
-- Set initial state for 'q'
vim.g.q_record_macro = false

-- Function to toggle 'q' functionality
function _G.toggle_q_macro()
  if vim.g.q_record_macro then
    -- If currently set for recording macros, make 'q' do nothing
    keymap("n", "q", "<NOP>", { noremap = true })
    vim.g.q_record_macro = false
    LazyVim.warn("Disabled Macro Recording", { title = "Option" })
  else
    -- If currently set to do nothing, make 'q' record macros
    keymap("n", "q", "q", { noremap = true })
    vim.g.q_record_macro = true
    LazyVim.info("Enabled Macro Recording", { title = "Option" })
  end
end

keymap("n", "<leader>uq", _G.toggle_q_macro, { noremap = true, silent = true, desc = "Toggle Macro Recording" })
keymap("n", "q", "<NOP>", { noremap = true })
