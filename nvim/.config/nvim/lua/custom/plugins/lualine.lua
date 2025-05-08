local catppuccin = require 'lualine.themes.catppuccin-mocha'

catppuccin.normal.c.bg = '#1e1e2e' -- Base

return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('lualine').setup {
      options = {
        theme = catppuccin,
        section_separators = { left = '', right = '' },
        component_separators = { left = '|', right = '|' },
      },
      sections = {
        -- lualine_a = { 'mode' },
        lualine_a = {
          { 'mode', separator = { left = '', right = '' }, right_padding = 0 },
        },
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_c = { 'filename' },
        -- lualine_c = {},
        lualine_x = {
          {
            'filetype',
            colored = false,
            icon = { align = 'right' },
          },
        },
        lualine_y = { 'progress' },
        -- lualine_z = { 'location' },
        lualine_z = {
          { 'location', separator = { left = '', right = '' }, right_padding = 0 },
        },
      },
    }
  end,
}
