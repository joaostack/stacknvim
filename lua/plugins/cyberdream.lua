return {
  "scottmckendry/cyberdream.nvim",
  config = function()
    require("cyberdream").setup {
      saturation = 1,
      transparent = true,
      italic_comments = false,
    }
  end,
}
