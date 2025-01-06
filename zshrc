autoload -Uz add-zsh-hook vcs_info

setopt prompt_subst

add-zsh-hook precmd vcs_info
zstyle ':vcs_info:*' formats ' %s(%F{blue}%b%f)'

PS1='%m@%T %F{green}%~%f${vcs_info_msg_0_} $ '
