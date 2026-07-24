return {
	{
		"Exafunction/windsurf.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"hrsh7th/nvim-cmp",
		},
		config = function()
			require("codeium").setup({
				bin_path = { "/home/jzahm/Desktop/" },
				wrapper = { "/home/jzahm/.nix-profile/bin/steam-run" },
			})
		end,
	},
}
