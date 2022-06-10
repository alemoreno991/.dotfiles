######################################################################
#
#
#           ██████╗  █████╗ ███████╗██╗  ██╗██████╗  ██████╗
#           ██╔══██╗██╔══██╗██╔════╝██║  ██║██╔══██╗██╔════╝
#           ██████╔╝███████║███████╗███████║██████╔╝██║     
#           ██╔══██╗██╔══██║╚════██║██╔══██║██╔══██╗██║     
#           ██████╔╝██║  ██║███████║██║  ██║██║  ██║╚██████╗
#           ╚═════╝ ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝
#
#
######################################################################

source ~/.bash_profile

# Set Vim as my default editor
export EDITOR=vim

alias gs='git status'

alias ga='git add'

alias gc='git commit'

alias gl='git log --oneline'

alias gb='git checkout -b'

alias gd='git diff'

alias ..='cd ..;pwd'

alias ...='cd ../..;pwd'

alias ....='cd ../../..;pwd'

alias h='history'

alias tree='tree --dirsfirst -F'

alias mkdir='mkdir -p -v'

alias vim='bash ~/.local/bin/lvim'

alias vimrc='vim ~/.vimrc'

alias bashrc='vim ~/.bashrc'

alias open='xdg-open'

alias jan='cal -m 01'
alias feb='cal -m 02'
alias mar='cal -m 03'
alias apr='cal -m 04'
alias may='cal -m 05'
alias jun='cal -m 06'
alias jul='cal -m 07'
alias aug='cal -m 08'
alias sep='cal -m 09'
alias oct='cal -m 10'
alias nov='cal -m 11'
alias dec='cal -m 12'

function hg() {
    history | grep "$1";
}

function find_largest_files() {
    du -h -x -s -- * | sort -r -h | head -20;
}

function git_init() {
    if [ -z "$1" ]; then
        printf "%s
" "Please provide a directory name.";
    else
        mkdir "$1";
        builtin cd "$1";
        pwd;
        git init;
        touch readme.md .gitignore LICENSE;
        echo "# $(basename $PWD)" >> readme.md
    fi
}

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('~/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "~/anaconda3/etc/profile.d/conda.sh" ]; then
        . "~/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="~/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

###-----------------------------------------------------
### synth-shell-greeter.sh
#if [ -f ~/.config/synth-shell/synth-shell-greeter.sh ] && [ -n "$( echo $- | grep i )" ]; then
#	source ~/.config/synth-shell/synth-shell-greeter.sh
#fi

##-----------------------------------------------------
## synth-shell-prompt.sh
if [ -f ~/.config/synth-shell/synth-shell-prompt.sh ] && [ -n "$( echo $- | grep i )" ]; then
	source ~/.config/synth-shell/synth-shell-prompt.sh
fi

##-----------------------------------------------------
## better-ls
if [ -f ~/.config/synth-shell/better-ls.sh ] && [ -n "$( echo $- | grep i )" ]; then
	source ~/.config/synth-shell/better-ls.sh
fi

##-----------------------------------------------------
## alias
if [ -f ~/.config/synth-shell/alias.sh ] && [ -n "$( echo $- | grep i )" ]; then
	source ~/.config/synth-shell/alias.sh
fi

##-----------------------------------------------------
## better-history
if [ -f ~/.config/synth-shell/better-history.sh ] && [ -n "$( echo $- | grep i )" ]; then
	source ~/.config/synth-shell/better-history.sh
fi

#neofetch --w3m ~/Descargas/ciclon.jpg

neofetch
source /usr/share/rvm/gems/ruby-3.0.0/gems/colorls-1.4.6/lib/tab_complete.sh
