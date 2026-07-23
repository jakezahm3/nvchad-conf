return {
"WhoIsSethDaniel/mason-tool-installer.nvim",
  dependencies = { "williamboman/mason.nvim" },
  lazy = false,
  opts = {
    ensure_installed = {
      "lua-language-server",
      "stylua",
      "css-lsp",
      "pyright",
      "bash-language-server",
      "nil",
      "rust-analyzer",
      "prettierd",
      "jq",
      "alejandra",
    },
    auto_update = false,
    run_on_start = true,
  },
}
