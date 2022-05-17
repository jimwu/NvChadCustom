return {
   ["stevearc/dressing.nvim"] = {},
   ["tpope/vim-surround"] = {},
   ["nvie/vim-togglemouse"] = {},
   ["hashivim/vim-terraform"] = {},
   ["phpactor/phpactor"] = { ft = { "php" }, tag = "*", run = "composer install --no-dev -o" },
   ["iamcco/markdown-preview.nvim"] = { run = "cd app && yarn install" },
   ["goolord/alpha-nvim"] = {
      disable = false,
   },
   ["stephpy/vim-php-cs-fixer"] = {
      config = function()
         vim.g.php_cs_fixer_rules = "@Symfony,@Symfony:risky' '--allow-risky=yes"
      end,
   },
   ["nathom/filetype.nvim"] = {
      config = function()
         vim.g.did_load_filetypes = 1

         require("filetype").setup({
            overrides = {
               function_extensions = {
                  ["yaml"] = function()
                     vim.bo.filetype = "yaml"
                     vim.bo.tabstop = 2
                     vim.bo.softtabstop = 2
                     vim.bo.shiftwidth = 2
                     vim.cmd(":setlocal iskeyword+=-")
                  end,
                  ["php"] = function()
                     vim.bo.filetype = "php"
                     vim.bo.tabstop = 4
                     vim.bo.softtabstop = 4
                     vim.bo.shiftwidth = 4
                     vim.g.PHP_vintage_case_default_indent = 1
                  end,
                  ["lua"] = function()
                     vim.bo.filetype = "lua"
                     vim.bo.tabstop = 3
                     vim.bo.softtabstop = 3
                     vim.bo.shiftwidth = 3
                  end,
               },
            },
         })
      end,
   },
   ["karb94/neoscroll.nvim"] = {
      opt = true,
      config = function()
         require("neoscroll").setup()
      end,

      -- lazy loading
      setup = function()
         require("core.utils").packer_lazy_load("neoscroll.nvim")
      end,
   },
   ["jose-elias-alvarez/null-ls.nvim"] = {
      after = "nvim-lspconfig",
      config = function()
         require("custom.plugin_confs.null-ls").setup()
      end,
   },
   ["Pocco81/TrueZen.nvim"] = {
      cmd = {
         "TZAtaraxis",
         "TZMinimalist",
         "TZFocus",
      },
   },
}
