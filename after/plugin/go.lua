-- Plugin setup
require('go').setup()

-- Create an autocmd group for Go formatting
local format_sync_grp = vim.api.nvim_create_augroup("GoFormat", {})

-- Add a BufWritePre autocmd to format Go files on save
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.go",
  callback = function()
    require('go.format').goimports()
  end,
  group = format_sync_grp,
})

