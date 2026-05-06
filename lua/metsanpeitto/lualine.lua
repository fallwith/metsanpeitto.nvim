local M = {}

function M.build(p)
  return {
    normal = {
      a = { fg = p.bg, bg = p.amber, gui = 'bold' },
      b = { fg = p.fg, bg = p.bg_float },
      c = { fg = p.fg_dim, bg = p.bg_dim },
    },
    insert = {
      a = { fg = p.bg, bg = p.green, gui = 'bold' },
      b = { fg = p.fg, bg = p.bg_float },
      c = { fg = p.fg_dim, bg = p.bg_dim },
    },
    visual = {
      a = { fg = p.bg, bg = p.violet, gui = 'bold' },
      b = { fg = p.fg, bg = p.bg_float },
      c = { fg = p.fg_dim, bg = p.bg_dim },
    },
    replace = {
      a = { fg = p.bg, bg = p.red, gui = 'bold' },
      b = { fg = p.fg, bg = p.bg_float },
      c = { fg = p.fg_dim, bg = p.bg_dim },
    },
    command = {
      a = { fg = p.bg, bg = p.peach, gui = 'bold' },
      b = { fg = p.fg, bg = p.bg_float },
      c = { fg = p.fg_dim, bg = p.bg_dim },
    },
    terminal = {
      a = { fg = p.bg, bg = p.blue, gui = 'bold' },
      b = { fg = p.fg, bg = p.bg_float },
      c = { fg = p.fg_dim, bg = p.bg_dim },
    },
    inactive = {
      a = { fg = p.fg_muted, bg = p.bg, gui = 'bold' },
      b = { fg = p.fg_muted, bg = p.bg },
      c = { fg = p.fg_muted, bg = p.bg },
    },
  }
end

return M
