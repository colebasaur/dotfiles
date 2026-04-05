return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      sources = {
        explorer = {
          -- hidden = true, -- Show hidden files
          -- ignored = true, -- Show git ignored files
          matcher = {
            fuzzy = true,
          },
        },
        files = { -- Also configure the files source
          -- hidden = true,
          -- ignored = true,
        },
      },
      layout = {
        preset = "default", -- or "ivy", "dropdown"
        preview = "right", -- Move preview to the right
      },
    },
    dashboard = { enabled = false },
    zen = {
      toggles = {
        dim = false,
      },
    },
  },
}
