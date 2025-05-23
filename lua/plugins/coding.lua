-- Return an empty table if the plugin should not be loaded
-- stylua: ignore
if true then return {} end

return {
  "hrsh7th/nvim-cmp",
  opts = function(_, opts)
    -- Remove the default <CR> mapping
    opts.mapping["<CR>"] = nil
  end,
}
