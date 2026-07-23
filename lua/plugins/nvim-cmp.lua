return { 
{
    "hrsh7th/nvim-cmp",
    opts = function()
      -- 1. Grab NvChad's default base cmp configuration
      local conf = require("nvchad.configs.cmp")
      
      -- 2. Inject Codeium into the sources table safely
      table.insert(conf.sources, { name = "codeium", group_index = 2 })
      
      -- 3. Pass the modified table back to the engine
      return conf
    end,
  },
}
