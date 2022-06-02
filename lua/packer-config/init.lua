return require 'packer'.startup(function()
    use 'wbthomason/packer.nvim'
    use({
	"catppuccin/nvim",
	as = "catppuccin"
})
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
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
}
    use 'windwp/nvim-ts-autotag'
    use { 'nvim-treesitter/nvim-treesitter', run = "TSUpdate" }
    use 'glepnir/dashboard-nvim'
    use 'tami5/lspsaga.nvim'
    use 'p00f/nvim-ts-rainbow'
    use 'akinsho/bufferline.nvim'
    use 'windwp/nvim-autopairs'
    use 'norcalli/nvim-colorizer.lua'
    use {
  'lewis6991/gitsigns.nvim',
  config = function()
  require('gitsigns').setup()
  end
}
    use 'folke/which-key.nvim'
    use {
  'nvim-telescope/telescope.nvim',
   requires = { {'nvim-lua/plenary.nvim'} }
}
use 'terrortylor/nvim-comment'
end)
