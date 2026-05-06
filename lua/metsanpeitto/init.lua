local M = {}

M.config = {
  variant = nil, -- nil = auto-resolve from vim.o.background
}

function M.setup(opts)
  M.config = vim.tbl_deep_extend('force', M.config, opts or {})
end

local function resolve_variant(override)
  if override then return override end
  if M.config.variant then return M.config.variant end
  if vim.o.background == 'light' then return 'aukea' end
  return 'tihea'
end

function M.load(variant)
  local resolved = resolve_variant(variant)
  local palette_mod = require('metsanpeitto.palette')

  if vim.g.colors_name then
    vim.cmd('highlight clear')
  end
  if vim.fn.exists('syntax_on') == 1 then
    vim.cmd('syntax reset')
  end

  vim.o.termguicolors = true
  vim.o.background = palette_mod.is_light[resolved] and 'light' or 'dark'
  vim.g.colors_name = variant and ('metsanpeitto-' .. variant) or 'metsanpeitto'

  require('metsanpeitto.highlights').apply(palette_mod.get(resolved))
end

function M.palette()
  return require('metsanpeitto.palette').get(resolve_variant())
end

return M
