return {
  "chomosuke/typst-preview.nvim",
  ft = "typst",
  version = "1.*",
  opts = {
    -- open in Firefox explicitly
    open_cmd = "open -a Firefox %s",
    port = 0,             -- random free port
    follow_cursor = true, -- keep preview synced
  },
}
