return {
  "uga-rosa/ccc.nvim",

  config = function()
    require("ccc").setup {
      auto_enable = true,
      lsp = true,
    }
  end,
}
