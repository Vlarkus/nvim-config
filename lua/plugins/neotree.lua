return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- optional
    "MunifTanjim/nui.nvim",
  },
  lazy = false, -- load immediately, or remove if you want lazy load
  config = function()
    require("neo-tree").setup({
      window = {
        mappings = {
          ["l"]  = "open",
          ["h"]  = "close_node",
          ["H"]  = "navigate_up",
          ["<cr>"] = "noop",
        },
      },
    })
  end,
}
