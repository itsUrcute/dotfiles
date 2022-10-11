source ~/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# general packages
antigen bundle archlinux
antigen bundle git
antigen bundle pip
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# autosuggestions
antigen bundle zsh-users/zsh-autosuggestions

# Load the theme.
antigen theme robbyrussell

# Tell Antigen that you're done.
 antigen apply

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt extendedglob
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/urcute/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

alias ls='exa -al --color=always --group-directories-first'
alias la='exa -a --color=always --group-directories-first'
alias ll='exa -l --color=always --group-directories-first'
alias lt='exa -aT --color=always --group-directories-first'

# alias for dot files repo command
alias config='/usr/bin/git --git-dir=/home/urcute/.cfg/ --work-tree=/home/urcute'

# commit and push dotfiles
alias dotupdate='config commit -am "bump" && config push'

# alias for faster poweroff
alias off='systemctl poweroff'

export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

(cat ~/.cache/wal/sequences &)
