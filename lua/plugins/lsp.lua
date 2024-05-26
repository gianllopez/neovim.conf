return {
	{
		"neovim/nvim-lspconfig",
		opts = {
			servers = {
				phpactor = {},
			},
			inlay_hints = {
				enabled = false,
			},
		},
	},
	{
		"williamboman/mason.nvim",
		opts = function(_, opts)
			vim.list_extend(opts.ensure_installed, {
				-- lua
				"stylua",
				"lua-language-server",
				-- python
				"ruff",
				"pyright",
				-- php
				"phpactor",
				"php-cs-fixer",
			})
		end,
	},
}
