-- metsanpeitto palette
--
-- the cream-on-ink-blue contrast is the throughline; everything else
-- supports it with muted, never-neon accents.
--
-- four variants share the metsanpeitto identity, each evoking a different
-- forest mood:
--   tihea  (tiheä, "dense")     -- default dark; cool ink-blue, mossy
--   aukea  (aukea, "clearing")  -- light variant
--   syksy  (syksy, "autumn")    -- warmer dark; leafier accents
--   sumu   (sumu,  "fog")       -- desaturated dark; softer mood
--
-- variant keys are ASCII for command-line ergonomics; the diacritics live
-- in documentation and prose.

local M = {}

-- tihea: the original metsanpeitto palette (unchanged).
local tihea = {
  bg          = '#1d2230',
  bg_dim      = '#181c28',
  bg_float    = '#232a3a',
  bg_visual   = '#2e3a52',
  bg_cline    = '#232838',
  bg_border   = '#3a4258',
  bg_hl       = '#2a3145',

  fg          = '#f5ecd7',
  fg_dim      = '#c9c1ad',
  fg_muted    = '#8a8478',
  comment     = '#6c7a92',

  green       = '#a3bf83',
  green_dim   = '#84b6a0',
  violet      = '#b094c4',
  amber       = '#e5b86a',
  blue        = '#84b4d0',
  blue_dim    = '#7d9cc4',
  peach       = '#f0a070',
  orange      = '#d4956a',
  red         = '#e07a76',
  pink        = '#d49aab',
  yellow      = '#e0c87a',

  diff_add    = '#1f3128',
  diff_change = '#252e44',
  diff_delete = '#3a2530',
  diff_text   = '#2f4253',

  none        = 'NONE',
}

-- aukea: light variant. inverts the lightness signature (ink-on-parchment
-- instead of cream-on-ink-blue) while preserving the accent personality.
-- bg is warm parchment, deliberately echoing the dark mode's fg cream so
-- the two variants feel like a pair. accents shift ~30% darker to hold
-- contrast on the light bg, with a touch more saturation to keep them
-- from feeling washed out.
local aukea = {
  -- backgrounds: warm parchment, sunlit clearing
  bg          = '#f4ead2', -- main parchment (echoes tihea's fg)
  bg_dim      = '#e0d2a8', -- sidebars / inactive (recedes)
  bg_float    = '#ebe0bb', -- popups, floats (slight edge against bg)
  bg_visual   = '#dcc285', -- selection
  bg_cline    = '#eee2c0', -- cursor line (very subtle)
  bg_border   = '#b0a080',
  bg_hl       = '#d8c598', -- pmenu sel, matches

  -- foregrounds: softened slate-ink, mirrors tihea's bg family
  fg          = '#3a4258',
  fg_dim      = '#5a6175',
  fg_muted    = '#7d8290',
  comment     = '#7e8595', -- slate, italic

  -- accents: deeper woodblock tones for light bg
  green       = '#5a8045', -- strings (mossy, deeper grass)
  green_dim   = '#3a7560',
  violet      = '#7d5ca3', -- keywords (dusty, deeper)
  amber       = '#a07820', -- functions (warm gold → autumn earth)
  blue        = '#3a6a8a', -- types (frost → deep sky)
  blue_dim    = '#4a7595',
  peach       = '#b85a30', -- numbers, constants (copper)
  orange      = '#9a6028', -- operators
  red         = '#a83a3a', -- errors (deep cranberry)
  pink        = '#a85878', -- markup
  yellow      = '#7a6018', -- warnings, search (mustard)

  -- diff: light tinted backgrounds
  diff_add    = '#d8e8c0',
  diff_change = '#d4dde8',
  diff_delete = '#e8d0d0',
  diff_text   = '#c8d4dc',

  none        = 'NONE',
}

-- syksy: autumn variant. shifts the bg from cool ink-blue toward warm
-- brown-violet (autumn forest at twilight), warms the cream fg slightly
-- toward honey, and rotates the accents along the warm-cool axis: greens
-- shift mossy → olive/leaf-yellow, blues desaturate to dusky sky, ambers
-- and reds get richer (ember/rust/maple), violets become mauve-rose.
-- the goal is "same theme, different season" -- recognizably metsanpeitto
-- but warmer and leafier.
local syksy = {
  -- backgrounds: warm dark, autumn forest at twilight
  bg          = '#2a2425', -- warm ink, brown-violet undertone
  bg_dim      = '#221c1d',
  bg_float    = '#322a2c',
  bg_visual   = '#453843',
  bg_cline    = '#302828',
  bg_border   = '#4a3c40',
  bg_hl       = '#3a3033',

  -- foregrounds: warmer cream, sand/honey
  fg          = '#f0e0c0',
  fg_dim      = '#cab896',
  fg_muted    = '#8a7d6a',
  comment     = '#7d6f7d', -- warm slate, faint violet

  -- accents: autumn forest tones
  green       = '#a8a558', -- strings (olive, fallen leaves)
  green_dim   = '#86a07a', -- hints (sage)
  violet      = '#bf8aa8', -- keywords (mauve-rose, autumn wine)
  amber       = '#e8a558', -- functions (warm amber, fall sun)
  blue        = '#80a5b8', -- types (dusky sky, desaturated)
  blue_dim    = '#7d96a8',
  peach       = '#e89060', -- numbers (glowing ember)
  orange      = '#cc7a48', -- operators (pumpkin)
  red         = '#d86855', -- errors (rust maple)
  pink        = '#c88a99', -- markup (rose hip)
  yellow      = '#dab85a', -- warnings (mustard, autumn grass)

  -- diff: warm-tinted backgrounds
  diff_add    = '#2c3322',
  diff_change = '#2c2738',
  diff_delete = '#3d2622',
  diff_text   = '#3a3045',

  none        = 'NONE',
}

-- sumu: fog variant. shifts the bg from saturated ink-blue (tihea) toward
-- a more neutral grey-slate (~half the saturation, slightly lifted), pulls
-- the fg cream cooler toward stone, and desaturates every accent ~20-25%
-- so the woodblock pastels feel diffused -- "seen through mist." designed
-- for long daily-use sessions where comfort matters more than vibrancy.
local sumu = {
  -- backgrounds: neutral slate, fog-shrouded; lifted ~10 luminance points
  -- vs tihea so the "fog softens darkness" metaphor lands and long daily
  -- sessions stay comfortable -- but darker than catppuccin-frappe territory
  -- so the "deep dusk fog" mood holds.
  bg          = '#272c34', -- main; subtle blue undertone, low saturation
  bg_dim      = '#21252c', -- sidebars / inactive
  bg_float    = '#2e333c', -- floats / popups
  bg_visual   = '#3c4556', -- selection
  bg_cline    = '#2b3039', -- cursor line
  bg_border   = '#444958',
  bg_hl       = '#343a48',

  -- foregrounds: cream pulled cooler, stone-tinted
  fg          = '#dcd5c2', -- main (less warm than tihea's #f5ecd7)
  fg_dim      = '#b5b0a0',
  fg_muted    = '#7a7770',
  comment     = '#727885', -- slate, slightly lifted from tihea's #6c7a92

  -- accents: desaturated woodblock pastels, seen through mist
  green       = '#9eb88a', -- strings (muted mossy)
  green_dim   = '#82a89c', -- hints (muted sage-teal)
  violet      = '#aa9ac0', -- keywords (muted lilac)
  amber       = '#dab078', -- functions (gentler gold)
  blue        = '#88aac8', -- types (softer frost)
  blue_dim    = '#7e95b8',
  peach       = '#e89e80', -- numbers, constants (dusty peach)
  orange      = '#cc9078', -- operators
  red         = '#d8857c', -- errors (rose, less crimson)
  pink        = '#cca0ac', -- markup
  yellow      = '#d8c280', -- warnings, search

  -- diff: muted tinted backgrounds
  diff_add    = '#222e26',
  diff_change = '#252b3a',
  diff_delete = '#332624',
  diff_text   = '#2c3a47',

  none        = 'NONE',
}

M.variants = {
  tihea = tihea,
  aukea = aukea,
  syksy = syksy,
  sumu  = sumu,
}

-- which variants are dark (drives vim.o.background).
M.is_light = {
  aukea = true,
  tihea = false,
  syksy = false,
  sumu  = false,
}

function M.get(variant)
  return M.variants[variant] or M.variants.tihea
end

return M
