return {
	"stevearc/oil.nvim",
	---@module 'oil'
	---@type oil.SetupOpts
	lazy = false, -- must be eager-loaded for opening directories
	dependencies = { { "echasnovski/mini.icons", opts = {} } },
	opts = {
		default_file_explorer = true,
		columns = {
			"icon",
			"permissions",
			"size",
			"mtime",
		},
		view_options = {
			show_hidden = true, -- show dotfiles
		},
		float = {
			padding = 2,
			border = "rounded",
		},
		keymaps = {
			["<C-s>"] = { "actions.select", opts = { vertical = true } },
			["<C-h>"] = { "actions.select", opts = { horizontal = true } },
			["<C-p>"] = "actions.preview",
			["q"] = "actions.close",
		},
	},
}
