
return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  opts = {
    flavour = "mocha",
    integrations = {
      telescope = true,
      treesitter = true,
      lsp_trouble = true,
      cmp = true,
      gitsigns = true,
      which_key = true,
    },
  },
}
