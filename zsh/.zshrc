HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

setopt appendhistory autocd extendedglob nomatch notify

# No beeping. Be nice.
unsetopt beep

# Behave like vim.
bindkey -v

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/sooraj/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Prompts for zsh
autoload -U promptinit
promptinit

# Help
autoload -U run-help
autoload run-help-git
autoload run-help-svn
autoload run-help-svk
unalias run-help
alias help=run-help

# Fish like syntax highligting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source /home/sooraj/Code/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle archlinux
antigen bundle command-not-found

# Requires autoenv: https://github.com/kennethreitz/autoenv
antigen bundle autoenv

# More vi-like key bindings for zsh. See:
# https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/vi-mode
antigen bundle vi-mode

# k is the new l?
antigen bundle rimraf/k

# Syntax highlighting bundle.
#antigen bundle zsh-users/zsh-syntax-highlighting

# Suggestions for commands
antigen bundle tarruda/zsh-autosuggestions

# bd to go back a directory
antigen-bundle Tarrasch/zsh-bd

# Colors for directories
antigen bundle joel-porquet/zsh-dircolors-solarized

# Themes

## YS
antigen theme ys

## Bullet Train
#antigen theme https://github.com/caiogondim/bullet-train-oh-my-zsh-theme bullet-train

## Pure
#antigen bundle mafredri/zsh-async
#antigen bundle sindresorhus/pure

# Tell antigen that you're done.
antigen apply

# Aliases
if [ -f ~/.zshrc_aliases ]; then
    source ~/.zshrc_aliases
else
    print "404: ~/.zshrc_aliases not found."
fi