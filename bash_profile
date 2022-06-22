# Configuration specific for my computer

alias ls='colorls -l'
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/alemoreno/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/alemoreno/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/alemoreno/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/alemoreno/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export LD_LIBRARY_PATH=/usr/local/cuda-11.0/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:~/.mujoco/mujoco210/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:~/.mujoco/mjpro150/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/lib/nvidia

source "/etc/profile.d/rvm.sh"
source "/opt/ros/melodic/setup.bash"

# This alias is for frequently visited directories
#alias pythonprojects='cd ~/Dropbox/Projects/PythonProjects'
