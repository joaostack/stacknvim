-- DAP configuration for .NET/C#
-- This is loaded as a plugin spec, so we wrap the setup in a config function

---@type LazySpec
return {
	"mfussenegger/nvim-dap",
	optional = true,
	config = function()
		local dap = require("dap")

		dap.adapters.coreclr = {
			type = "executable",
			command = "/usr/bin/netcoredbg",
			args = { "--interpreter=vscode" },
		}

		dap.configurations.cs = {
			{
				type = "coreclr",
				name = "Launch - netcoredbg",
				request = "launch",
				program = function()
					return vim.fn.input("Path to dll: ", vim.fn.getcwd() .. "/bin/Debug/", "file")
				end,
			},
		}
	end,
}
