HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

bindkey '\e[A' history-search-backward
bindkey '\e[B' history-search-forward
bindkey '^F' forward-word

# Highlight tab completion
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit

# Enable colors:
autoload -U colors && colors

# vi mode
bindkey -v
export KEYTIMEOUT=1

# Change prompt
PS1="[%B%{$fg[red]%}%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}%{$reset_color%}]$%b "

# AUTOCOMPLETE LIKE FISH
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null

alias ls='ls --color=auto'
alias lf='lfrun'
# wal -R -q
# export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
