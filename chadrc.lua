local M = {}


M.ui = {
   theme = "everblush",
}

local userPlugins = require "custom.plugins"

M.plugins = {
   install = userPlugins,
   options = {
      lspconfig = {
         setup_lspconf = "custom.plugins.lspconfig",
      },
   },
   default_plugin_config_replace = {
      nvim_treesitter = {
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
   shiftwidth = 4,
   tabstop = 4,
   softtabstop = 4,
   smartindent = true,
   autoindent = true,
}

return M
