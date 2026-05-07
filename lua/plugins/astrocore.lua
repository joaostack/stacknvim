---@type LazySpec
return {
	"AstroNvim/astrocore",
	---@type AstroCoreOpts
	opts = {
		-- Configure core features of AstroNvim
		features = {
			large_buf = { size = 1024 * 256, lines = 10000 }, -- disable treesitter etc. for large files
			autopairs = true,
			cmp = true,
			diagnostics = { virtual_text = true, virtual_lines = false },
			highlighturl = true,
			notifications = true,
		},
		-- Diagnostics configuration
		diagnostics = {
			virtual_text = true,
			underline = true,
		},
		-- vim options
		options = {
			opt = {
				number = true,
				relativenumber = true, -- relative numbers help with jump motions (e.g. 5j, 3k)
				spell = false,
				signcolumn = "yes",   -- always show signcolumn to avoid layout shifts
				wrap = false,          -- no wrap is usually better for code
				shiftwidth = 4,
				tabstop = 4,
				expandtab = true,
				cursorline = true,     -- highlight current line for easier navigation
				scrolloff = 8,         -- keep 8 lines of context when scrolling
				sidescrolloff = 8,
				termguicolors = true,
				undofile = true,       -- persistent undo history across sessions
				ignorecase = true,     -- case-insensitive search...
				smartcase = true,      -- ...unless you type uppercase
				splitbelow = true,     -- new horizontal splits go below
				splitright = true,     -- new vertical splits go right
			},
			g = {},
		},
		-- Mappings
		mappings = {
			n = {
				-- Navigate buffer tabs
				["]b"] = {
					function() require("astrocore.buffer").nav(vim.v.count1) end,
					desc = "Next buffer",
				},
				["[b"] = {
					function() require("astrocore.buffer").nav(-vim.v.count1) end,
					desc = "Previous buffer",
				},

				-- Close buffer from tabline
				["<Leader>bd"] = {
					function()
						require("astroui.status.heirline").buffer_picker(function(bufnr)
							require("astrocore.buffer").close(bufnr)
						end)
					end,
					desc = "Close buffer from tabline",
				},

				-- Better window navigation
				["<C-h>"] = { "<C-w>h", desc = "Move to left window" },
				["<C-j>"] = { "<C-w>j", desc = "Move to lower window" },
				["<C-k>"] = { "<C-w>k", desc = "Move to upper window" },
				["<C-l>"] = { "<C-w>l", desc = "Move to right window" },

				-- Oil file explorer
				["-"] = { "<cmd>Oil<cr>", desc = "Open parent directory (oil)" },
			},
		},
	},
}
