return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"lua",
				"python",
				"typescript",
				"tsx",
				"html",
				"css",
				"scss",
				"dart",
			},
			autotag = {
				enable = true,
			},
		})
	end,
	dependencies = {
		{
			"numToStr/Comment.nvim",
			lazy = false,
			opts = {},
			dependencies = {
				{ "JoosepAlviste/nvim-ts-context-commentstring" },
			},
			config = function()
				require("Comment").setup({
					pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
				})
			end,
		},
		{
			"kevinhwang91/nvim-ufo",
			dependencies = { "kevinhwang91/promise-async" },
			opts = {},
		},
		{ "windwp/nvim-ts-autotag" },
	},
}
