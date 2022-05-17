local M = {}


M.ui = {
   theme = "tokyodark",
}

local userPlugins = require "custom.plugins"

M.plugins = {
   user = userPlugins,
   options = {
      lspconfig = {
         setup_lspconf = "custom.plugins.lspconfig",
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
   end,

   shiftwidth = 4,
   tabstop = 4,
   softtabstop = 4,
   smartindent = true,
   autoindent = true,
}

M.mappings = require "custom.mappings"

return M
