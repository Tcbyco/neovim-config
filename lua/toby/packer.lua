-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  
  -- Fuzzy finding
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  -- Tree Sitter for syntax highlighting
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  
  -- Harpoon. Quickly switch between files. 
  use('ThePrimeagen/harpoon')

  -- Undo tree: expose vim's branching undo history.
  use('mbbill/undotree')

  -- TMUX support reminder for harpoon - remember to go to harpoon github to see how to edit it to use tmux.
  
  -- Git Fugitive: git support for vim
  use('tpope/vim-fugitive')
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},             -- Required
		  {'williamboman/mason.nvim'},           -- Optional
		  {'williamboman/mason-lspconfig.nvim'}, -- Optional

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},         -- Required
		  {'hrsh7th/cmp-nvim-lsp'},     -- Required
		  {'hrsh7th/cmp-buffer'},       -- Optional
		  {'hrsh7th/cmp-path'},         -- Optional
		  {'saadparwaiz1/cmp_luasnip'}, -- Optional
		  {'hrsh7th/cmp-nvim-lua'},     -- Optional

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},             -- Required
		  {'rafamadriz/friendly-snippets'}, -- Optional
	  }
  }
  -- Aesthetic 
  use ({ "catppuccin/nvim", as = "catppuccin"})

  -- learning games
  use 'ThePrimeagen/vim-be-good'

  -- copilot
  use('github/copilot.vim')
  end)
