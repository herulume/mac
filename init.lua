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
require "paq" {
  "savq/paq-nvim"; --paq will manage itself

  "Mofiqul/dracula.nvim"; -- colorscheme

  "nvim-lualine/lualine.nvim"; -- status line

  "lukas-reineke/indent-blankline.nvim"; -- indent guides

  {"nvim-treesitter/nvim-treesitter", run=":TSUpdate"}; -- turn code into AST
  "nvim-treesitter/nvim-treesitter-textobjects"; -- add more text objects based on treesitter

  "numToStr/Comment.nvim"; --new operator to toggle comments in code (gc)

  "tpope/vim-surround"; -- manipulate surrounding patterns

  "nvim-lua/plenary.nvim"; -- required dep
  "nvim-telescope/telescope.nvim"; -- interface to filter a list of items
  
  "tpope/vim-fugitive"; -- git in nvim
  "f-person/git-blame.nvim"; -- git blame in nvim
  "lewis6991/gitsigns.nvim"; -- git signs

  "tpope/vim-sleuth"; 
--  {"fatih/vim-go", do=:GoUpdateBinaries};
}

-- lualine
vim.opt.showmode = false -- lualine does this
require('lualine').setup({
  options = {
    theme = 'dracula',
    icons_enable = true,
    component_separators = '|',
    section_separators = '',
  },
})

-- ident-blankline
require("indent_blankline").setup({
  char = '|',
  show_trailing_blankline_indent = false,
  show_first_indent_level = false,
  use_treesitter = true,
  show_current_context = false
})

-- treesitter
require('nvim-treesitter.configs').setup({
  highlight = {
    enable = true,
  },
  textobjects = {
    select = {
      enable = true,
      lookahead = true,
      keymaps = {
        ['af'] = '@function.outer',
        ['if'] = '@function.inner',
        ['ac'] = '@class.outer',
        ['ic'] = '@class.inner',
      }
    },
  },
  ensure_installed = {
    'lua',
    'go',
    'rust',
  },
})

-- Comment
require('Comment').setup({})

-- Telescope
vim.keymap.set('n', '<leader>?', '<cmd>Telescope oldfiles<cr>')
vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<cr>')
vim.keymap.set('n', '<leader>fg', '<cmd>Telescope live_grep<cr>')

-- Toggle gitblame
vim.g['gitblame_enabled'] = 0
vim.keymap.set('n', '<F5>', ':GitBlameToggle<CR>', { noremap = true, silent = true})

-- Gitsigns
require('gitsigns').setup({
  signs = {
    add = {text = '▎'},
    change = {text = '▎'},
    delete = {text = '➤'},
    topdelete = {text = '➤'},
    changedelete = {text = '▎'},
  },
})
-- commands
vim.cmd [[
  colorscheme dracula
]]
