return {
  -- Your existing plugins might be listed here...

  -- Add the Windsurf client here:
  {
    "Exafunction/codeium.vim",
    event = "BufReadPost",
    config = function()
      -- Force the plugin to run its server binary inside steam-run for NixOS
      vim.g.codeium_wrapper = "steam-run"
    end,
  },
}
