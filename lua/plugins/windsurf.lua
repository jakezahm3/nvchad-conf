return {
	{
		"Exafunction/windsurf.nvim",
		-- Lazy-loads on entering a buffer to ensure NvChad's environment variables settle
		event = "BufEnter",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"hrsh7th/nvim-cmp",
		},
		config = function()
			require("codeium").setup({
				-- Corrected: wrapper sits cleanly at the top level of the setup table
				wrapper = "steam-run",
			})
		end,
	},
}
