export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:=${HOME}/.config}
export ZDOTDIR=${ZDOTDIR:=${XDG_CONFIG_HOME}/zsh}

export LANG=ja_JP.UTF-8
export LC_ALL=$LANG

export EDITOR="code --wait"

export HISTFILE=$HOME/.zsh_history
export HISTSIZE=1000000
export SAVEHIST=1000000

export PATH=$HOME/.anyenv/bin:$PATH
export PATH=$HOME/.local/bin:$PATH
