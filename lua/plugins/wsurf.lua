return {
  -- 1. Free AI Engine (Windsurf / Codeium)
  {
    "Exafunction/windsurf.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "hrsh7th/nvim-cmp", -- Ensures nvim-cmp loads first
    },
    config = function()
      -- The internal engine namespace remains 'codeium' 
      require("codeium").setup({
        -- Disable ghost text overlays so suggestions only show in your cmp popup
        enable_cmp_source = true,
        virtual_text = { enabled = false },
      })
    end,
  },
}
