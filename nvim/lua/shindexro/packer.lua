-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- execute :so, :PackerSync after updating this config

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.5',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

  use { "catppuccin/nvim", as = "catppuccin" }

  use('nvim-treesitter/nvim-treesitter', {run = 'TSUpdate'})
  use('nvim-treesitter/playground')

  use "nvim-lua/plenary.nvim" -- don't forget to add this one if you don't have it yet!
  use {
	  "ThePrimeagen/harpoon",
	  branch = "harpoon2",
	  requires = { {"nvim-lua/plenary.nvim"} }
  }

  use('mbbill/undotree')
  use('tpope/vim-fugitive')

  use { 'mhartington/formatter.nvim' }
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v3.x',
	  requires = {
		  --- Uncomment these if you want to manage LSP servers from neovim
          -- {'williamboman/mason.nvim'},
          -- {'williamboman/mason-lspconfig.nvim'},

		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'L3MON4D3/LuaSnip'},
	  }
  }

  use {
      'folke/trouble.nvim',
      requires = {
          {'nvim-tree/nvim-web-devicons'}
      }
  }


  use { 'alexghergh/nvim-tmux-navigation', config = function()
      require'nvim-tmux-navigation'.setup {
          disable_when_zoomed = true, -- defaults to false
          keybindings = {
              left = "<A-h>",
              down = "<A-j>",
              up = "<A-k>",
              right = "<A-l>",
              last_active = "<A-\\>",
          }
      }
  end}

  use {"akinsho/toggleterm.nvim", tag = '*', config = function()
      require("toggleterm").setup()
  end}

  use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
end)
