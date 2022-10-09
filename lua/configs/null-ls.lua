local M = {}
function M.config()
  local null_ls = require("null-ls")
  local formatting = null_ls.builtins.formatting

  local sources = {
    formatting.eslint,
    formatting.autopep8,
    formatting.stylua,
  }


  local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

  null_ls.setup({
    sources = sources,

    on_attach = function(client, bufnr)
      if client.supports_method("textDocument/formatting") then
        vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
        vim.api.nvim_create_autocmd("BufWritePre", {
          group = augroup,
          buffer = bufnr,
          callback = function()
            vim.lsp.buf.format({ timeout_ms = 2000 })
          end,
        })
      end
    end,
  })

end

return M
