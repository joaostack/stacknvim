---@type LazySpec
return {
	"nvim-treesitter/nvim-treesitter",
	branch = "master",
	build = ":TSUpdate",
	opts = {
		ensure_installed = {
			"lua",
			"c_sharp",
		},
	},
}
