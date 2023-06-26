local dashboard = require("dashboard")


dashboard.setup({
  theme = 'hyper',
  config = {
    week_header = {
     enable = true,
    },
    shortcut = {
      { desc = ' Update', group = '@property', action = 'Lazy update', key = 'u' },
      {
        icon = ' ',
        icon_hl = '@variable',
        desc = 'Files',
        group = 'Label',
        action = 'Telescope find_files',
        key = 'f',
      },
      {
        desc = ' cwd',
        group = 'DiagnosticHint',
        action = 'e . | NvimTreeToggle',
        key = 'a',
      },
      {
        desc = ' config',
        group = 'Number',
        action = 'cd /home/mansj/.config | e . | NvimTreeToggle',
        key = 'd',
      },
    },
  },
})
