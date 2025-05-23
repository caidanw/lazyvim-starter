-- Return an empty table if the plugin should not be loaded
-- stylua: ignore
if true then return {} end

-- HTTP REST-Client Interface
return {
  "mistweaverco/kulala.nvim",
  config = function()
    -- Setup is required, even if you don't pass any options
    require("kulala").setup()
  end,
}
