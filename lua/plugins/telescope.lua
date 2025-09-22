return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8", -- use latest stable
  dependencies = {
    "nvim-lua/plenary.nvim", -- required
    {
      "nvim-telescope/telescope-fzf-native.nvim", -- optional, makes search faster
      build = "make",
      config = function()
        require("telescope").load_extension("fzf")
      end,
    },
  },
  config = function()
    local telescope = require("telescope")
    local builtin = require("telescope.builtin")

    telescope.setup({
      defaults = {
        sorting_strategy = "ascending",
        layout_config = { prompt_position = "top" },
        winblend = 0,
        path_display = { "smart" },
      },
    })
  end,
}

