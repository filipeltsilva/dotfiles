### COLORED MAN PAGES ###
man() {
	LESS_TERMCAP_md=$'\e[38;5;200;1m'   # start bold
	LESS_TERMCAP_so=$'\e[38;5;200;1m'  # start standout (reverse video)
	LESS_TERMCAP_us=$'\e[38;5;200;4m'  # start underline
	command man "$@"
}

### MY COLORS AND TEXT FORMAT DEFINITIONS ###
color1='39'
color2='81'
color3='147'

error_color='196'
success_color='34'
warning_color='202'

new_line=$'\n'
