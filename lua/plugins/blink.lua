return {
	-- 1. Base Copilot Plugin
	{
		"zbirenbaum/copilot.lua",
		cmd = "Copilot",
		event = "InsertEnter",
		config = function()
			require("copilot").setup({
				-- Disable ghost text to prevent pop-up conflicts
				suggestion = { enabled = false },
				panel = { enabled = false },
			})
		end,
	},

	-- 2. Blink.cmp configuration with Copilot integration
	{
		"Saghen/blink.cmp",
		dependencies = {
			"giuxtaposition/blink-copilot", -- Native Blink source for Copilot
		},
		opts = {
			sources = {
				-- Add 'copilot' to your active completion providers
				default = { "lsp", "path", "snippets", "buffer", "copilot" },
				providers = {
					copilot = {
						name = "copilot",
						module = "blink-copilot",
						score_offset = 100, -- Adjusts menu ranking (higher = prioritized)
						async = true,
					},
				},
			},
		},
	},
}
