require('telescope').setup{
  defaults = {
    prompt_prefix = "   ",
    selection_caret = " ",
    path_display = { "smart"},
    color_devicons = true,
    layout_strategy = 'horizontal',
    layout_config = { width = 0.9, height = 0.9, prompt_position = 'top' },
  },
    pickers = {
    find_files = {
      -- theme = "dropdown",
    }
  },
  extensions = {
    -- ...
  }
}
