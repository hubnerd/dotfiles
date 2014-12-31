# Source
source $HOME/.bin/zshrc.sh

# Load
autoload -U compinit promptinit colors
compinit
promptinit
colors

# Opts
setopt completealiases

# Keybinds
[[ -n "${key[PageUp]}" ]]  && bindkey "${key[PageUp]}" history-beginning-search-backward
[[ -n "${key[PageDown]}" ]]  && bindkey "${key[PageDown]}" history-beginning-search-forward

bindkey -M viins '^r' history-incremental-search-backward
bindkey -M vicmd '^r' history-incremental-search-backward

# Theme
PROMPT='%{$fg[red]%}%n%{$reset_color%}@%{$fg[white]%}%m %{$fg_no_bold[yellow]%}%~%{$reset_color%}$(git_super_status) %# '
RPROMPT="[%{$fg_no_bold[yellow]%}%?%{$reset_color%}]"

# Exports 
export HISTSIZE=20000
export HISTFILE="$HOME/.history"

# Colours - Nicked from debian bash
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
fi

export DEBFULLNAME=""
export DEBEMAIL=""
export EDITOR="/usr/bin/vim"
