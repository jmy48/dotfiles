source ~/dotfiles/themes/minimal/minimal.zsh
source ~/.bash_profile

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias n="nvim"
c() { cd "$@" && ls }
