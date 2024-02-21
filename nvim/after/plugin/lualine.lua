require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'rose-pine',
    compoent_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
    globalstatus = true,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {
      {'branch', icon = ''},
    },
    lualine_c = {{'filename', path = 1}},
    lualine_x = {},
    lualine_y = {{
      'diagnostics',
      symbols = {error = ' ', warn = ' ', info = ' ', hint = ' '},
      colored = true,
      update_in_insert = true,
      always_visible = true,
    }},
    lualine_z = {}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {
      {'branch', icon = ''},
    },
    lualine_c = {{'filename', path = 1}},
    lualine_x = {},
    lualine_y = {{
      'diagnostics',
      symbols = {error = ' ', warn = ' ', info = ' ', hint = ' '},
      colored = true,
      update_in_insert = false,
      always_visible = true,
    }},
    lualine_z = {'mode'}
    },
    tabline = {},
    extensions = {}
  }
