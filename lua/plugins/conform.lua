return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			cs = { "csharpier" },
			html = { "deno_fmt" },
			css = { "deno_fmt" },
			javascript = { "prettierd", "prettier", stop_after_first = true },
			typescript = { "deno_fmt" },
			json = { "deno_fmt" },
			javascriptreact = { "deno_fmt" },
			typescriptreact = { "deno_fmt" },
			markdown = { "deno_fmt" },
		},
		format_on_save = {
			timeout_ms = 500,
			lsp_format = "fallback",
		},
	},
}
