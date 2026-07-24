return {
	{
		"Exafunction/windsurf.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"hrsh7th/nvim-cmp",
		},
		config = function()
			require("codeium").setup({
				tools = {
					-- Satisfies the plugin's condition for an exact script path
					wrapper = vim.fn.expand("$HOME") .. "/.config/nvim/nix-wrapper.sh",
				},
			})
		end,
	},
}
