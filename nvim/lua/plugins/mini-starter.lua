return {
  "echasnovski/mini.starter",
  version = false, -- wait till new 0.7.0 release to put it back on semver
  event = "VimEnter",
  opts = function()
    local logo = table.concat({
      "  ██╗   ██╗ █████╗ ██╗   ██╗██╗   ██╗██████╗██████╗  ██████╗ ██╗ █████╗ ███╗  ██╗  ",
      "  ╚██╗ ██╔╝██╔══██╗██║   ██║██║   ██║██╔═══╝██╔══██╗██╔════╝ ██║██╔══██╗████╗ ██║  ",
      "   ╚████╔╝ ██║  ██║██║   ██║██║   ██║█████╗ ██████╔╝╚██████╗ ██║██║  ██║██╔██╗██║  ",
      "    ╚██╔╝  ██║  ██║██║   ██║╚██╗ ██╔╝██╔══╝ ██╔══██╗ ╚════██╗██║██║  ██║██║╚████║  ",
      "     ██║   ╚█████╔╝╚██████╔╝ ╚████╔╝ ██████╗██║  ██║ ██████╔╝██║╚█████╔╝██║ ╚███║  ",
      "     ╚═╝    ╚════╝  ╚═════╝   ╚═══╝  ╚═════╝╚═╝  ╚═╝ ╚═════╝ ╚═╝ ╚════╝ ╚═╝  ╚══╝  ",
      "                                                                                   ",
      "                                                                                   ",
      "                                                                                   ",
      "                                                                                   ",
    }, "\n")
    local pad = string.rep(" ", 19)
    local new_section = function(name, action, section)
      return { name = name, action = action, section = pad .. section }
    end

    local starter = require("mini.starter")
    --stylua: ignore
    local config = {
      evaluate_single = true,
      header = logo,
      items = {
        new_section("", "", "God's Word. Everyone, Everywhere, Everyday.")
      },
      content_hooks = {
        -- starter.gen_hook.adding_bullet(pad .. "░ ", false),
        starter.gen_hook.aligning("center", "center"),
      },
    }
    return config
  end,
  config = function(_, config)
    -- close Lazy and re-open when starter is ready
    if vim.o.filetype == "lazy" then
      vim.cmd.close()
      vim.api.nvim_create_autocmd("User", {
        pattern = "MiniStarterOpened",
        callback = function()
          require("lazy").show()
        end,
      })
    end

    local starter = require("mini.starter")
    starter.setup(config)

    vim.api.nvim_create_autocmd("User", {
      pattern = "LazyVimStarted",
      callback = function()
        local pad_footer = string.rep(" ", 36)
        starter.config.footer = "\n\n\n" .. pad_footer .. "#billions"
        pcall(starter.refresh)
      end,
    })
  end,
}
