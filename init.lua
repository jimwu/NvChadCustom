-- MAPPINGS
local map = require("core.utils").map

map("n", "<leader>cc", ":Telescope <CR>")
map("n", "<leader>q", ":q <CR>")

-- NvChad 的 <leader>fm shortcut 預設只在設妥 lsp server 時才有作用，但 null-ls format 不需要 lsp server
map("n", "<leader>fm", ":lua vim.lsp.buf.formatting_sync() <CR>")

vim.cmd ":set noswapfile"
vim.cmd ":set iskeyword+=_"
