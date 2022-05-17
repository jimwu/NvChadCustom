local M = {}


M.ui = {
   theme = "tokyodark",
}


M.plugins = {
   user = require "custom.plugins",
   options = {
      lspconfig = {
         setup_lspconf = "custom.lspconfig",
      },
   },
   override = {
      ["nvim_treesitter"] = {
         highlight = {
            enable = true,
            additional_vim_regex_highlighting = true,
         },
         indent = {
            enable = false,
         },
      },
   },
}

M.options = {
   user = function()
      vim.cmd ":set noswapfile"
      vim.cmd ":set iskeyword+=_"
      --  nathom/filetype tell me to do this
      vim.g.did_load_filetypes = 1
   end,

   shiftwidth = 4,
   tabstop = 4,
   softtabstop = 4,
   smartindent = true,
   autoindent = true,
}

M.mappings = require "custom.mappings"

return M
