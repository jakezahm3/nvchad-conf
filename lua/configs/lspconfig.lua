--- Define the NvChad LSP configuration module locally
local M = {}

-- Keymaps to apply when an LSP attaches to a file buffer
M.on_attach = function(_, bufnr)
  local function map(mode, l, r, desc)
    vim.keymap.set(mode, l, r, { buffer = bufnr, desc = "LSP " .. desc })
  end

  -- Your requested block mappings
  map("n", "<leader>wl", function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, "List workspace folders")

  map("n", "<leader>D", vim.lsp.buf.type_definition, "Go to type definition")
  map("n", "<leader>ra", require("nvchad.lsp.renamer"), "NvRenamer")
  
  -- Feel free to add traditional NvChad mappings here if you need them:
  map("n", "gD", vim.lsp.buf.declaration, "Go to declaration")
  map("n", "gd", vim.lsp.buf.definition, "Go to definition")
  map("n", "K", vim.lsp.buf.hover, "hover")
  map("n", "gi", vim.lsp.buf.implementation, "Go to implementation")
  map("n", "gr", vim.lsp.buf.references, "Go to references")
end

-- Disable semantic tokens (highly recommended to maintain performance)
M.on_init = function(client, _)
  if vim.fn.has "nvim-0.11" ~= 1 then
    if client.supports_method "textDocument/semanticTokens" then
      client.server_capabilities.semanticTokensProvider = nil
    end
  else
    if client:supports_method "textDocument/semanticTokens" then
      client.server_capabilities.semanticTokensProvider = nil
    end
  end
end

-- Modern capabilities configurations for auto-completion (Blink/Cmp)
M.capabilities = vim.lsp.protocol.make_client_capabilities()
M.capabilities.textDocument.completion.completionItem = {
  documentationFormat = { "markdown", "plaintext" },
  snippetSupport = true,
  preselectSupport = true,
  insertReplaceSupport = true,
  labelDetailsSupport = true,
  deprecatedSupport = true,
  commitCharactersSupport = true,
  tagSupport = { valueSet = { 1 } },
  resolveSupport = {
    properties = { "documentation", "detail", "additionalTextEdits" },
  },
}

-- Apply the UI themes and kick off the servers
dofile(vim.g.base46_cache .. "lsp")
require("nvchad.lsp").diagnostic_config()

-- Listen globally for servers attaching to load your custom maps
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    M.on_attach(_, args.buf)
  end,
})

-- Apply global configurations to ALL servers natively
vim.lsp.config("*", { capabilities = M.capabilities, on_init = M.on_init })

-- Configure lua_ls specifically (needed for NvChad system APIs)
local lua_lsp_settings = {
  Lua = {
    runtime = { version = "LuaJIT" },
    workspace = {
      library = {
        vim.fn.expand "$VIMRUNTIME/lua",
        vim.fn.stdpath "data" .. "/lazy/ui/nvchad_types",
        vim.fn.stdpath "data" .. "/lazy/lazy.nvim/lua/lazy",
        "${3rd}/luv/library",
      },
    },
  },
}
vim.lsp.config("lua_ls", { settings = lua_lsp_settings })


-- YOUR NIX SERVERS LIST
local servers = {
  "lua_ls", -- added here since we configure it above
  "html",
  "awk_ls",
  "bashls",
  "ruff",
  "rust_analyzer",
  "nil_ls",
  "yaml_ls",
  "spectral",
  "pyright",
}

-- Enable every single server globally and cleanly
vim.lsp.enable(servers)

return M
