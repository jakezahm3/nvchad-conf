return {
  -- 1. Free AI Engine (Windsurf / Codeium)
  {
    "Exafunction/windsurf.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("codeium").setup({
        enable_cmp_source = true,
        virtual_text = { enabled = false },
        tools = {
          language_server = "/home/jzahm/language_server_linux_x64",
        },
      })
    end,
  },

  -- 2. Icon Companion Plugin (Required for your lspkind styling)
  {
    "onsails/lspkind.nvim",
  },

  -- 3. The nvim-cmp intercept block
  {
    "hrsh7th/nvim-cmp",
    opts = function()
      return require("configs.cmp")
    end,
  },
}
