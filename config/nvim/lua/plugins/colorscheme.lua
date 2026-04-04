return {
  "folke/tokyonight.nvim",
  lazy = true,
  opts = {
    style = "moon",
    on_highlights = function(hl, _)
      hl.ColorColumn = { bg = "#2F334D" }
    end,
  },
}
