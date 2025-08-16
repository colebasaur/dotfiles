-- plugins/bible.lua
return {
  {
    "bible.nvim",
    dir = "/Users/coletroutman/code/other/bible.nvim",
    name = "bible.nvim",
    config = function()
      require("bible").setup({
        data_path = "/Users/coletroutman/code/lifechurch/youversion/apis/systems/bible/bitk/esv.json",
      })
    end,
    cmd = "Bible",
    keys = {
      {
        "<leader>bb",
        function()
          vim.ui.input({ prompt = "Enter reference (e.g., JHN 3 16): " }, function(input)
            if input then
              vim.cmd("Bible " .. input)
            end
          end)
        end,
        desc = "Open Bible",
      },
    },
  },
}
