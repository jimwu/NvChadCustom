require "nvchad.options"

-- add yours here!

local o = vim.o
o.cursorlineopt ='both' -- to enable cursorline!
o.swapfile = false
o.autoindent = true
o.iskeyword = o.iskeyword .. ',_,-'



vim.filetype.add({
  extension = {
    apib = 'markdown',
    yml = 'yaml',
    -- foo = 'fooscript',
    -- bar = function(path, bufnr)
    --   if some_condition() then
    --     return 'barscript', function(bufnr)
    --       -- Set a buffer variable
    --       vim.b[bufnr].barscript_version = 2
    --     end
    --   end
    --   return 'bar'
    -- end,
  },
  filename = {
    ['composer.lock'] = 'json',
    ['.php-cs-fixer.cache'] = 'json',
    -- ['.foorc'] = 'toml',
    -- ['/etc/foo/config'] = 'toml',
  },
  pattern = {
    -- ['.*/etc/foo/.*'] = 'fooscript',
    -- -- Using an optional priority
    -- ['.*/etc/foo/.*%.conf'] = { 'dosini', { priority = 10 } },
    -- -- A pattern containing an environment variable
    -- ['${XDG_CONFIG_HOME}/foo/git'] = 'git',
    -- ['README.(a+)$'] = function(path, bufnr, ext)
    --   if ext == 'md' then
    --     return 'markdown'
    --   elseif ext == 'rst' then
    --     return 'rst'
    --   end
    -- end,
  },
})
