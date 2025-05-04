return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      -- pyright will be automatically installed with mason and loaded with lspconfig
      pyright = {},
      dartls = {},
      tailwindcss = {
        filetypes = { "html", "javascript", "typescript" },
        settings = {
          experimental = {
            classRegex = {
              'class="([^"]*)',
              'className="([^"]*)',
              'class: "([^"]*)',
            },
          },
        },
      },
    },
  },
}
