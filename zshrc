autoload -Uz add-zsh-hook vcs_info

setopt prompt_subst

add-zsh-hook precmd vcs_info
zstyle ':vcs_info:*' formats ' %s(%F{blue}%b%f)'

PS1='%m@%T %F{green}%~%f${vcs_info_msg_0_} $ '

export PATH=$PATH:~/.local/bin
set -o vi

# For CLI search with vim mode
bindkey "^R" history-incremental-search-backward

# asdf
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"
# Rust in asdf
. "/Users/mlitherland/.asdf/installs/rust/1.90.0/env"  

# For libpq to be in path
# export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

# For compilers to find libpq you may need to set:
export LDFLAGS="-L/opt/homebrew/opt/libpq/lib"
export CPPFLAGS="-I/opt/homebrew/opt/libpq/include"
export PATH="/opt/homebrew/opt/postgresql@16/bin:$PATH"

eval "$(/opt/homebrew/bin/brew shellenv)"
export PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"
export PATH="/opt/homebrew/opt/bison/bin:$PATH"
export PATH="/opt/homebrew/opt/findutils/libexec/gnubin:$PATH"
