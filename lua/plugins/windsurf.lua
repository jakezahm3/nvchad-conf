return {
	{
		"Exafunction/codeium.nvim", -- Changed from windsurf.nvim
		-- Lazy-loads on entering a buffer to ensure NvChad's environment variables settle
		event = "BufEnter",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"hrsh7th/nvim-cmp",
		},
		config = function()
			require("codeium").setup({
				-- Keeps your NixOS compatibility working perfectly
				wrapper = "steam-run",
				tools = {
					language_server = "/home/jzahm/language_server_linux_x64",
				},
				enable_chat = true, -- Optional: Enables the :Codeium Chat interface
			})
		end,
	},
}
