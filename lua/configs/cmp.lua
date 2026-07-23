-- 1. Fetch NvChad's default configuration options table
local options = require("nvchad.configs.cmp")

-- 2. Safely inject your Codeium source into NvChad's list
table.insert(options.sources, { name = "codeium", group_index = 2 })

-- 3. Inject your custom lspkind icon formatting
options.formatting = {
  format = require("lspkind").cmp_format({
    mode = "symbol",
    maxwidth = 50,
    ellipsis_char = "...",
    symbol_map = { Codeium = "" },
  }),
}

-- 4. Pass the modified table back to NvChad
return options

