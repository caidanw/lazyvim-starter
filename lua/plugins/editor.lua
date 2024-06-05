return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    -- Have neo-tree open to the right
    keys = {
      {
        "<leader>fe",
        function()
          require("neo-tree.command").execute({ toggle = true, dir = LazyVim.root(), position = "right" })
        end,
        desc = "Explorer NeoTree (Root Dir)",
      },
      {
        "<leader>fE",
        function()
          require("neo-tree.command").execute({ toggle = true, dir = vim.uv.cwd(), position = "right" })
        end,
        desc = "Explorer NeoTree (cwd)",
      },
    },
  }
}
