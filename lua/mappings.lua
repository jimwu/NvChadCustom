require "nvchad.mappings"

-- add yours here!

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map("i", "jk", "<ESC>")
map("i", "<C-l>", function()
    vim.fn.feedkeys(vim.fn['copilot#Accept'](), '')
end, {desc = "Copilot Accept", replace_keycodes = true, nowait = true, silent = true, expr = true, noremap = true})

for i = 1, 9, 1 do
  vim.keymap.set("n", string.format("<A-%s>", i), function()
    vim.api.nvim_set_current_buf(vim.t.bufs[i])
  end)
end
