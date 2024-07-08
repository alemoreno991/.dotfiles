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
if [[ -f "${XDG_CONFIG_HOME}/bash/.bash_exports" ]]; then 
    . ${XDG_CONFIG_HOME}/bash/.bash_exports
fi
if [[ -f "${XDG_CONFIG_HOME}/bash/.bash_aliases" ]]; then
    . ${XDG_CONFIG_HOME}/bash/.bash_aliases
fi
if [[ -f "${XDG_CONFIG_HOME}/bash/.bash_prompt" ]]; then
    . ${XDG_CONFIG_HOME}/bash/.bash_prompt
fi
if [[ -f "${XDG_CONFIG_HOME}/bash/.bash_config" ]]; then
    . ${XDG_CONFIG_HOME}/bash/.bash_config
fi

. "$HOME/.cargo/env"
