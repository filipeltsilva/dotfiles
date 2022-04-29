color1='39'
color2='81'
color3='147'

error_color='196'
success_color='34'
warning_color='202'

new_line=$'\n'

GREP_COLORS="mc=38;5;${color1};1:ms=38;5;${color1};1:mt=38;5;${color1};1"

LS_COLORS="di=38;5;${color2};1:ln=38;5;${color3};1"

LESS_TERMCAP_md=$(tput bold; tput setaf ${color2})  # start bold
LESS_TERMCAP_so=$(tput bold; tput setaf ${color3})  # start standout (reverse video)
LESS_TERMCAP_us=$(tput smul; tput setaf ${color3})  # start underline
