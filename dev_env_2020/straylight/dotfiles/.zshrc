# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd beep extendedglob nomatch
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/u0/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

source ~/powerlevel10k/powerlevel10k.zsh-theme
source ~/.purepower

