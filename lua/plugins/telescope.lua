return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-telescope/telescope-file-browser.nvim",
		"nvim-lua/plenary.nvim",
	},
	config = function(_, opts)
		opts.extensions = {
			file_browser = {
				path = "%:p:h",
				hide_parent_dir = true,
				git_status = false,
				grouped = true,
				sorting_strategy = "ascending",
			},
		}
		opts.defaults = {
			file_ignore_patterns = { ".venv", "node_modules" },
		}
		require("telescope").setup(opts)
		require("telescope").load_extension("file_browser")
	end,
}
