local lspconfig = require("lspconfig")

local servers = {
  html = {},
  awk_ls = {},
  bashls = {},               -- Note: lspconfig uses "bashls", not "bash-language-server"
  ruff = {},
  rust_analyzer = {},        -- Note: lspconfig uses "rust_analyzer", not "rust-analyzer"
  nil_ls = {},
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

-- Setup every server using binaries found natively in your Nix PATH
for name, opts in pairs(servers) do
  -- Merge your custom settings with standard lspconfig defaults
  lspconfig[name].setup(opts)
end
