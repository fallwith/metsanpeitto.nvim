local M = {}

function M.load()
  if vim.g.colors_name then
    vim.cmd('highlight clear')
  end
  if vim.fn.exists('syntax_on') == 1 then
    vim.cmd('syntax reset')
  end

  vim.o.termguicolors = true
  vim.g.colors_name = 'metsanpeitto'

  local palette = require('metsanpeitto.palette')
  require('metsanpeitto.highlights').apply(palette)
end

M.palette = function()
  return require('metsanpeitto.palette')
end

return M
