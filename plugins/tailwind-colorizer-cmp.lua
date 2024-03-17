return {
  "roobert/tailwindcss-colorizer-cmp.nvim",
  lazy = false,
  config = function()
    require("tailwindcss-colorizer-cmp").setup {}
    require "user.configs.tailwindcss-colorizer-cmp"
  end,
}
