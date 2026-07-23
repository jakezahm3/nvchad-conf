return {
  -- 1. Free AI Engine (Windsurf / Codeium)
  {
    "Exafunction/windsurf.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "hrsh7th/nvim-cmp",
    },
    config = function()
      require("codeium").setup({
        enable_cmp_source = true,
        virtual_text = { enabled = false }, -- Prevents duplicate ghost text
        
        -- Exact official configuration block for an external binary path
        tools = {
          language_server = "/home/jzahm/language_server_linux_x64",
        },
      })
    end,
  },

  -- 2. Modify NvChad's Built-in nvim-cmp Configuration inline
  {
    "hrsh7th/nvim-cmp",
    opts = function()
      local conf = require("nvchad.configs.cmp")
      table.insert(conf.sources, { name = "codeium", group_index = 2 })
      return conf
    end,
  },
}
