vim.g.dashboard_default_executive = 'telescope'


vim.g.dashboard_custom_header = {
  [[              ▄▄▄▄▄▄▄▄▄              ]],
  [[           ▄█████████████▄           ]],
  [[   █████  █████████████████  █████   ]],
  [[   ▐████▌ ▀███▄       ▄███▀ ▐████▌   ]],
  [[    █████▄  ▀███▄   ▄███▀  ▄█████    ]],
  [[    ▐██▀███▄  ▀███▄███▀  ▄███▀██▌    ]],
  [[     ███▄▀███▄  ▀███▀  ▄███▀▄███     ]],
  [[     ▐█▄▀█▄▀███ ▄ ▀ ▄ ███▀▄█▀▄█▌     ]],
  [[      ███▄▀█▄██ ██▄██ ██▄█▀▄███      ]],
  [[       ▀███▄▀██ █████ ██▀▄███▀       ]],
  [[      █▄ ▀█████ █████ █████▀ ▄█      ]],
  [[      ███        ███        ███      ]],
  [[      ███▄    ▄█ ███ █▄    ▄███      ]],
  [[      █████ ▄███ ███ ███▄ █████      ]],
  [[      █████ ████ ███ ████ █████      ]],
  [[      █████ ████▄▄▄▄▄████ █████      ]],
  [[       ▀███ █████████████ ███▀       ]],
  [[         ▀█ ███ ▄▄▄▄▄ ███ █▀         ]],
  [[            ▀█▌▐█████▌▐█▀            ]],
  [[               ███████               ]],
    }

vim.g.dashboard_custom_section = {
  a = {description = {'  Scripts                                     SPC t'}, command = 'edit ~/Documents/Scripts'},
  d = {description = {'  Search Text                                 SPC f'}, command = 'Telescope live_grep' },
  b = {description = {'  Recent Files                                SPC r'}, command = 'Telescope oldfiles'  },
  e = {description = {'  Config-Lua                                  SPC l'}, command = 'edit ~/.config/nvim' },
  c = {description = {'  Config-Dwm                                  SPC d'}, command = 'edit ~/.config/suckless.2.0/suckless/dwm' }
}
vim.g.dashboard_custom_footer = {'"And I swear this. If you ever betray me, I will burn you alive." - Daenerys Targaryen '}

