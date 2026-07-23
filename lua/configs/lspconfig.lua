require("nvchad.configs.lspconfig").defaults()

local servers = {
  html = {},
  awk_ls = {},
  bashls = {},               -- Note: lspconfig uses "bashls", not "bash-language-server"
  ruff = {},
  rust_analyzer = {},        -- Note: lspconfig uses "rust_analyzer", not "rust-analyzer"
  nil_ls = {},
  yaml_ls = {},
  spectral = {},
  pyright = {},
},
-- Setup every server using binaries found natively in your Nix PATH
vim.lsp.enable(servers)

