color1='46'
color2='190'
color3='141'

error_color='196'
success_color='34'
warning_color='202'

new_line=$'\n'

neofetch_ascii_colors=($color3 $color3)
neofetch_colors=($color3 $color3 $color3 $color3 $color3)

export GREP_COLORS="mc=38;5;${color1};1:ms=38;5;${color1};1:mt=38;5;${color1};1"
export LS_COLORS="di=38;5;${color2};1:ln=38;5;${color3};1:ex=38;5;${color1};1"

export LESS_TERMCAP_md=$(tput bold; tput setaf ${color2})  # start bold
export LESS_TERMCAP_so=$(tput bold; tput setaf ${color3})  # start standout (reverse video)
export LESS_TERMCAP_us=$(tput smul; tput setaf ${color3})  # start underline
