local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.api.nvim_command('packadd packer.nvim')
end


return require 'packer'.startup({function(use)
    use 'wbthomason/packer.nvim'
    use {
	"catppuccin/nvim",
	as = "catppuccin",
    event = "BufWinEnter",
    config ="require('colorschemes-config')"
}
    use 'kyazdani42/nvim-tree.lua'
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
    use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    use "lukas-reineke/indent-blankline.nvim"
    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip' -- Snippets plugin
    use 'onsails/lspkind.nvim'
    use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }, event ="BufWinEnter", config="require('lualine-config')"
}
    use 'windwp/nvim-ts-autotag'
    use { 'nvim-treesitter/nvim-treesitter', run = "TSUpdate" }
    use {'glepnir/dashboard-nvim', event ="BufWinEnter" , config ="require('dashboard-config')"}
    use 'tami5/lspsaga.nvim'
    use 'p00f/nvim-ts-rainbow'
    use { 'akinsho/bufferline.nvim', event ="BufWinEnter" , config ="require('bufferline-config')"}
    use 'windwp/nvim-autopairs'
    use 'norcalli/nvim-colorizer.lua'
    use {
  'lewis6991/gitsigns.nvim',
  config = function()
  require('gitsigns').setup()
  end
}
    use {'folke/which-key.nvim', event ='BufWinEnter', config ="require('whichkey-config')"}
    use {
  'nvim-telescope/telescope.nvim',
   requires = { {'nvim-lua/plenary.nvim'} },
   event ='BufWinEnter' , 
   config ="require('telescope-config')"
}
use 'terrortylor/nvim-comment'
end,
config = {
  display = {
    open_fn = function()
      return require('packer.util').float({ border = 'single' })
    end
  }
}
})
