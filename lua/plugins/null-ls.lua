return {
  "jose-elias-alvarez/null-ls.nvim",
  config = function()
    local null_ls = require("null-ls")

    local formatting = null_ls.builtins.formatting

    local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

    local sources = {
      -- lua
      formatting.stylua,
      -- javascript
      formatting.prettier,
      -- python
      formatting.black,
      formatting.isort,
      -- dart
      formatting.dart_format,
    }

    null_ls.setup({
      sources = sources,
      on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
          vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
          vim.api.nvim_create_autocmd("BufWritePre", {
            group = augroup,
            buffer = bufnr,
            callback = function()
              vim.lsp.buf.format({ bufnr = bufnr })
            end,
          })
        end
      end,
    })
  end,
}
