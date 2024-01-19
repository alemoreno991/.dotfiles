###############################################################################
#
#   This configuration file is the entrypoint for the `.bashrc` file. It is 
#   structured to source other `bash_like` files with very specific purposes.
#
# `.bash_config`
#  ------------
#       Configuration that affects the behaviour of the shell.
#
# `.bash_exports`
#  ---------------
#       Export variables (E.g. PATH).
#       
# `.bash_aliases`
#  -------------
#       Define aliases.
#
# `.bash_prompt`
#  -------------
#       Configure the prompt.
#
###############################################################################
#  Author: Alejandro Moreno
###############################################################################
if [[ -f "${XDG_CONFIG_HOME}/bash/.bash_config" ]]; then
    . ${XDG_CONFIG_HOME}/bash/.bash_config
fi
if [[ -f "${XDG_CONFIG_HOME}/bash/.bash_exports" ]]; then 
    . ${XDG_CONFIG_HOME}/bash/.bash_exports
fi
if [[ -f "${XDG_CONFIG_HOME}/bash/.bash_aliases" ]]; then
    . ${XDG_CONFIG_HOME}/bash/.bash_aliases
fi
if [[ -f "${XDG_CONFIG_HOME}/bash/.bash_prompt" ]]; then
    . ${XDG_CONFIG_HOME}/bash/.bash_prompt
fi

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/alemoreno991/.local/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/alemoreno991/.local/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/alemoreno991/.local/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/alemoreno991/.local/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

