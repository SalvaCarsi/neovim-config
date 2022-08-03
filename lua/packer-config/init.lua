return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'
    use 'nvim-treesitter/nvim-treesitter'
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make'}
    use 'jose-elias-alvarez/null-ls.nvim'
    use 'tpope/vim-fugitive'
    use 'tpope/vim-commentary'
    use 'yuezk/vim-js'
    use 'HerringtonDarkholme/yats.vim'
    use 'maxmellon/vim-jsx-pretty'
    use 'sheerun/vim-polyglot'
    use 'lewis6991/gitsigns.nvim'

    use 'folke/tokyonight.nvim'
    use 'EdenEast/nightfox.nvim'
    use 'tamelion/neovim-molokai'
    use 'ellisonleao/gruvbox.nvim'
end)
