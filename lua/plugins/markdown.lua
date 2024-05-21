return {
  {
    -- This plugin causes issues by using a very new unicode character
    -- See: https://github.com/neovide/neovide/issues/2536#issuecomment-2106127919
    "lukas-reineke/headlines.nvim",
    enabled = false,
  },
  {
    "MeanderingProgrammer/markdown.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    ft = "markdown",
    opts = {
      -- Configure whether Markdown should be rendered by default or not
      start_enabled = false,
      -- Maximum file size (in MB) that this plugin will attempt to render
      -- Any file larger than this will effectively be ignored
      max_file_size = 1.5,
    },
    keys = {
      { "<leader>cP", "<cmd>RenderMarkdownToggle<cr>", desc = "Render Markdown", ft = "markdown" },
    },
  },
}
