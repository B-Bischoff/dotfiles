require "lua_config.options"
require "lua_config.keymaps"
require "lua_config.plugins"
require "lua_config.cmp"
require "lua_config.lsp"
require "lua_config.treesitter"
-- require "lua_config.dap"

require ('toggleterm').setup()
require ('gitsigns').setup()
require ('neoclip').setup()

require ('neoscroll').setup()
local t = {}
-- Syntax: t[keys] = {function, {function arguments}}
t['<C-u>'] = {'scroll', {'-vim.wo.scroll', 'true', '250'}}
t['<C-d>'] = {'scroll', { 'vim.wo.scroll', 'true', '250'}}
require('neoscroll.config').set_mappings(t)

tokyonight_style = "night"
tokyonight_style = "night"
vim.cmd "colorscheme tokyonight"

vim.cmd "autocmd VimEnter,BufRead,BufNewFile /home/brice/Documents/transcendence/* setlocal ts=2 sw=2"
vim.cmd "autocmd VimEnter,BufRead,BufNewFile /home/brice/Documents/website/* setlocal ts=2 sw=2 expandtab"
