# Prompting Options
setopt PROMPT_SUBST

autoload -Uz add-zsh-hook vcs_info
add-zsh-hook precmd vcs_info

zstyle ':vcs_info:*' enable git cvs svn
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' unstagedstr ' *'
zstyle ':vcs_info:*' stagedstr ' +'
zstyle ':vcs_info:*' formats '(%b%u)'
zstyle ':vcs_info:*' actionformats '(%b|%a%c%u)'

user_info='%B%F{$color1}%n%f%b'
folder_info='%B%F{$color2}%3~%f%b'
git_info='%B%F{$color3}${vcs_info_msg_0_}%f%b'
prompt_info='%(?.%B%F{$color1}.%B%F{$error_color})%(!.#.>)%f%b '

export PROMPT="${new_line}${user_info} in ${folder_info} ${git_info} ${new_line}${prompt_info}"


