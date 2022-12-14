local status_ok, telescope = pcall(require, 'telescope')

if not status_ok then
  return
end

local actions = require('telescope.actions')

telescope.load_extension('fzf')
telescope.load_extension("ag")

telescope.setup({
    defaults = {

      prompt_prefix = '>',
      selection_caret = '❯ ',
      path_display = { 'truncate' },
      selection_strategy = 'reset',
      sorting_strategy = 'ascending',
      layout_strategy = 'horizontal',
      layout_config = {
        horizontal = {
          prompt_position = 'top',
          preview_width = 0.55,
          results_width = 0.8,
        },
        vertical = {
          mirror = false,
        },
        width = 0.87,
        height = 0.80,
        preview_cutoff = 120,
      },

      mappings = {
        i = {
          ['<C-j>'] = actions.move_selection_next,
          ['<C-k>'] = actions.move_selection_previous,
          ['<C-c>'] = actions.close,
          ['<CR>'] = actions.select_default,
          ['<C-x>'] = actions.select_horizontal,
          ['<C-v>'] = actions.select_vertical,
          ['<C-t>'] = actions.select_tab,
          ['<C-u>'] = actions.preview_scrolling_up,
          ['<C-d>'] = actions.preview_scrolling_down,
        },
      },
    },
    pickers = {},
    extensions = {},
  })
