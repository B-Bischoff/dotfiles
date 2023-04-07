local opts = { noremap = true, silent = true }

local keymap = vim.api.nvim_set_keymap

-- Leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Navigation
keymap("n", "<C-d>", "<C-d>zz", opts)
keymap("n", "<C-u>", "<C-u>zz", opts)

-- Resize
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize +2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize -2<CR>", opts)

-- Navigate buffers
keymap("n", "<C-t>", ":tabnew<CR>", opts)
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)
keymap("n", "<leader>e", ":NERDTreeToggle<CR>", opts)

-- Esc remap
keymap("t", "<ESC>", "<C-\\><C-n>", opts)
keymap("i", "kj", "<ESC>", opts)
keymap("v", "kj", "<ESC>", opts)
keymap("t", "kj", "<ESC>", opts)
keymap("c", "kj", "<ESC>", opts)

-- Keep indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Unmap shift K (lua man search)
keymap("", "S-k>", "<Nop>", opts)

-- Add relative movements to jump list
vim.cmd "nnoremap <expr> j v:count ? \"m'\" . v:count . 'j' : 'gj'"
vim.cmd "nnoremap <expr> k v:count ? \"m'\" . v:count . 'k' : 'gk'"

-- Toggle trailing chars
keymap("", "<leader>sl", ":set list!<CR>", opts)

-- Telescope
keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts)
keymap("n", "<leader>fs", ":Telescope live_grep<CR>", opts)
keymap("n", "<leader>h", ":lua require('telescope').extensions.neoclip.default()<CR>", opts)

-- ToggleTerm
keymap("n", "<leader>t", ":ToggleTerm size=100 direction=vertical<CR>", opts)
keymap("n", "<leader>T", ":ToggleTerm direction=tab<CR>", opts)

-- Dap
keymap("n", "<leader>db", ":lua require'dap'.toggle_breakpoint()<CR>", opts)
keymap("n", "<S-k>", ":lua require'dap'.step_out()<CR>", opts)
keymap("n", "<S-l>", ":lua require'dap'.step_into()<CR>", opts)
keymap("n", "<S-j>", ":lua require'dap'.step_over()<CR>", opts)
keymap("n", "<leader>dn", ":lua require'dap'.continue()<CR>", opts)
