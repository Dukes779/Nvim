local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.api.nvim_command('packadd packer.nvim')
end


return require 'packer'.startup({function(use)
    use 'wbthomason/packer.nvim'
--     use ({
-- 	"catppuccin/nvim",
-- 	as = "catppuccin",
--     -- event = "BufWinEnter",
--     config="require('colorschemes-config')"
-- })
    -- use { 'luisiacc/gruvbox-baby' , config="require('gruvbox')" , event = "BufWinEnter"}
    use { 'folke/tokyonight.nvim' , config="require('tokyo')",  event = "BufWinEnter"}
    -- use { "EdenEast/nightfox.nvim" , config="require('gotham')"} 
--     use({
--     'rose-pine/neovim',
--     as = 'rose-pine',
--     tag = 'v1.*',
--     config = function()
--         vim.cmd('colorscheme rose-pine')
--     end
-- })
    use { "xiyaowong/nvim-transparent" ,config="require('trans')"}
    use {'kyazdani42/nvim-tree.lua', config="require('nvim-tree-config')", requires = 'kyazdani42/nvim-web-devicons' }
    use {'neovim/nvim-lspconfig', config="require('lsp-config.language-servers')"}
    use 'hrsh7th/nvim-cmp'  -- Autocompletion plugin
    use { 'hrsh7th/cmp-nvim-lsp' , config="require('lsp-config.nvim-cmp')" } -- LSP source for nvim-cmp
    use { "lukas-reineke/indent-blankline.nvim", config = "require('blankline-config')", event ='BufRead' }
    use { "lukas-reineke/lsp-format.nvim" , config = "require('lsp-format-config')", cmd = "Format"}
    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip' -- Snippets plugin
    use 'onsails/lspkind.nvim'
    use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }, event ="BufWinEnter", config="require('lualine-config')"
}
    use 'windwp/nvim-ts-autotag'
    use 'nvim-telescope/telescope-symbols.nvim'
    use { 'nvim-treesitter/nvim-treesitter', run = "TSUpdate" , config="require('treesitter-config')"}
    use {'glepnir/dashboard-nvim', event ="BufWinEnter" , config ="require('dashboard-config')"}
    use 'tami5/lspsaga.nvim'
    use {'p00f/nvim-ts-rainbow', after='nvim-treesitter'}
    use { 'akinsho/bufferline.nvim', tag = "v1.*", event ="BufWinEnter" , config ="require('bufferline-config')"}
    use { 'windwp/nvim-autopairs', config="require('autopairs-config')"}
    use {'norcalli/nvim-colorizer.lua', config="require('colorizer-config')", event='BufRead'}
    use {
  'lewis6991/gitsigns.nvim',
  config = function()
  require('gitsigns').setup{ current_line_blame = true }
  end
}
    use {'folke/which-key.nvim', event ='BufWinEnter', config ="require('whichkey-config')"}
    use {
  'nvim-telescope/telescope.nvim',
   requires = { {'nvim-lua/plenary.nvim'} },
   event ='BufWinEnter' , 
   config ="require('telescope-config')"
}
use { 'terrortylor/nvim-comment', config="require('comment-config')" }
end,
config = {
  display = {
    open_fn = function()
      return require('packer.util').float({ border = 'single' })
    end
  }
}
})
