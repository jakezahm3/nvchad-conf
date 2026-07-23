local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    python = { "black" },
    rust = { "rustywind" },
    nix = { "alejandra" },
    bash = { "beautysh" },
     javascript = { "prettierd" },
     json = { "jq" },
     yaml = { "prettierd" },
     css = { "prettier" },
     html = { "prettier" },
  },

     format_on_save = {
     -- These options will be passed to conform.format()
     timeout_ms = 500,
     lsp_fallback = true,
   },
}

return options
