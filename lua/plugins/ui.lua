-- Return an empty table if the plugin should not be loaded
-- stylua: ignore
if true then return {} end

return {
  {
    "echasnovski/mini.indentscope",
    opts = {
      options = {
        border = "top",
      },
    },
  },
}
