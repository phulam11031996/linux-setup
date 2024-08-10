require("phu.core")
require("phu.lazy")

-- Auto-save when leaving the buffer
vim.cmd([[
  augroup AutoSave
    autocmd!
    autocmd BufLeave * silent! write
  augroup END
]])
