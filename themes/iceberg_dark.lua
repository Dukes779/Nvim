-- Copyright (c) 2020-2021 shadmansaleh
-- MIT license, see LICENSE for more details.
-- Genarated by lightline to lualine theme converter
-- https://gist.github.com/shadmansaleh/000871c9a608a012721c6acc6d7a19b9
-- stylua: ignore
local colors = {
  color2   = '#161821',
  color3   = '#96cdfb',
  color4   = '#6b7089',
  color5   = '#2e313f',
  color7   = '#ddb6f2',
  color8   = '#abe9b3',
  color9   = '#0B0716',
  color10  = '#e8a2af',
  color11  = '#0B0716',
  color12  = '#cba6f7',
  color15  = '#161320',
}

return {
  visual = {
    a = { fg = colors.color9, bg = colors.color12, gui = 'bold' },
    b = { fg = colors.color12, bg = colors.color10 },
  },
  replace = {
    a = { fg = colors.color2, bg = colors.color10, gui = 'bold' },
    b = { fg = colors.color4, bg = colors.color10 },
  },
  inactive = {
    c = { fg = colors.color9, bg = colors.color10 },
    a = { fg = colors.color9, bg = colors.color10, gui = 'bold' },
    b = { fg = colors.color9, bg = colors.color10 },
  },
  normal = {
    c = { fg = colors.color4, bg = colors.color9 },
    a = { fg = colors.color9, bg = colors.color3, gui = 'bold' },
    b = { fg = colors.color3, bg = colors.color15 },
  },
  insert = {
    a = { fg = colors.color9, bg = colors.color8, gui = 'bold' },
    b = { fg = colors.color8, bg = colors.color15 },
  },
}
