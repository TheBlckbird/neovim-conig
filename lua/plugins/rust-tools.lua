return {
	"mrcjkb/rustaceanvim",
	version = "^4", -- Recommended
	dependencies = {
		"nvim-lua/plenary.nvim",
		"mfussenegger/nvim-dap",
	},
	ft = { "rust" },
	config = function(_)
		vim.g.rustaceanvim = {
			inlay_hints = {
				highlight = "NonText",
			},
			tools = {
				hover_actions = {
					auto_focus = true,
				},
			},
			server = {
				on_attach = function(client, bufnr)
					require("lsp-inlayhints").on_attach(client, bufnr)
				end,
			},
		}
	end,
}
