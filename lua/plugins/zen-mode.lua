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
      width = 120, -- width of the Zen window
      height = 1,  -- height of the Zen window
    }
  }
}
