return {
  {
    "github/copilot.vim",
    config = function()
      -- Set up custom key mappings for cycling through suggestions
      vim.api.nvim_set_keymap("i", "<Tab>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
      vim.api.nvim_set_keymap("i", "<C-j>", "copilot#Next()", { silent = true, expr = true })
      vim.api.nvim_set_keymap("i", "<C-k>", "copilot#Previous()", { silent = true, expr = true })

      -- Disable automatic start
      vim.g.copilot_no_tab_map = true
      vim.g.copilot_assume_mapped = true
    end,
  },
}
