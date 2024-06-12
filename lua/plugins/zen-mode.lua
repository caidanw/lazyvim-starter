-- Calculate min width of the window should be 70% of the editor width or 120 columns
-- whichever is smaller
local function zen_mode_width()
  local width = vim.api.nvim_win_get_width(0)
  local min_width = math.max(width * 0.70, 120)
  return math.min(width, min_width)
end

return {
  "folke/zen-mode.nvim",
  keys = {
    { "<leader>uz", "<CMD>ZenMode<CR>", desc = "Toggle Zen Mode" },
  },
  opts = {
    window = {
      backdrop = 0.95, -- shade the backdrop of the Zen window. Set to 1 to keep the same as Normal
      -- height and width can be:
      -- * an absolute number of cells when > 1
      -- * a percentage of the width / height of the editor when <= 1
      -- * a function that returns the width or the height
      width = zen_mode_width(), -- width of the Zen window
      height = 1, -- height of the Zen window
    },
    plugins = {
      options = {
        enabled = true,
        ruler = false, -- disables the ruler text in the cmd line area
        showcmd = false, -- disables the command in the last line of the screen
        laststatus = 0, -- turn off the statusline in zen mode
      },
    },
  },
}
