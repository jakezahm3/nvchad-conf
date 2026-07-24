return {  -- Your other pre-existing NvChad starter plugins...
  {
    "Exafunction/windsurf.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "hrsh7th/nvim-cmp",
    },
    config = function()
      require("codeium").setup({
        -- This explicitly instructs the Lua plugin framework to boot 
        -- its server binary directly through your system's nix-ld wrapper script
        wrapper = "sh -c 'exec \"$@\"'"
      })
    end
  },
}
