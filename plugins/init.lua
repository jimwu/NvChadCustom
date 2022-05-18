return {
   ["stevearc/dressing.nvim"] = {},
   ["tpope/vim-surround"] = {},
   ["nvie/vim-togglemouse"] = {},
   ["hashivim/vim-terraform"] = {},
   ["phpactor/phpactor"] = { ft = { "php" }, tag = "*", run = "composer install --no-dev -o" },
   ["iamcco/markdown-preview.nvim"] = { run = "cd app && yarn install" },
   ["stephpy/vim-php-cs-fixer"] = {
      config = function()
         vim.g.php_cs_fixer_rules = "@Symfony,@Symfony:risky' '--allow-risky=yes"
      end,
   },
   ["nathom/filetype.nvim"] = {
      config = function()
         require("custom.plugins.confs.filetype").setup()
      end,
   },
   ["karb94/neoscroll.nvim"] = {
      config = function()
         require("neoscroll").setup()
      end,

      -- lazy loading
      setup = function()
         nvchad.packer_lazy_load "neoscroll.nvim"
      end,
   },
   ["jose-elias-alvarez/null-ls.nvim"] = {
      after = "nvim-lspconfig",
      config = function()
         require("custom.plugins.confs.null-ls").setup()
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
