-- use space as the leader key
vim.g.mapleader = ' '

-- search
--ignore uppercase when searching...
vim.opt.ignorecase = true
--... unlessthe search term has an uppercase
vim.opt.smartcase = true
-- disable results of previous search
vim.opt.hlsearch = false

-- lines
--line numbers
vim.opt.number = true
-- make test of long lines visible
vim.opt.wrap = true
-- preserve indentation of a virtual line
vim.opt.breakindent = true
-- amount of space screen a Tab character can occupy
vim.opt.tabstop= 2
-- amount of characters nvi will use to ident a line (default to == tabstop)
vim.opt.shiftwidth= 2
-- transform tabs to spaces
vim.opt.expandtab = true

-- go over this
--vim.opt.sidescroll= 1
--vim.opt.softtabstop= 2
--vim.opt.autoindent = true
vim.opt.fileformat= 'unix'
vim.opt.exrc = true

--Highlight line
vim.keymap.set('n', '<F4>', ':set cursorline!<CR>', { noremap = true, silent = true})

-- Plugins
require('plugins')

-- commands
vim.cmd [[
  colorscheme dracula
]]
