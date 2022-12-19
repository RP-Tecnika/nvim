vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

function get_config(name)
  return string.format('require("configs/%s")', name)
end

local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
    use {'wbthomason/packer.nvim', opt = true}

    use 'folke/tokyonight.nvim'

    use {
    	"ThePrimeagen/harpoon"
    }
    use {
   	'nvim-lualine/lualine.nvim',
   	    requires = {'kyazdani42/nvim-web-devicons', opt = true}
   	}
    use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
    }
    -- LSP CONFIG
    use {"williamboman/nvim-lsp-installer",
	    config = get_config("nvim-lsp-installer")
	}

    use { 'neovim/nvim-lspconfig',
    --after = "nvim-lsp-installer",
    config = get_config("lsp")}
    use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = get_config("treesitter")
    }

    -- AutoCompletion Stuff
    use { 'hrsh7th/nvim-cmp',
        config = get_config("cmp") }
    use { 'hrsh7th/cmp-nvim-lsp' }
    use { 'hrsh7th/cmp-vsnip' }
    use { 'hrsh7th/vim-vsnip' }

    use({
      "windwp/nvim-autopairs",
      after = "nvim-cmp",
      config = get_config("autopairs"),
    })

    use {
	"strash/everybody-wants-that-line.nvim",
	config = get_config("ewtl")
    }

    -- test things


    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
      require('packer').sync()
    end
end)
