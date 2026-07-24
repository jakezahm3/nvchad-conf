local cmp = require("cmp")
local conf = require("nvchad.configs.cmp")

-- Insert codeium at the top of the existing sources list
table.insert(conf.sources, 1, { name = "codeium" })

cmp.setup(conf)
