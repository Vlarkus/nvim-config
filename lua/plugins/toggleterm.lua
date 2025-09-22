return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({
      -- open/close with <C-\>
      open_mapping = [[<C-\>]],
      shade_terminals = true,
      direction = "float", -- "float" | "horizontal" | "vertical" | "tab"
    })
  end,
}

