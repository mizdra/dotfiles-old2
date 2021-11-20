test -t 0 || test ! -z $CI || exit

eval "$(sheldon source)"

autoload -U compinit && compinit

bindkey -e

# ctrl-b/f で単語単位の前進/後進
bindkey '' backward-word
bindkey '' forward-word

bindkey '' autosuggest-accept

setopt hist_ignore_all_dups # 同じコマンドをヒストリに保存しない
setopt hist_reduce_blanks # 無駄なスペースを消してヒストリに保存する
setopt share_history # ヒストリを共有

source $ZDOTDIR/.zshrc.anyframe

source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc

eval "$(anyenv init - zsh)"
eval "$(starship init zsh)"