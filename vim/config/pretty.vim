let iterm_profile = $ITERM_PROFILE

if iterm_profile == "Dark"
    set background=dark
else
    set background=light        " Set solarized background color
endif

set background=dark

"256 colors in terminal
"set t_CO=256 
set termguicolors

colorscheme gruvbox
