# generates screenshots/tihea.png -- the default dark variant.
#
# the -c flag overrides whatever after/plugin/colorscheme.lua picks
# randomly, since -c commands run after the user's init. the lualine
# autocmd watching ColorScheme will swap the statusline theme to match.
#
# Output is required by VHS; the .gif is a byproduct of producing the
# .png screenshot. The Makefile cleans up the .gif files.

Output screenshots/tihea.gif

Set Width 1600
Set Height 914
Set FontSize 24
Set Padding 20

Hide
Type `nvim -c 'colorscheme metsanpeitto-tihea' screenshots/source/experiment.rb`
Enter
Sleep 4s
Show

Screenshot screenshots/tihea.png
Sleep 1s
