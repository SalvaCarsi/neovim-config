local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = ','

--> general purpose mappings
map('i', 'jj', '<esc>', opts)
map('n', 'qq', '<esc>:q<cr>', opts)
map('n', 'ss', ':wa<cr>', opts)
map('n', 'zf', 'zf%', opts)

--> splits mappings
map('n', '<leader>w', '<c-w>', opts)
map('n', '<c-h>', '<c-w>h', opts)
map('n', '<c-j>', '<c-w>j', opts)
map('n', '<c-k>', '<c-w>k', opts)
map('n', '<c-l>', '<c-w>l', opts)

--> resize window mappings
map('n', '<up>', ':resize +2<cr>', opts)
map('n', '<down>', ':resize -2<cr>', opts)
map('n', '<left>', ':vertical resize +2<cr>', opts)
map('n', '<right>', ':vertical resize -2<cr>', opts)

--> explore mappings
map('n', '<leader>e', ':Explore<cr>', opts)

--> telescope mappings
map('n', '<leader>f', ':Telescope find_files<CR>', opts)
map('n', '<leader>a', ':Telescope live_grep<CR>', opts)
map('n', '<leader>b', ':Telescope buffers<CR>', opts)

--> linting
vim.cmd('map <Leader>j :lua vim.lsp.buf.formatting_sync()<CR>')

--> colorscheme
vim.cmd('colorscheme terafox')
-- vim.g.tokyonight_style = "night"
-- vim.cmd('colorscheme gruvbox')
