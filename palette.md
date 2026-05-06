# metsanpeitto palette

The palette is intentionally muted. Cream foreground on ink-blue background
is the signature in `tihea` (the default); accents are woodblock pastels
rather than saturated primaries.

## Variants

`metsanpeitto` ships four palette variants that share the same structural
roles but evoke different forest moods:

| Variant  | Finnish gloss   | Mood                                          |
|----------|-----------------|-----------------------------------------------|
| `tihea`  | "tiheä", dense  | Default dark; cool ink-blue, mossy            |
| `aukea`  | "aukea", clearing | Light variant; warm parchment, deeper accents |
| `syksy`  | "syksy", autumn | Warm dark; autumn forest at twilight          |
| `sumu`   | "sumu", fog     | Desaturated dark; soft mist, daily-driver     |

Each variant is loadable via `:colorscheme metsanpeitto-<variant>` (e.g.
`:colorscheme metsanpeitto-syksy`), or by configuring the default through
`require('metsanpeitto').setup({ variant = 'syksy' })`. The bare
`:colorscheme metsanpeitto` resolves the variant from `vim.o.background`
(`light` -> `aukea`, otherwise `tihea`).

## Backgrounds

| Name        | tihea     | aukea     | syksy     | sumu      | Role                              |
|-------------|-----------|-----------|-----------|-----------|-----------------------------------|
| `bg`        | `#1d2230` | `#f4ead2` | `#2a2425` | `#272c34` | Main editor background            |
| `bg_dim`    | `#181c28` | `#e0d2a8` | `#221c1d` | `#21252c` | Sidebars, inactive splits         |
| `bg_float`  | `#232a3a` | `#ebe0bb` | `#322a2c` | `#2e333c` | Popups, floats, statusline        |
| `bg_visual` | `#2e3a52` | `#dcc285` | `#453843` | `#3c4556` | Visual selection                  |
| `bg_cline`  | `#232838` | `#eee2c0` | `#302828` | `#2b3039` | Cursor line                       |
| `bg_border` | `#3a4258` | `#b0a080` | `#4a3c40` | `#444958` | Float borders, splits             |
| `bg_hl`     | `#2a3145` | `#d8c598` | `#3a3033` | `#343a48` | Pmenu selection, LSP references   |

## Foregrounds

| Name       | tihea     | aukea     | syksy     | sumu      | Role                              |
|------------|-----------|-----------|-----------|-----------|-----------------------------------|
| `fg`       | `#f5ecd7` | `#3a4258` | `#f0e0c0` | `#dcd5c2` | Main foreground                   |
| `fg_dim`   | `#c9c1ad` | `#5a6175` | `#cab896` | `#b5b0a0` | Parameters, delimiters, secondary |
| `fg_muted` | `#8a8478` | `#7d8290` | `#8a7d6a` | `#7a7770` | Non-text, gutters, deemphasis     |
| `comment`  | `#6c7a92` | `#7e8595` | `#7d6f7d` | `#727885` | Comments (italic)                 |

## Accents

| Name        | tihea     | aukea     | syksy     | sumu      | Role                          |
|-------------|-----------|-----------|-----------|-----------|-------------------------------|
| `green`     | `#a3bf83` | `#5a8045` | `#a8a558` | `#9eb88a` | Strings, additions            |
| `green_dim` | `#84b6a0` | `#3a7560` | `#86a07a` | `#82a89c` | Hints, success                |
| `violet`    | `#b094c4` | `#7d5ca3` | `#bf8aa8` | `#aa9ac0` | Keywords                      |
| `amber`     | `#e5b86a` | `#a07820` | `#e8a558` | `#dab078` | Functions, titles             |
| `blue`      | `#84b4d0` | `#3a6a8a` | `#80a5b8` | `#88aac8` | Types, modules                |
| `blue_dim`  | `#7d9cc4` | `#4a7595` | `#7d96a8` | `#7e95b8` | Properties, info diagnostics  |
| `peach`     | `#f0a070` | `#b85a30` | `#e89060` | `#e89e80` | Numbers, constants, booleans  |
| `orange`    | `#d4956a` | `#9a6028` | `#cc7a48` | `#cc9078` | Operators                     |
| `red`       | `#e07a76` | `#a83a3a` | `#d86855` | `#d8857c` | Errors, exceptions            |
| `pink`      | `#d49aab` | `#a85878` | `#c88a99` | `#cca0ac` | Markup, includes, macros      |
| `yellow`    | `#e0c87a` | `#7a6018` | `#dab85a` | `#d8c280` | Warnings, search              |

## Diff backgrounds

| Name          | tihea     | aukea     | syksy     | sumu      | Role          |
|---------------|-----------|-----------|-----------|-----------|---------------|
| `diff_add`    | `#1f3128` | `#d8e8c0` | `#2c3322` | `#222e26` | Additions     |
| `diff_change` | `#252e44` | `#d4dde8` | `#2c2738` | `#252b3a` | Modifications |
| `diff_delete` | `#3a2530` | `#e8d0d0` | `#3d2622` | `#332624` | Deletions     |
| `diff_text`   | `#2f4253` | `#c8d4dc` | `#3a3045` | `#2c3a47` | Inline diff   |

## Programmatic access

```lua
-- the currently active palette (resolves the configured/auto variant)
local palette = require('metsanpeitto').palette()

-- a specific variant by name
local syksy = require('metsanpeitto.palette').get('syksy')

-- the full table of variants (e.g. for plugins building variant pickers)
local variants = require('metsanpeitto.palette').variants
```
