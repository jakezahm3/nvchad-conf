require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "rust-analyzer", "ruff", "lua-language-server", "pyright", "texlab" }

vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp bash-language-server (keywords: bash, csh, ksh, sh, zsh)
