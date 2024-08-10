return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {
      size = function(term)
        if term.direction == "horizontal" then
          return 15
        elseif term.direction == "vertical" then
          return vim.o.columns * 0.4
        end
      end,
      open_mapping = [[<c-t>]], -- Ctrl + T for floating terminal
      hide_numbers = true,
      autochdir = false,
      shade_terminals = false, -- Disable shading to better match theme
      start_in_insert = true,
      insert_mappings = true,
      terminal_mappings = true,
      persist_size = true,
      persist_mode = true,
      direction = "float",
      close_on_exit = true,
      shell = vim.o.shell,
      auto_scroll = true,
      float_opts = {
        border = "single", -- Use single borders for a cleaner look
        width = function()
          return vim.o.columns - 40
        end,
        height = function()
          return vim.o.lines - 20
        end,
        row = function()
          return (vim.o.lines - (vim.o.lines - 20)) / 2
        end,
        col = function()
          return (vim.o.columns - (vim.o.columns - 40)) / 2
        end,
        winblend = 0, -- Set to 0 to avoid blending
        zindex = 50,
        title_pos = "center",
      },
      winbar = {
        enabled = false,
        name_formatter = function(term)
          return term.name
        end,
      },
      highlights = {
        Normal = {
          guibg = "#282828", -- Gruvbox dark background color
        },
        NormalFloat = {
          link = "Normal",
        },
        FloatBorder = {
          guifg = "#ebdbb2", -- Gruvbox light foreground color for the border
          guibg = "#282828", -- Gruvbox dark background color
        },
      },
    },
  },
}
