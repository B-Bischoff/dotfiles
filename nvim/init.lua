require "lua_config.options"
require "lua_config.keymaps"
require "lua_config.plugins"
require "lua_config.cmp"
require "lua_config.lsp"
require "lua_config.treesitter"
require "lua_config.dap"

-- require ('nvim-dap-virtual-text').setup()
require ('toggleterm').setup()
require ('gitsigns').setup()
require ('neoclip').setup()

tokyonight_style = "night"
vim.cmd "colorscheme tokyonight"
