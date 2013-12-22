
export EDITOR=vim
export LANG=ja_JP.UTF-8

bindkey -v

setopt auto_cd
setopt correct
setopt auto_pushd
setopt cdable_vars

export CLICOLOR=true
autoload -U colors
colors

autoload -U compinit promptinit
compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' list-colors '${LS_COLORS}'

autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end

#alias
alias lc="ls --color"
alias la="ls -a"
alias llh="ls -lh"
alias wmrc="vim ~/.config/openbox/rc.xml"
alias wmres="openbox --reconfigure"
alias shrc="vim ~/.zshrc"
alias hist="history"
alias mfe="vim ./Makefile"
alias home="cd ~"

#historys
HISTSIZE=20000
SAVEHIST=10000
HISTFILE=~/.zsh_history

