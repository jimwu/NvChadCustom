local null_ls = require "null-ls"

local formatting = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics
local diagnostics = null_ls.builtins.diagnostics

local sources = {
  formatting.prettier,
  formatting.stylua,

  lint.shellcheck,

  -- yaml
  -- diagnostics.yamllint,

  -- php
  diagnostics.php,
  -- b.diagnostics.phpstan,
  formatting.phpcsfixer.with {
    args = { "fix", "$FILENAME", "--no-interaction", "--quiet", "--rules=@PSR12,@PSR12:risky,no_unused_imports", "--allow-risky=yes" },
  },

  -- terraform
  formatting.terraform_fmt,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
