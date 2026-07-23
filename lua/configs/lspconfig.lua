local servers = {
  html = {},
  awk_ls = {},
  ["bash-language-server"] = {},
  ruff = {},
  ["rust-analyzer"] = {},
  stylua = {},
  nil_ls = {}, -- Note: 'nil' is a reserved keyword in Lua; the server name is usually 'nil_ls'
  pyright = {
    settings = {
      python = {
        analysis = {
          autoSearchPaths = true,
          typeCheckingMode = "basic",
        },
      },
    },
  },
}

-- Modern Neovim (v0.11+) approach to enable servers cleanly:
for name, opts in pairs(servers) do
  vim.lsp.config(name, opts)
end

vim.lsp.enable(vim.tbl_keys(servers))
