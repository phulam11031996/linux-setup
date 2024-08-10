return {
  "karb94/neoscroll.nvim",
  config = function()
    require("neoscroll").setup({
      -- Set the duration for scrolling (in milliseconds)
      duration = 50, -- ms
    })
  end,
}
