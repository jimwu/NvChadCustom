local M = {}

M.custom = {
   n = {
      ["<leader>fm"] = { ":lua vim.lsp.buf.formatting_sync() <CR>", "force call vim.lsp.buf.formatting_sync()" },
   },
}

return M
