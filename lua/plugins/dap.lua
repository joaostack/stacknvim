return {
	"mfussenegger/nvim-dap",
	lazy = true,
	keys = {
		{
			"<leader>db",
			function() require("dap").toggle_breakpoint() end,
			desc = "Toggle Breakpoint",
		},
		{
			"<leader>dB",
			function()
				require("dap").set_breakpoint(vim.fn.input("Breakpoint condition: "))
			end,
			desc = "Conditional Breakpoint",
		},
		{
			"<leader>dc",
			function() require("dap").continue() end,
			desc = "Continue",
		},
		{
			"<leader>dC",
			function() require("dap").run_to_cursor() end,
			desc = "Run to Cursor",
		},
		{
			"<leader>di",
			function() require("dap").step_into() end,
			desc = "Step Into",
		},
		{
			"<leader>do",
			function() require("dap").step_over() end,
			desc = "Step Over",
		},
		{
			"<leader>dO",
			function() require("dap").step_out() end,
			desc = "Step Out",
		},
		{
			"<leader>dT",
			function() require("dap").terminate() end,
			desc = "Terminate",
		},
		{
			"<leader>dr",
			function() require("dap").repl.open() end,
			desc = "Open REPL",
		},
	},
}
