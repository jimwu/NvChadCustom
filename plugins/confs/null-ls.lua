local null_ls = require "null-ls"
local b = null_ls.builtins

local sources = {

   b.formatting.prettierd.with {
      filetypes = { "html", "markdown", "css", "yaml" },
   },
   b.formatting.deno_fmt,

   -- Lua
   b.formatting.stylua,
   b.diagnostics.luacheck.with { extra_args = { "--global vim" } },

   -- Shell
   b.formatting.shfmt,
   b.diagnostics.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },

   -- yaml
   b.diagnostics.yamllint,

   -- php
   b.diagnostics.php,
   b.diagnostics.phpstan,
   b.formatting.phpcsfixer.with {
      args = { "fix", "$FILENAME", "--no-interaction", "--quiet", "--rules=@PSR12" },
   },

   -- terraform
   b.formatting.terraform_fmt,
}

local M = {}

M.setup = function()
   null_ls.setup {
      debug = true,
      sources = sources,

      -- format on save
      -- on_attach = function(client)
      --    if client.resolved_capabilities.document_formatting then
      --       vim.cmd "autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()"
      --    end
      -- end,
   }
end

return M
