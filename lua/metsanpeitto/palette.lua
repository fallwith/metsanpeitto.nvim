-- metsanpeitto palette
--
-- the cream-on-ink-blue contrast is the throughline; everything else
-- supports it with muted, never-neon accents.

return {
  -- backgrounds: deep ink-blue with bluer undertone than atomic
  bg          = '#1d2230',
  bg_dim      = '#181c28', -- sidebar / inactive splits
  bg_float    = '#232a3a', -- popups, floats
  bg_visual   = '#2e3a52', -- selection
  bg_cline    = '#232838', -- cursor line
  bg_border   = '#3a4258',
  bg_hl       = '#2a3145', -- pmenu sel, matches

  -- foregrounds: atomic cream as the signature
  fg          = '#f5ecd7',
  fg_dim      = '#c9c1ad',
  fg_muted    = '#8a8478',
  comment     = '#6c7a92', -- slate, juliana-adjacent

  -- accents: woodblock pastels, everforest-mossy, atomic-amber
  green       = '#a3bf83', -- strings (mossy)
  green_dim   = '#84b6a0', -- hints, success
  violet      = '#b094c4', -- keywords (kanagawa oni-violet)
  amber       = '#e5b86a', -- functions (warm gold)
  blue        = '#84b4d0', -- types (frost wave-blue)
  blue_dim    = '#7d9cc4', -- properties, info
  peach       = '#f0a070', -- numbers, constants
  orange      = '#d4956a', -- operators
  red         = '#e07a76', -- errors, exceptions
  pink        = '#d49aab', -- markup, special
  yellow      = '#e0c87a', -- warnings, search

  -- diff: muted hue-coded backgrounds
  diff_add    = '#1f3128',
  diff_change = '#252e44',
  diff_delete = '#3a2530',
  diff_text   = '#2f4253',

  none        = 'NONE',
}
