return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" }, -- optional, for icons
  config = function()
    require("lualine").setup({
      options = {
        theme = "catppuccin", -- match your Catppuccin setup
        section_separators = { left = "", right = "" },
        component_separators = { left = "", right = "" },
        globalstatus = true, -- single statusline for all windows
      },
      sections = {
        lualine_a = { "mode" },           -- leftmost
        lualine_b = { "filename" },       -- after mode
        lualine_c = { "branch" },         -- after filename
        lualine_x = {
          {
            "diff",
            -- symbols = { added = " ", modified = " ", removed = " " },
          },
        },

        lualine_y = { "diagnostics" },    -- second from right
        lualine_z = { "location" },
      },
      extensions = { "quickfix", "fugitive", "nvim-tree", "toggleterm" },
    })
  end,
}
