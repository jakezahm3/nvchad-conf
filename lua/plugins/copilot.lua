return {
	{
		"zbirenbaum/copilot.lua",
		cmd = "Copilot",
		event = "InsertEnter",
		config = function()
			require("copilot").setup({
				suggestion = {
					enabled = true,
					auto_trigger = true,
					keymap = {
						accept = "<M-l>", -- Alt + l to accept suggestion
						next = "<M-]>", -- Alt + ] for next suggestion
						prev = "<M-[>", -- Alt + [ for previous suggestion
						dismiss = "<C-]>",
					},
				},
				panel = { enabled = false },
			})
		end,
	},
}
