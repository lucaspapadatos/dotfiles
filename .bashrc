#   _               _              
#  | |             | |             
#  | |__   __ _ ___| |__  _ __ ___ 
#  | '_ \ / _` / __| '_ \| '__/ __|
# _| |_) | (_| \__ \ | | | | | (__ 
#(_)_.__/ \__,_|___/_| |_|_|  \___|

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Fastfetch
if [[ -f /usr/bin/fastfetch ]]; then
	fastfetch
fi

# Bash Auto Complete
if [[ -f /usr/share/bash-completion/bash_completion ]]; then
    . /usr/share/bash-completion/bash_completion
fi

# default env vars
export EDITOR="/usr/bin/nvim"
export TERMINAL="/usr/bin/alacritty"

# hugging face models to hdd
export HUGGINGFACE_HUB_CACHE="/mnt/BACKUP/ISOLATEDSEAGATE/.cache/huggingface/hub"
export TRANSFORMERS_CACHE="/mnt/BACKUP/ISOLATEDSEAGATE/.cache/huggingface/transformers"
export DIFFUSERS_CACHE="/mnt/BACKUP/ISOLATEDSEAGATE/.cache/huggingface/diffusers"

# alias editors
alias vim="$EDITOR"
alias vi="$EDITOR"
alias nano="$EDITOR"

# alias listing commands
alias ls='ls -Alh --color=auto'			# shows hidden files
alias lr='ls -lRh'						# recursive ls

# alias misc
alias grep='grep --color=auto'
alias atop='amdgpu_top'

# color
PS1='\[\e[31m\][\u@\h \W]\$\[\e[0m\] '
