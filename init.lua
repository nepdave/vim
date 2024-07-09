-- init.lua

-- Load plugins
require('plugins')

-- Set the cursor style for different modes with blinking
vim.opt.guicursor = {
    "n-v-c-sm:block-blinkon0",
    "i-ci-ve:ver25-blinkon0",
    "r-cr-o:hor20-blinkon0"
}

-- Basic settings
vim.o.number = true          -- Show line numbers
vim.o.relativenumber = false -- Relative line numbers
vim.o.expandtab = true       -- Use spaces instead of tabs
vim.o.shiftwidth = 4         -- Size of an indent
vim.o.tabstop = 4            -- Number of spaces tabs count for
vim.o.smartindent = true     -- Insert indents automatically

-- Enable mouse support
vim.o.mouse = 'a'

-- Enable syntax highlighting
-- vim.cmd('syntax on')

-- Enable true color support
-- vim.o.termguicolors = true

-- Go-specific settings
vim.cmd [[
  autocmd FileType go setlocal noexpandtab tabstop=4 shiftwidth=4
]]

-- LSP settings
require('lsp')

-- Treesitter configuration
require('treesitter-config')

