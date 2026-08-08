return {
	"nvim-neo-tree/neo-tree.nvim",
	opts = {
		filesystem = {
			filtered_items = {
				visible = true,
				hide_dotfiles = false,
			},
			use_libv_file_watcher = true,
			follow_current_file = {
				enabled = true,
			},
		},
		--ensure_installed = {
		--	"hyprlang",
		--	"vim",
		--	"lua",
		--	"vimdoc",
		--	"html",
		--	"css",

		-- !
		--"c_sharp",
		--"razor",
		--		},
	},
}
