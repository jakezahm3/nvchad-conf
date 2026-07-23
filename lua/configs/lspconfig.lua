require("nvchad.configs.lspconfig").defaults()

local servers = { "html" = {}, 
                  "cssls" = {},
                  "rust-analyzer" = {}, 
                  "pyright" = {}, 
                  "lua-language-server" = {}, 
                  "nil" = {},  
                }

vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp bash-language-server (keywords: bash, csh, ksh, sh, zsh)
