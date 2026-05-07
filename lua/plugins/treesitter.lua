---@type LazySpec
return {
	"nvim-treesitter/nvim-treesitter",
	branch = "master",
	build = ":TSUpdate",
	opts = {
		ensure_installed = {
			"lua",
			"c_sharp",
			"javascript",
			"typescript",
			"tsx",
			"json",
			"html",
			"css",
			"markdown",
			"markdown_inline",
			"bash",
			"vim",
			"vimdoc",
		},
		highlight = { enable = true },
		indent = { enable = true },
		incremental_selection = {
			enable = true,
			keymaps = {
				init_selection = "<C-space>",
				node_incremental = "<C-space>",
				scope_incremental = false,
				node_decremental = "<bs>",
			},
		},
	},
}
