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
					language_server = "/home/jzahm/language_server_linux_x64",
				},
			})
		end,
	},
}
