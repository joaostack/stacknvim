return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		options = {
			mode = "buffers",
			separator_style = "slant",
			show_buffer_close_icons = true,
			show_close_icon = true,
			show_buffer_icons = true,
			color_icons = true,
			always_show_bufferline = true,
			diagnostics = "nvim_lsp",
			diagnostics_indicator = function(count, level)
				local icon = level:match("error") and " " or " "
				return " " .. icon .. count
			end,
		},
	},
}
