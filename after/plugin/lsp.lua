local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.configure('gopls', {
  cmd = { "gopls" }, -- Command to start gopls
  filetypes = { "go", "gomod" }, -- File types gopls should attach to
  root_dir = require('lspconfig.util').root_pattern("go.work", "go.mod", ".git"), -- Root directory detection
  settings = {
    gopls = {
      analyses = {
        unusedparams = true,
      },
      staticcheck = true,
    },
  },
})

lsp.setup()

-- Autoformat Go files before saving
local format_sync_grp = vim.api.nvim_create_augroup("GoFormat", {})

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.go",
  callback = function()
    vim.lsp.buf.format({ async = true }) -- Uses gopls for formatting
  end,
  group = format_sync_grp,
})

