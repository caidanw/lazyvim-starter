-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

---Determine the filetype for Jinja templates
---@param path string: The path to the file
---@param bufnr number: The buffer number
---@param filename string: The name of the file
---@return string: The determined filetype
local function ft_jinja(path, bufnr, filename)
  local ft, _ = vim.filetype.match({ buf = bufnr, filename = filename })
  if not ft then
    return "jinja"
  end
  if ft == "yaml" then
    return "jinja.yaml"
  end
  return ft .. ".jinja"
end

vim.filetype.add({
  filename = {
    ["nginx.conf"] = "nginx",
  },
  pattern = {
    -- INFO: Match filenames like - ".env.example", ".env.local" and so on
    ["%.env%.[%w_.-]+"] = "dotenv",
    ["(.*)%.jinja"] = ft_jinja,
    ["(.*)%.jinja2"] = ft_jinja,
    ["(.*)%.j2"] = ft_jinja,
  },
  extension = {
    -- jinja = "jinja",
    -- jinja2 = "jinja",
    -- j2 = "jinja",
    -- env = "dotenv",
  },
})
