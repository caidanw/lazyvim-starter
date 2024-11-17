vim.g.tmux_navigator_disable_when_zoomed = 1

return {
  "christoomey/vim-tmux-navigator",
  enabled = false,
  cmd = {
    "TmuxNavigateLeft",
    "TmuxNavigateDown",
    "TmuxNavigateUp",
    "TmuxNavigateRight",
  },
  keys = {
    { "<C-h>", ":TmuxNavigateLeft<CR>" },
    { "<C-j>", ":TmuxNavigateDown<CR>" },
    { "<C-k>", ":TmuxNavigateUp<CR>" },
    { "<C-l>", ":TmuxNavigateRight<CR>" },
  },
}
