source ~/dotfiles/themes/minimal/minimal.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias n="nvim"
c() { cd "$@" && ls }

# added by Anaconda3 2018.12 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/Users/Joshua/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/Users/Joshua/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/Joshua/anaconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/Users/Joshua/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
#
