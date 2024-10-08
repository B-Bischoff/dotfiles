require "lua_config.options"
require "lua_config.keymaps"
require "lua_config.plugins"
require "lua_config.cmp"
require "lua_config.lsp"
require "lua_config.treesitter"
require "lua_config.dap"

require ('toggleterm').setup()
require ('gitsigns').setup()
require ('neoclip').setup()

require('neoscroll').setup({
  mappings = {                 -- Keys to be mapped to their corresponding default scrolling animation
    '<C-u>', '<C-d>',
    '<C-b>', '<C-f>',
    '<C-y>', '<C-e>',
    'zt', 'zz', 'zb',
  },
  hide_cursor = true,          -- Hide cursor while scrolling
  stop_eof = true,             -- Stop at <EOF> when scrolling downwards
  respect_scrolloff = false,   -- Stop scrolling when the cursor reaches the scrolloff margin of the file
  cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
  easing = 'linear',           -- Default easing function
  pre_hook = nil,              -- Function to run before the scrolling animation starts
  post_hook = nil,             -- Function to run after the scrolling animation ends
  performance_mode = false,    -- Disable "Performance Mode" on all buffers.
  ignored_events = {           -- Events ignored while scrolling
      'WinScrolled', 'CursorMoved'
  },
})

--tokyonight_style = "night"
--tokyonight_style = "night"
--vim.cmd "colorscheme tokyonight"

vim.cmd "autocmd VimEnter,BufRead,BufNewFile /home/brice/Documents/transcendence/* setlocal ts=2 sw=2"
vim.cmd "autocmd VimEnter,BufRead,BufNewFile /home/brice/Documents/website/* setlocal ts=2 sw=2 expandtab"

vim.opt.background = "dark"
vim.cmd.colorscheme "oxocarbon"

vim.g.airline_theme='kolor'

require ("telescope").setup({
	defaults = {
		file_ignore_patterns = {
			"external"
		}
	}
})
