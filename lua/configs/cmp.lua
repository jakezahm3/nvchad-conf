-- Fetch NvChad's default configuration options table
local options = require("nvchad.configs.cmp")

-- Safely inject your Codeium source into NvChad's active list
table.insert(options.sources, { name = "codeium", group_index = 2 })

-- Apply your custom lspkind icon formatting layout
options.formatting = {
  format = require("lspkind").cmp_format({
    mode = "symbol",
    maxwidth = 50,
    ellipsis_char = "...",
    symbol_map = { Codeium = "" },
  }),
}

-- Return the unified table so Lazy.nvim incorporates it seamlessly
return options
