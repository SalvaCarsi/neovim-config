require('settings')
require('mappings')
require('packer-config')
require('telescope-config')
require('null-ls-config')
require('gitsigns').setup{
    signcolumn = auto,
    on_attach = function()
    vim.wo.signcolumn = "yes"
    end
}
require'nvim-treesitter.configs'.setup {
  --> nvim-ts-autotag module
  autotag = { enable = true },
}
require('nvim-autopairs-config')
