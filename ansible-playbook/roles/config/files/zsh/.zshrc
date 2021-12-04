test -t 0 || test ! -z $CI || exit

include () {
    [[ -f "$1" ]] && source "$1"
}


eval "$(/opt/homebrew/bin/brew shellenv)"

eval "$(sheldon --quiet source)"

autoload -U compinit && compinit

bindkey -e

# ctrl-b/f で単語単位の前進/後進
bindkey '' backward-word
bindkey '' forward-word

bindkey '' autosuggest-accept

setopt hist_ignore_all_dups # 同じコマンドをヒストリに保存しない
setopt hist_reduce_blanks # 無駄なスペースを消してヒストリに保存する
setopt share_history # ヒストリを共有
setopt ignore_eof # Ctrl+Dでzshを終了しない
setopt auto_cd # ディレクトリ名だけでcdする

# ls に色をつける
export LSCOLORS=Gxfxcxdxbxegedabagacad
alias ls="ls -G"
alias la='ls -a'
alias ll='ls -l'
alias mv='mv -i'
# diff に色をつける
if [[ -x `which colordiff` ]]; then
  alias diff='colordiff -u'
else
  alias diff='diff -u'
fi
# `src` で `.zshrc` を再読み込み
alias src="source ${ZDOTDIR}/.zshrc"
alias ss='git status --short --branch'
alias d='git diff --color-words'
alias l='git log --graph --decorate --oneline -10'
alias newpw='pwgen 30 1 -s -y'
alias s='git switch'
alias sc='git switch -c'
alias sy='git-sy'
# sudo の後のコマンドでエイリアスを有効にする
alias sudo='sudo '

# `~gomi` で `~/src/localhost/gomi` に移動できるように
hash -d gomi=~/src/localhost/gomi

source $ZDOTDIR/.zshrc.anyframe

include /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc

eval "$(anyenv init - zsh)"
eval "$(starship init zsh)"
