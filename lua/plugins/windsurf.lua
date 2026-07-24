return {
	{
		"Exafunction/windsurf.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"saghen/blink.cmp",
		},
		config = function()
			require("codeium").setup({
				tools = {
					uuidgen = "/run/current-system/sw/bin/uuidgen",
					gzip = "/run/current-system/sw/bin/gzip",
					uname = "/run/current-system/sw/bin/uname",
					curl = "/run/current-system/sw/bin/curl",
					language_server = "/home/jzahm/language_server_linux_x64",
				},
			})
		end,
	},
}
