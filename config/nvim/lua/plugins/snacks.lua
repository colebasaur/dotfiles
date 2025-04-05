return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      sources = {
        explorer = {
          hidden = true, -- Show hidden files
          ignored = true, -- Show git ignored files
        },
        files = { -- Also configure the files source
          hidden = true,
          ignored = true,
        },
      },
    },
    zen = {
      toggles = {
        dim = false,
      },
    },
  },
}
