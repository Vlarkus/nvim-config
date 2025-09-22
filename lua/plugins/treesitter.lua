return {
  -- Treesitter
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = { "lua", "python", "typescript", "javascript", "bash", "c", "cpp", "html", "css", "json", "yaml" }, -- add what you need
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}
